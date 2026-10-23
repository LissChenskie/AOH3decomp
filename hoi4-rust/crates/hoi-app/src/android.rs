//! Android FFI-слой: меню + карта. Все JNI-вызовы идут через функции env из vtable;
//! native-методы регистрируются в JNI_OnLoad через RegisterNatives (без полагания на имена экспортов).
#![cfg(target_os = "android")]

use std::sync::{Mutex, OnceLock};

use hoi_map::{ProvinceId, WorldMap};
use crate::render::{self, Frame};

const COL_BG: u32 = 0xFF1A2430;
/// Размер мира в координатах .mapbin (должен совпадать с tools/mapconv2.py).
const MAP_W: usize = 4096;
const MAP_H: usize = 2048;
const COL_PANEL: u32 = 0xFF263544;
const COL_TEXT: u32 = 0xFFE8E8E8;
const COL_ACCENT: u32 = 0xFFFFC840;
const COL_DIM: u32 = 0xFF9FB4C8;

#[derive(Clone)]
struct MenuBtn { label: &'static str, x: usize, y: usize, w: usize, h: usize, action: u8 }

#[derive(Clone)]
struct StateData {
    screen: u8,          // 0 = menu, 1 = map, 9 = quit
    mode: u8,            // 0 terrain, 1 political, 2 continents
    zoom: f32, panx: f32, pany: f32,
    selected: i32,
    buttons: Vec<MenuBtn>,
    err: String,
    size: (usize, usize),
    down_x: usize, down_y: usize, moved: bool, last_x: f32, last_y: f32,
    dirty_base: bool,
}

struct Global {
    map: Option<WorldMap>,
    d: StateData,
    base: BaseCache,
}

fn new_state() -> StateData {
    StateData {
        screen: 0, mode: 0, zoom: 1.0, panx: 0.0, pany: 0.0, selected: -1,
        buttons: Vec::new(), err: String::new(), size: (1, 1),
        down_x: 0, down_y: 0, moved: false, last_x: 0.0, last_y: 0.0,
        dirty_base: true,
    }
}

impl StateData {
    fn layout_menu(&mut self) {
        let (w, h) = self.size;
        let bw = w * 70 / 100;
        let bh = (h / 10).max(24);
        let bx = (w.saturating_sub(bw)) / 2;
        let mut y = h * 26 / 100;
        self.buttons.clear();
        for (label, action) in [
            ("PLAY MAP DEMO", 1u8), ("NEW CAMPAIGN 1936", 2), ("LOAD GAME", 3),
            ("OPTIONS", 4), ("CREDITS", 5), ("QUIT", 6),
        ] {
            self.buttons.push(MenuBtn { label, x: bx, y, w: bw, h: bh, action });
            y += bh + h / 50;
        }
    }
    fn draw_menu_into(&self, fr: &mut Frame, map_info: Option<(usize, usize)>) {
        let (w, h) = self.size;
        fr.px.fill(COL_BG);
        let s = (w / 400).max(2);
        let title = "IRONFRONT";
        render::draw_text(fr, w.saturating_sub(title.len() * 8 * (s + 4) / 2) / 2, h / 14, title, COL_ACCENT, s + 4);
        let sub = "HOI4 STRATEGY - RUST ENGINE";
        render::draw_text(fr, w.saturating_sub(sub.len() * 8 * (s + 1) / 2) / 2, h / 14 + (s + 4) * 8 + 6, sub, COL_TEXT, s + 1);
        for b in &self.buttons {
            fr.fill_rect(b.x, b.y, b.x + b.w, b.y + b.h, COL_PANEL);
            fr.fill_rect(b.x, b.y, b.x + b.w, b.y + 2, COL_ACCENT);
            let ts = (b.h / 12).clamp(2, 6);
            let tx = b.x + b.w / 2 - b.label.len() * 8 * ts / 2;
            render::draw_text(fr, tx, b.y + b.h / 2 - ts * 3, b.label, COL_TEXT, ts);
        }
        let info = match &map_info {
            Some((p, st)) => format!("MAP OK {}P {}S", p, st),
            None => if self.err.is_empty() { "NO MAP".to_string() } else { self.err.clone() },
        };
        render::draw_text(fr, 8, h.saturating_sub(14 * s + 2), &info, COL_DIM, s);
    }
    fn draw_map_into(&self, fr: &mut Frame, base: &Frame, m: &WorldMap) {
        let (w, h) = self.size;
        fr.px.fill(COL_BG);
        let zx = self.zoom.max(0.25);
        for y in 0..h {
            let sy = (y as f32 / zx + self.pany) as usize;
            if sy >= base.h { continue; }
            let sb = sy * base.w;
            let db = y * w;
            for x in 0..w {
                let sx = (x as f32 / zx + self.panx) as usize;
                if sx < base.w { fr.px[db + x] = base.px[sb + sx]; }
            }
        }
        let scale = (w / 400).max(2);
        fr.fill_rect(0, 0, w, 34 * scale, 0xF0101820);
        let hud = if self.selected >= 0 && (self.selected as usize) < m.provinces.len() {
            let s = self.selected as usize;
            let p = &m.provinces[s];
            let stn = if p.owner == 0 { "EMPTY".to_string() }
                else { m.states.get(p.owner as usize - 1).map(|x| x.name.clone()).unwrap_or_else(|| format!("S{}", p.owner)) };
            let trn = m.terrain_names.get(p.terrain as usize).cloned().unwrap_or_else(|| "?".into());
            format!("PROV {} | STATE {} | TERRAIN {}", p.id, stn, trn)
        } else {
            "TAP TO SELECT PROVINCE".to_string()
        };
        render::draw_text(fr, 6, 4, &hud, COL_TEXT, scale);
        let modes = ["TERRAIN", "POLITICAL", "CONTINENTS"];
        render::draw_text(fr, 6, 4 + 11 * scale, &format!("MODE {} - SWIPE L/R", modes[self.mode as usize % 3]), COL_ACCENT, scale);
        render::draw_text(fr, 6, 4 + 22 * scale, &format!("ZOOM {:.1}X DRAG=PAN BACK=MENU", zx), COL_DIM, scale);
    }
}

/// Сетка центров провинций в координатах мира — детерминированно воспроизводит
/// раскладку tools/mapconv2.py (центры хранятся в .mapbin, но рендер не зависит от них).
struct Grid { cols: usize, rows: usize, tw: usize, th: usize }
fn grid_for(n: usize, mw: usize, mh: usize) -> Grid {
    let cols = ((n as f64 * (mw as f64 / mh.max(1) as f64)).sqrt().ceil() as usize).max(1);
    let rows = (n + cols - 1) / cols;
    Grid { cols, rows, tw: (mw / cols).max(1), th: (mh / rows).max(1) }
}

/// Растеризация всей карты в кадр (весь мир = весь кадр при zoom=1).
/// Провинции рисуются как тайлы сетки в координатах мира (MAP_W x MAP_H),
/// согласованно с tools/mapconv2.py. Океан (terrain==0) рисуется фоном.
fn render_map(fr: &mut Frame, m: &WorldMap, mode: u8) {
    let n = m.provinces.len();
    if n == 0 { return; }
    let g = grid_for(n, m.width as usize, m.height as usize);
    let (cols, rows, tw, th) = (g.cols, g.rows, g.tw, g.th);
    let sx = fr.w as f64 / m.width.max(1) as f64;
    let sy = fr.h as f64 / m.height.max(1) as f64;

    // Океан/фон
    let ocean: u32 = 0xFF2A4E6E;
    fr.px.fill(ocean);

    let mut state_color: Vec<u32> = Vec::with_capacity(m.states.len() + 1);
    for st in &m.states {
        let hsh = (st.id as u32).wrapping_mul(2654435761);
        let r = ((hsh >> 16) & 0x7F) + 0x60;
        let g2 = ((hsh >> 8) & 0x7F) + 0x60;
        let b = (hsh & 0x7F) + 0x60;
        state_color.push(0xFF000000 | (r << 16) | (g2 << 8) | b);
    }
    state_color.resize(m.states.len().max(1) + 1, 0xFF404040);
    let cont_colors: [u32; 7] = [
        0xFFD8B060, 0xFF90C878, 0xFF78B8D8, 0xFFD89090, 0xFFB090D8, 0xFF90D8B8, 0xFFD8D090,
    ];

    for (i, p) in m.provinces.iter().enumerate() {
        if p.terrain == 0 { continue; } // море — уже залито фоном
        let gx = (i % cols).min(cols - 1);
        let gy = (i / cols).min(rows - 1);
        let c = match mode {
            1 => state_color.get(p.owner as usize).copied().unwrap_or(0xFF303030),
            2 => cont_colors[p.continent as usize % cont_colors.len()],
            _ => {
                let t = render::TERRAIN_COLORS[p.terrain as usize % render::TERRAIN_COLORS.len()];
                0xFF000000 | ((t[0] as u32) << 16) | ((t[1] as u32) << 8) | t[2] as u32
            }
        };
        let x0 = ((gx * tw) as f64 * sx).clamp(0.0, (fr.w - 1) as f64) as usize;
        let y0 = ((gy * th) as f64 * sy).clamp(0.0, (fr.h - 1) as f64) as usize;
        let x1 = (((gx + 1) * tw).min(m.width as usize) as f64 * sx).clamp(1.0, fr.w as f64) as usize;
        let y1 = (((gy + 1) * th).min(m.height as usize) as f64 * sy).clamp(1.0, fr.h as f64) as usize;
        fr.fill_rect(x0, y0, x1, y1, c);
    }
}

// === Глобальное состояние ===
// Единый мьютекс: все операции рендера идут под одним замком (без рекурсивных блокировок и клонирования карты).
static GLOBAL: OnceLock<Mutex<Global>> = OnceLock::new();
fn g() -> &'static Mutex<Global> { GLOBAL.get_or_init(|| Mutex::new(Global { map: None, d: new_state(), base: BaseCache::empty() })) }

// Кэш базового кадра карты (пересобирается при смене размера/режима).
struct BaseCache { px: Vec<u32>, w: usize, h: usize, mode: u8, valid: bool }
impl BaseCache {
    fn empty() -> Self { BaseCache { px: Vec::new(), w: 0, h: 0, mode: 255, valid: false } }
}


/// Растеризация всей карты в базовый кадр при текущем размере окна.
fn rebuild_base(gg: &mut Global) {
    let (w, h) = (gg.d.size.0, gg.d.size.1);
    if w < 2 || h < 2 { return; }
    let Some(m) = gg.map.as_ref() else { return };
    let mut fr = Frame::new(w, h, COL_BG);
    render_map(&mut fr, m, gg.d.mode);
    gg.base.px = std::mem::take(&mut fr.px);
    gg.base.w = w; gg.base.h = h; gg.base.mode = gg.d.mode; gg.base.valid = true;
}

fn ensure_base(gg: &mut Global) {
    let (w, h) = gg.d.size;
    if gg.d.dirty_base { gg.base.valid = false; gg.d.dirty_base = false; }
    if gg.base.valid && gg.base.w == w && gg.base.h == h && gg.base.mode == gg.d.mode { return; }
    rebuild_base(gg);
}

/// Пиксели текущего экрана в RGB565 LE. Вызывается без внешних блокировок.
fn collect_pixels_locked(gg: &mut Global) -> Vec<u8> {
    let (w, h) = gg.d.size;
    if w < 2 || h < 2 { return Vec::new(); }
    let mut cur = vec![COL_BG; w * h];
    if gg.d.screen == 1 && gg.map.is_some() {
        ensure_base(gg);
        if gg.base.valid && gg.base.w == w && gg.base.h == h {
            let base_px = std::mem::take(&mut gg.base.px);
            let basefr = Frame { w: gg.base.w, h: gg.base.h, px: base_px };
            let mut fr = Frame { w, h, px: std::mem::take(&mut cur) };
            // Краткое заимствование полей — draw_map_into не трогает gg.base.
            let d = &gg.d;
            let m = gg.map.as_ref().unwrap();
            d.draw_map_into(&mut fr, &basefr, m);
            cur = std::mem::take(&mut fr.px);
            gg.base.px = basefr.px;
        }
    } else {
        let mapinfo = gg.map.as_ref().map(|m| (m.provinces.len(), m.states.len()));
        let mut fr = Frame { w, h, px: std::mem::take(&mut cur) };
        gg.d.draw_menu_into(&mut fr, mapinfo);
        cur = std::mem::take(&mut fr.px);
    }
    rgb565(&cur)
}

fn rgb565(px: &[u32]) -> Vec<u8> {
    let mut out = vec![0u8; px.len() * 2];
    for (i, &c) in px.iter().enumerate() {
        let r = (c >> 16) & 0xFF; let gg = (c >> 8) & 0xFF; let b = c & 0xFF;
        let v = (((r >> 3) as u16) << 11) | (((gg >> 2) as u16) << 5) | ((b >> 3) as u16);
        out[i * 2] = v as u8; out[i * 2 + 1] = (v >> 8) as u8;
    }
    out
}

// === Логика (потокобезопасно, только std; единый замок, без рекурсии) ===
pub fn touch(action: i32, x: i32, y: i32) {
    let mut gg = g().lock().unwrap();
    let map_n = gg.map.as_ref().map(|m| m.provinces.len()).unwrap_or(0);
    let d = &mut gg.d;
    let (x, y) = (x.max(0) as usize, y.max(0) as usize);
    if d.screen == 0 {
        if action == 0 {
            for b in &d.buttons {
                if x >= b.x && x < b.x + b.w && y >= b.y && y < b.y + b.h {
                    match b.action {
                        1 => { d.screen = 1; d.zoom = 1.0; d.panx = 0.0; d.pany = 0.0; d.selected = -1; d.mode = 0; }
                        6 => { d.screen = 9; }
                        _ => {}
                    }
                    break;
                }
            }
        }
        return;
    }
    if d.screen != 1 { return; }
    match action {
        0 => { d.down_x = x; d.down_y = y; d.moved = false; d.last_x = x as f32; d.last_y = y as f32; }
        1 => {
            let dx = x as f32 - d.last_x; let dy = y as f32 - d.last_y;
            d.last_x = x as f32; d.last_y = y as f32;
            if (x as i32 - d.down_x as i32).abs() + (y as i32 - d.down_y as i32).abs() > 8 { d.moved = true; }
            if d.moved {
                let (w, h) = d.size;
                let maxpx = (w as f32 / d.zoom).max(1.0);
                let maxpy = (h as f32 / d.zoom).max(1.0);
                d.panx = (d.panx - dx / d.zoom).clamp(0.0, maxpx);
                d.pany = (d.pany - dy / d.zoom).clamp(0.0, maxpy);
            }
        }
        2 => {
            if !d.moved {
                let n = map_n;
                if n > 0 {
                    let wx = (x as f32 / d.zoom + d.panx) as usize;   // координата мира
                    let wy = (y as f32 / d.zoom + d.pany) as usize;
                    let g = grid_for(n, MAP_W, MAP_H);
                    let gx = wx / g.tw;
                    let gy = wy / g.th;
                    if gx < g.cols && gy < g.rows {
                        let idx = gy * g.cols + gx;
                        if idx < n { d.selected = idx as i32; } // индекс в массиве провинций == сетке рендера
                    }
                }
            } else if (x as i32 - d.down_x as i32).abs() > 80 && (y as i32 - d.down_y as i32).abs() < 100 {
                if x as i32 > d.down_x as i32 { d.mode = (d.mode + 1) % 3; } else { d.mode = (d.mode + 2) % 3; }
                d.dirty_base = true;
            }
        }
        _ => {}
    }
}

pub fn zoom(factor: f32) {
    let mut gg = g().lock().unwrap();
    if gg.d.screen == 1 && factor.is_finite() { gg.d.zoom = (gg.d.zoom * factor).clamp(0.5, 6.0); }
}

pub fn swipe(dir: i32) {
    let mut gg = g().lock().unwrap();
    if gg.d.screen == 1 {
        gg.d.mode = if dir > 0 { (gg.d.mode + 1) % 3 } else { (gg.d.mode + 2) % 3 };
        gg.d.dirty_base = true;
    }
}

pub fn back() -> i32 {
    let mut gg = g().lock().unwrap();
    if gg.d.screen == 1 { gg.d.screen = 0; gg.d.layout_menu(); 1 } else { 0 }
}

pub fn state() -> i32 {
    let gg = g().lock().unwrap();
    if gg.d.screen == 9 { return 1; }
    0
}

fn resize(w: i32, h: i32) {
    let mut gg = g().lock().unwrap();
    gg.d.size = ((w.max(32)) as usize, (h.max(32)) as usize);
    if gg.d.screen == 0 { gg.d.layout_menu(); }
    gg.d.dirty_base = true;
}

fn init_map(bytes: &[u8]) {
    match WorldMap::parse(bytes) {
        Ok(m) => { let mut gg = g().lock().unwrap(); gg.map = Some(m); gg.d.err.clear(); }
        Err(e) => { let mut gg = g().lock().unwrap(); gg.d.err = format!("MAP ERR {}", e); }
    }
}

// === JNI: обёртки к гарантированным функциям JNINativeInterface_ ===
mod jni {
    use std::ffi::{c_char, c_int, c_void};

