package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Slider;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Audio extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$1, reason: invalid class name */
    class AnonymousClass1 extends Slider {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.VOLUME_MASTER = getCurrent() / 100.0f;
            Game.soundsManager.setMasterVolume(getCurrent() / 100.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return super.getDrawText() + "%";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.soundsManager.loadNextMusic();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Next"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NowPlaying") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.soundsManager.getCurrentMusicTittle(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$3, reason: invalid class name */
    class AnonymousClass3 extends Slider {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.VOLUME_MUSIC = getCurrent() / 100.0f;
            Game.soundsManager.setMusicVolume(getCurrent() / 100.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return super.getDrawText() + "%";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$4, reason: invalid class name */
    class AnonymousClass4 extends Slider {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.VOLUME_AMBIENCE = getCurrent() / 100.0f;
            Game.soundsManager.setAmbienceVolume(getCurrent() / 100.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return super.getDrawText() + "%";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$5, reason: invalid class name */
    class AnonymousClass5 extends Slider {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.VOLUME_SOUNDS = getCurrent() / 100.0f;
            Game.soundsManager.setSoundsVolume(getCurrent() / 100.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return super.getDrawText() + "%";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRect_Active_Value {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.soundsManager.loadNextMusic(Game.soundsManager.lTitles.get(getCurrent()), getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return getCurrent() == Game.soundsManager.iCurrentMusicID ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Audio$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG {
        AnonymousClass7(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Audio.lTime;
        }
    }

    public InGame_Audio() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title500).getHeight();
        int i5 = CFG.PADDING;
        int i6 = i * 2;
        int i7 = width - i6;
        arrayList.add(new AnonymousClass1(Game.lang.get("MasterVolume") + ": ", i, i5, (i7 - CFG.PADDING) - CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT4, 0, 100, (int) (SoundsManager.masterVolume * 100.0f)));
        arrayList.add(new AnonymousClass2(">>", ((i + width) - i6) - CFG.BUTTON_WIDTH, i5, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT4));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("MusicVolume") + ": ", i, height2, i7, CFG.BUTTON_HEIGHT4, 0, 100, (int) (SoundsManager.musicVolume * 100.0f)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.lang.get("AmbienceVolume") + ": ", i, height3, (i7 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT4, 0, 100, (int) (SoundsManager.ambienceVolume * 100.0f)));
        arrayList.add(new AnonymousClass5(Game.lang.get("EffectVolume") + ": ", ((i7 - CFG.PADDING) / 2) + i + CFG.PADDING, height3, (i7 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT4, 0, 100, (int) (SoundsManager.soundsVolume * 100.0f)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        for (int i8 = 0; i8 < Game.soundsManager.lTitles.size(); i8++) {
            arrayList.add(new AnonymousClass6(Game.soundsManager.lTitles.get(i8).replace("_", " "), i, height4, i7, CFG.BUTTON_HEIGHT4, i8));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i9 = 0; i9 < size; i9++) {
            if (posY < arrayList.get(i9).getPosY() + arrayList.get(i9).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i9).getPosY() + arrayList.get(i9).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass7(Game.lang.get("Audio"), true, false, Images.title500), (CFG.GAME_WIDTH - width) - (CFG.GAME_HEIGHT / 8), CFG.GAME_HEIGHT / 8, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