    #[inline]
    unsafe fn slot(env: *mut c_void, idx: usize) -> *mut c_void {
        let table = *(env as *mut *mut *mut c_void);
        *table.add(idx)
    }

    // Слоты зафиксированы спецификацией JNI (jni.h): стабильны во всех ART/Dalvik.
    pub const SLOT_FIND_CLASS: usize = 6;
    pub const SLOT_GET_PRIM_ARRAY_CRITICAL: usize = 119;
    pub const SLOT_RELEASE_PRIM_ARRAY_CRITICAL: usize = 120;
    pub const SLOT_GET_ARRAY_LENGTH: usize = 171;
    pub const SLOT_NEW_BYTE_ARRAY: usize = 176;
    pub const SLOT_SET_BYTE_ARRAY_REGION: usize = 208;
    pub const SLOT_REGISTER_NATIVES: usize = 215;

    #[repr(C)]
    pub struct JNINativeMethod { pub name: *const c_char, pub signature: *const c_char, pub fnptr: *mut c_void }

    pub struct MethodTable(pub &'static [JNINativeMethod]);
    unsafe impl Sync for MethodTable {}

    macro_rules! jni_fn {
        ($name:ident, $slot:expr, $ret:ty, $($argn:ident: $argt:ty),*) => {
            #[allow(dead_code)]
            pub unsafe fn $name(env: *mut c_void $(, $argn: $argt)*) -> $ret {
                type F = unsafe extern "system" fn(*mut c_void $(, $argt)*) -> $ret;
                let f: F = std::mem::transmute(slot(env, $slot));
                f(env $(, $argn)*)
            }
        };
    }

    jni_fn!(find_class, SLOT_FIND_CLASS, *mut c_void, name: *const c_char);
    jni_fn!(get_primitive_array_critical, SLOT_GET_PRIM_ARRAY_CRITICAL, *mut c_void, array: *mut c_void, is_copy: *mut i8);
    jni_fn!(release_primitive_array_critical, SLOT_RELEASE_PRIM_ARRAY_CRITICAL, (), array: *mut c_void, elem_ptr: *mut c_void, mode: c_int);
    jni_fn!(get_array_length, SLOT_GET_ARRAY_LENGTH, c_int, array: *mut c_void);
    jni_fn!(new_byte_array, SLOT_NEW_BYTE_ARRAY, *mut c_void, len: c_int);
    jni_fn!(set_byte_array_region, SLOT_SET_BYTE_ARRAY_REGION, (), array: *mut c_void, start: c_int, len: c_int, buf: *const i8);
    jni_fn!(register_natives, SLOT_REGISTER_NATIVES, c_int, class: *mut c_void, methods: *const JNINativeMethod, n: c_int);
}

use std::ffi::{c_char, c_void};
use jni::JNINativeMethod;

extern "system" fn n_init(env: *mut c_void, _this: *mut c_void, arr: *mut c_void) {
    if arr.is_null() {
        let mut gg = g().lock().unwrap(); gg.d.err = "NO MAP ASSET".into(); return;
    }
    unsafe {
        let len = jni::get_array_length(env, arr).max(0) as usize;
        let ptr = jni::get_primitive_array_critical(env, arr, std::ptr::null_mut());
        if ptr.is_null() {
            let mut gg = g().lock().unwrap(); gg.d.err = "JNI OOM".into(); return;
        }
        let bytes = std::slice::from_raw_parts(ptr as *const u8, len).to_vec();
        jni::release_primitive_array_critical(env, arr, ptr, 0);
        init_map(&bytes);
    }
}

extern "system" fn n_resize(_e: *mut c_void, _t: *mut c_void, w: i32, h: i32) { resize(w, h); }

extern "system" fn n_get_pixels(env: *mut c_void, _this: *mut c_void) -> *mut c_void {
    let bytes = { let mut gg = g().lock().unwrap(); collect_pixels_locked(&mut gg) };
    unsafe {
        let arr = jni::new_byte_array(env, bytes.len() as i32);
        if !arr.is_null() && !bytes.is_empty() {
            jni::set_byte_array_region(env, arr, 0, bytes.len() as i32, bytes.as_ptr() as *const i8);
        }
        arr
    }
}

extern "system" fn n_touch(_e: *mut c_void, _t: *mut c_void, a: i32, x: i32, y: i32) { touch(a, x, y); }
extern "system" fn n_zoom(_e: *mut c_void, _t: *mut c_void, f: f32) { zoom(f); }
extern "system" fn n_swipe(_e: *mut c_void, _t: *mut c_void, d: i32) { swipe(d); }
extern "system" fn n_back(_e: *mut c_void, _t: *mut c_void) -> i32 { back() }
extern "system" fn n_state(_e: *mut c_void, _t: *mut c_void) -> i32 { state() }

macro_rules! nm {
    ($n:literal, $s:literal, $f:path) => {
        JNINativeMethod { name: concat!($n, "\0").as_ptr() as *const c_char, signature: concat!($s, "\0").as_ptr() as *const c_char, fnptr: $f as *mut c_void }
    };
}

static METHODS: jni::MethodTable = jni::MethodTable(&[
    nm!("rust_init",      "([B)V",  n_init),
    nm!("rust_resize",    "(II)V",  n_resize),
    nm!("rust_get_pixels","()[B",   n_get_pixels),
    nm!("rust_touch",     "(III)V", n_touch),
    nm!("rust_zoom",      "(F)V",   n_zoom),
    nm!("rust_swipe",     "(I)V",   n_swipe),
    nm!("rust_back",      "()I",    n_back),
    nm!("rust_state",     "()I",    n_state),
]);

#[no_mangle]
pub extern "system" fn JNI_OnLoad(vm: *mut c_void, _reserved: *mut c_void) -> i32 {
    const JNI_VERSION_1_6: i32 = 0x00010006;
    unsafe {
        // JavaVM_->GetEnv — слот 6 (зафиксирован спецификацией JNI).
        type FnGetEnv = unsafe extern "system" fn(*mut c_void, *mut *mut c_void, i32) -> i32;
        let vt = *(vm as *mut *mut *mut c_void);
        let get_env: FnGetEnv = std::mem::transmute(*vt.add(6));
        let mut env: *mut c_void = std::ptr::null_mut();
        if get_env(vm, &mut env, JNI_VERSION_1_6) != 0 || env.is_null() { return -1; }
        let cls = jni::find_class(env, "com/ironfront/game/MainActivity\0".as_ptr() as *const c_char);
        if cls.is_null() { return -1; }
        if jni::register_natives(env, cls, METHODS.0.as_ptr(), METHODS.0.len() as i32) != 0 { return -1; }
        JNI_VERSION_1_6
    }
}
