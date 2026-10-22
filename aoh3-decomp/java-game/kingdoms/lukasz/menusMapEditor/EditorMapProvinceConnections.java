package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapProvinceConnections extends Menu {
    public static int activeProvinceID = -1;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnections$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveManager.saveProvinceNeighboringProvinces();
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnections$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.GENERATE_PROVINCE_CONNECTIONS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Generate"));
        }
    }

    public EditorMapProvinceConnections() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static boolean addConnection(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        if (i != i2) {
            for (int i3 = 0; i3 < Game.getProvince(i2).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(i2).getNeighboringProvinces(i3) == i) {
                    return true;
                }
            }
            for (int i4 = 0; i4 < Game.getProvince(i2).getNeighboringSeaProvincesSize(); i4++) {
                if (Game.getProvince(i2).getNeighboringSeaProvinces(i4) == i) {
                    return true;
                }
            }
            for (int i5 = 0; i5 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i5++) {
                if (Game.getProvince(i).getNeighboringSeaProvinces(i5) == i2) {
                    return true;
                }
            }
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i2).getSeaProvince()) {
                Game.getProvince(i).addNeighboringSeaProvince(i2);
                Game.getProvince(i).setLevelOfPort(1);
            } else {
                Game.getProvince(i).addNeighboringProvince(i2);
            }
            if (!Game.getProvince(i2).getSeaProvince() && Game.getProvince(i).getSeaProvince()) {
                Game.getProvince(i2).addNeighboringSeaProvince(i);
                Game.getProvince(i2).setLevelOfPort(1);
            } else {
                Game.getProvince(i2).addNeighboringProvince(i);
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i6 = 0; i6 < Game.getProvince(i2).getPointsSize(); i6++) {
                if (Game.getProvince(i).getPointsSize() > 0) {
                    int pointsSize = Game.getProvince(i).getPointsSize();
                    boolean z16 = false;
                    for (int i7 = 0; i7 < pointsSize; i7++) {
                        if (Game.getProvince(i2).getPointsX(Game.getProvince(i2).getPointsSize() - 1) == Game.getProvince(i).getPointsX(i7) && Game.getProvince(i2).getPointsY(Game.getProvince(i2).getPointsSize() - 1) == Game.getProvince(i).getPointsY(i7)) {
                            z16 = true;
                        }
                    }
                    if (z16) {
                        int pointsSize2 = Game.getProvince(i2).getPointsSize();
                        boolean z17 = false;
                        for (int i8 = 0; i8 < pointsSize2; i8++) {
                            if (Game.getProvince(i).getPointsX(Game.getProvince(i).getPointsSize() - 1) == Game.getProvince(i2).getPointsX(i8) && Game.getProvince(i).getPointsY(Game.getProvince(i).getPointsSize() - 1) == Game.getProvince(i2).getPointsY(i8)) {
                                z17 = true;
                            }
                        }
                        if (z17) {
                            int pointsSize3 = Game.getProvince(i2).getPointsSize() - 1;
                            while (pointsSize3 >= 0) {
                                int pointsSize4 = Game.getProvince(i).getPointsSize();
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= pointsSize4) {
                                        z14 = false;
                                        break;
                                    }
                                    if (Game.getProvince(i2).getPointsX(pointsSize3) == Game.getProvince(i).getPointsX(i9) && Game.getProvince(i2).getPointsY(pointsSize3) == Game.getProvince(i).getPointsY(i9)) {
                                        z14 = true;
                                        break;
                                    }
                                    i9++;
                                }
                                if (!z14) {
                                    while (true) {
                                        pointsSize3++;
                                        if (pointsSize3 >= Game.getProvince(i2).getPointsSize() - 1) {
                                            break;
                                        }
                                        arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize3)));
                                        arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize3)));
                                    }
                                } else {
                                    pointsSize3--;
                                }
                            }
                            for (int i10 = 0; i10 < Game.getProvince(i2).getPointsSize(); i10++) {
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= Game.getProvince(i).getPointsSize()) {
                                        z13 = false;
                                        break;
                                    }
                                    if (Game.getProvince(i2).getPointsX(i10) == Game.getProvince(i).getPointsX(i11) && Game.getProvince(i2).getPointsY(i10) == Game.getProvince(i).getPointsY(i11)) {
                                        z13 = true;
                                        break;
                                    }
                                    i11++;
                                }
                                if (!z13) {
                                    break;
                                }
                                arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(i10)));
                                arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(i10)));
                            }
                        } else {
                            boolean z18 = false;
                            for (int pointsSize5 = Game.getProvince(i).getPointsSize() - 1; pointsSize5 >= 0; pointsSize5--) {
                                if (z18) {
                                    int pointsSize6 = Game.getProvince(i2).getPointsSize();
                                    int i12 = 0;
                                    while (true) {
                                        if (i12 >= pointsSize6) {
                                            z15 = true;
                                            break;
                                        }
                                        if (Game.getProvince(i).getPointsX(pointsSize5) == Game.getProvince(i2).getPointsX(i12) && Game.getProvince(i).getPointsY(pointsSize5) == Game.getProvince(i2).getPointsY(i12)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize5)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize5)));
                                            z15 = false;
                                            break;
                                        }
                                        i12++;
                                    }
                                    if (z15) {
                                        break;
                                    }
                                } else {
                                    int pointsSize7 = Game.getProvince(i2).getPointsSize();
                                    for (int i13 = 0; i13 < pointsSize7; i13++) {
                                        if (Game.getProvince(i).getPointsX(pointsSize5) == Game.getProvince(i2).getPointsX(i13) && Game.getProvince(i).getPointsY(pointsSize5) == Game.getProvince(i2).getPointsY(i13)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize5)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize5)));
                                            z18 = true;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        boolean z19 = false;
                        for (int pointsSize8 = Game.getProvince(i2).getPointsSize() - 1; pointsSize8 >= 0; pointsSize8--) {
                            if (z19) {
                                int pointsSize9 = Game.getProvince(i).getPointsSize();
                                int i14 = 0;
                                while (true) {
                                    if (i14 >= pointsSize9) {
                                        z12 = true;
                                        break;
                                    }
                                    if (Game.getProvince(i2).getPointsX(pointsSize8) == Game.getProvince(i).getPointsX(i14) && Game.getProvince(i2).getPointsY(pointsSize8) == Game.getProvince(i).getPointsY(i14)) {
                                        arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize8)));
                                        arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize8)));
                                        z12 = false;
                                        break;
                                    }
                                    i14++;
                                }
                                if (z12) {
                                    break;
                                }
                            } else {
                                int pointsSize10 = Game.getProvince(i).getPointsSize();
                                for (int i15 = 0; i15 < pointsSize10; i15++) {
                                    if (Game.getProvince(i2).getPointsX(pointsSize8) == Game.getProvince(i).getPointsX(i15) && Game.getProvince(i2).getPointsY(pointsSize8) == Game.getProvince(i).getPointsY(i15)) {
                                        arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize8)));
                                        arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize8)));
                                        z19 = true;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11) {
                    break;
                }
            }
            if (arrayList.size() == 0) {
                for (int i16 = 0; i16 < Game.getProvince(i2).getPointsSize(); i16++) {
                    if (Game.getProvince(i).getPointsSize() > 0) {
                        int pointsSize11 = Game.getProvince(i).getPointsSize();
                        boolean z20 = false;
                        for (int i17 = 0; i17 < pointsSize11; i17++) {
                            if (Game.getProvince(i2).getPointsX(Game.getProvince(i2).getPointsSize() - 1) == Game.getProvince(i).getPointsX(i17) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(Game.getProvince(i2).getPointsSize() - 1) == Game.getProvince(i).getPointsY(i17)) {
                                z20 = true;
                            }
                        }
                        if (z20) {
                            int pointsSize12 = Game.getProvince(i2).getPointsSize();
                            boolean z21 = false;
                            for (int i18 = 0; i18 < pointsSize12; i18++) {
                                if (Game.getProvince(i).getPointsX(Game.getProvince(i).getPointsSize() - 1) + Game.mapBG.getWidth() == Game.getProvince(i2).getPointsX(i18) && Game.getProvince(i).getPointsY(Game.getProvince(i).getPointsSize() - 1) == Game.getProvince(i2).getPointsY(i18)) {
                                    z21 = true;
                                }
                            }
                            if (z21) {
                                int pointsSize13 = Game.getProvince(i2).getPointsSize() - 1;
                                while (pointsSize13 >= 0) {
                                    int pointsSize14 = Game.getProvince(i).getPointsSize();
                                    int i19 = 0;
                                    while (true) {
                                        if (i19 >= pointsSize14) {
                                            z9 = false;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(pointsSize13) == Game.getProvince(i).getPointsX(i19) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize13) == Game.getProvince(i).getPointsY(i19)) {
                                            z9 = true;
                                            break;
                                        }
                                        i19++;
                                    }
                                    if (!z9) {
                                        while (true) {
                                            pointsSize13++;
                                            if (pointsSize13 >= Game.getProvince(i2).getPointsSize() - 1) {
                                                break;
                                            }
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize13)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize13)));
                                        }
                                    } else {
                                        pointsSize13--;
                                    }
                                }
                                for (int i20 = 0; i20 < Game.getProvince(i2).getPointsSize(); i20++) {
                                    int i21 = 0;
                                    while (true) {
                                        if (i21 >= Game.getProvince(i).getPointsSize()) {
                                            z8 = false;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(i20) == Game.getProvince(i).getPointsX(i21) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(i20) == Game.getProvince(i).getPointsY(i21)) {
                                            z8 = true;
                                            break;
                                        }
                                        i21++;
                                    }
                                    if (!z8) {
                                        break;
                                    }
                                    arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(i20)));
                                    arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(i20)));
                                }
                            } else {
                                boolean z22 = false;
                                for (int pointsSize15 = Game.getProvince(i).getPointsSize() - 1; pointsSize15 >= 0; pointsSize15--) {
                                    if (z22) {
                                        int pointsSize16 = Game.getProvince(i2).getPointsSize();
                                        int i22 = 0;
                                        while (true) {
                                            if (i22 >= pointsSize16) {
                                                z10 = true;
                                                break;
                                            }
                                            if (Game.getProvince(i).getPointsX(pointsSize15) + Game.mapBG.getWidth() == Game.getProvince(i2).getPointsX(i22) && Game.getProvince(i).getPointsY(pointsSize15) == Game.getProvince(i2).getPointsY(i22)) {
                                                arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize15)));
                                                arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize15)));
                                                z10 = false;
                                                break;
                                            }
                                            i22++;
                                        }
                                        if (z10) {
                                            break;
                                        }
                                    } else {
                                        int pointsSize17 = Game.getProvince(i2).getPointsSize();
                                        for (int i23 = 0; i23 < pointsSize17; i23++) {
                                            if (Game.getProvince(i).getPointsX(pointsSize15) + Game.mapBG.getWidth() == Game.getProvince(i2).getPointsX(i23) && Game.getProvince(i).getPointsY(pointsSize15) == Game.getProvince(i2).getPointsY(i23)) {
                                                arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize15)));
                                                arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize15)));
                                                z22 = true;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            boolean z23 = false;
                            for (int pointsSize18 = Game.getProvince(i2).getPointsSize() - 1; pointsSize18 >= 0; pointsSize18--) {
                                if (z23) {
                                    int pointsSize19 = Game.getProvince(i).getPointsSize();
                                    int i24 = 0;
                                    while (true) {
                                        if (i24 >= pointsSize19) {
                                            z7 = true;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(pointsSize18) == Game.getProvince(i).getPointsX(i24) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize18) == Game.getProvince(i).getPointsY(i24)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize18)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize18)));
                                            z7 = false;
                                            break;
                                        }
                                        i24++;
                                    }
                                    if (z7) {
                                        break;
                                    }
                                } else {
                                    int pointsSize20 = Game.getProvince(i).getPointsSize();
                                    for (int i25 = 0; i25 < pointsSize20; i25++) {
                                        if (Game.getProvince(i2).getPointsX(pointsSize18) == Game.getProvince(i).getPointsX(i25) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize18) == Game.getProvince(i).getPointsY(i25)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize18)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize18)));
                                            z23 = true;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        break;
                    }
                }
            }
            if (arrayList.size() == 0) {
                for (int i26 = 0; i26 < Game.getProvince(i2).getPointsSize(); i26++) {
                    if (Game.getProvince(i).getPointsSize() > 0) {
                        int pointsSize21 = Game.getProvince(i).getPointsSize();
                        boolean z24 = false;
                        for (int i27 = 0; i27 < pointsSize21; i27++) {
                            if (Game.getProvince(i2).getPointsX(Game.getProvince(i2).getPointsSize() - 1) + Game.mapBG.getWidth() == Game.getProvince(i).getPointsX(i27) && Game.getProvince(i2).getPointsY(Game.getProvince(i2).getPointsSize() - 1) == Game.getProvince(i).getPointsY(i27)) {
                                z24 = true;
                            }
                        }
                        if (z24) {
                            int pointsSize22 = Game.getProvince(i2).getPointsSize();
                            boolean z25 = false;
                            for (int i28 = 0; i28 < pointsSize22; i28++) {
                                if (Game.getProvince(i).getPointsX(Game.getProvince(i).getPointsSize() - 1) == Game.getProvince(i2).getPointsX(i28) + Game.mapBG.getWidth() && Game.getProvince(i).getPointsY(Game.getProvince(i).getPointsSize() - 1) == Game.getProvince(i2).getPointsY(i28)) {
                                    z25 = true;
                                }
                            }
                            if (z25) {
                                int pointsSize23 = Game.getProvince(i2).getPointsSize() - 1;
                                while (pointsSize23 >= 0) {
                                    int pointsSize24 = Game.getProvince(i).getPointsSize();
                                    int i29 = 0;
                                    while (true) {
                                        if (i29 >= pointsSize24) {
                                            z4 = false;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(pointsSize23) == Game.getProvince(i).getPointsX(i29) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize23) == Game.getProvince(i).getPointsY(i29)) {
                                            z4 = true;
                                            break;
                                        }
                                        i29++;
                                    }
                                    if (!z4) {
                                        while (true) {
                                            pointsSize23++;
                                            if (pointsSize23 >= Game.getProvince(i2).getPointsSize() - 1) {
                                                break;
                                            }
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize23)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize23)));
                                        }
                                    } else {
                                        pointsSize23--;
                                    }
                                }
                                for (int i30 = 0; i30 < Game.getProvince(i2).getPointsSize(); i30++) {
                                    int i31 = 0;
                                    while (true) {
                                        if (i31 >= Game.getProvince(i).getPointsSize()) {
                                            z3 = false;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(i30) == Game.getProvince(i).getPointsX(i31) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(i30) == Game.getProvince(i).getPointsY(i31)) {
                                            z3 = true;
                                            break;
                                        }
                                        i31++;
                                    }
                                    if (!z3) {
                                        break;
                                    }
                                    arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(i30)));
                                    arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(i30)));
                                }
                            } else {
                                boolean z26 = false;
                                for (int pointsSize25 = Game.getProvince(i).getPointsSize() - 1; pointsSize25 >= 0; pointsSize25--) {
                                    if (z26) {
                                        int pointsSize26 = Game.getProvince(i2).getPointsSize();
                                        int i32 = 0;
                                        while (true) {
                                            if (i32 >= pointsSize26) {
                                                z5 = true;
                                                break;
                                            }
                                            if (Game.getProvince(i).getPointsX(pointsSize25) == Game.getProvince(i2).getPointsX(i32) + Game.mapBG.getWidth() && Game.getProvince(i).getPointsY(pointsSize25) == Game.getProvince(i2).getPointsY(i32)) {
                                                arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize25)));
                                                arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize25)));
                                                z5 = false;
                                                break;
                                            }
                                            i32++;
                                        }
                                        if (z5) {
                                            break;
                                        }
                                    } else {
                                        int pointsSize27 = Game.getProvince(i2).getPointsSize();
                                        for (int i33 = 0; i33 < pointsSize27; i33++) {
                                            if (Game.getProvince(i).getPointsX(pointsSize25) == Game.getProvince(i2).getPointsX(i33) + Game.mapBG.getWidth() && Game.getProvince(i).getPointsY(pointsSize25) == Game.getProvince(i2).getPointsY(i33)) {
                                                arrayList.add(Integer.valueOf(Game.getProvince(i).getPointsX(pointsSize25)));
                                                arrayList2.add(Integer.valueOf(Game.getProvince(i).getPointsY(pointsSize25)));
                                                z26 = true;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            boolean z27 = false;
                            for (int pointsSize28 = Game.getProvince(i2).getPointsSize() - 1; pointsSize28 >= 0; pointsSize28--) {
                                if (z27) {
                                    int pointsSize29 = Game.getProvince(i).getPointsSize();
                                    int i34 = 0;
                                    while (true) {
                                        if (i34 >= pointsSize29) {
                                            z2 = true;
                                            break;
                                        }
                                        if (Game.getProvince(i2).getPointsX(pointsSize28) == Game.getProvince(i).getPointsX(i34) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize28) == Game.getProvince(i).getPointsY(i34)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize28)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize28)));
                                            z2 = false;
                                            break;
                                        }
                                        i34++;
                                    }
                                    if (z2) {
                                        break;
                                    }
                                } else {
                                    int pointsSize30 = Game.getProvince(i).getPointsSize();
                                    for (int i35 = 0; i35 < pointsSize30; i35++) {
                                        if (Game.getProvince(i2).getPointsX(pointsSize28) == Game.getProvince(i).getPointsX(i35) + Game.mapBG.getWidth() && Game.getProvince(i2).getPointsY(pointsSize28) == Game.getProvince(i).getPointsY(i35)) {
                                            arrayList.add(Integer.valueOf(Game.getProvince(i2).getPointsX(pointsSize28)));
                                            arrayList2.add(Integer.valueOf(Game.getProvince(i2).getPointsY(pointsSize28)));
                                            z27 = true;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        break;
                    }
                }
            }
            for (int i36 = 0; i36 < arrayList.size(); i36++) {
                arrayList.set(i36, Integer.valueOf(((Integer) arrayList.get(i36)).intValue() / Game.mapBG.iMapScale));
                arrayList2.set(i36, Integer.valueOf(((Integer) arrayList2.get(i36)).intValue() / Game.mapBG.iMapScale));
            }
            if (i > i2) {
                Game.getProvince(i2).addProvinceBorder(i, arrayList, arrayList2);
            } else {
                Game.getProvince(i).addProvinceBorder(i2, arrayList, arrayList2);
            }
            Game.menuManager.addToast(Game.lang.get("Added") + ": [" + i + " - " + i2 + "]");
            Game.menuManager.rebuildEditorMapProvinceConnectionsList();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019e A[EDGE_INSN: B:100:0x019e->B:74:0x019e BREAK  A[LOOP:2: B:11:0x0019->B:73:0x019a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0197 A[EDGE_INSN: B:108:0x0197->B:71:0x0197 BREAK  A[LOOP:3: B:14:0x0024->B:70:0x0193], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x013c A[Catch: IndexOutOfBoundsException -> 0x0150, TRY_LEAVE, TryCatch #1 {IndexOutOfBoundsException -> 0x0150, blocks: (B:52:0x0126, B:54:0x013c), top: B:84:0x0126 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0190 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0193 A[LOOP:3: B:14:0x0024->B:70:0x0193, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x019a A[LOOP:2: B:11:0x0019->B:73:0x019a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:84:0x0126 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x01a3 A[SYNTHETIC] */
    public static void generateConnections() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (i5 < Game.getProvincesSize()) {
            int i6 = i5 + 1;
            for (int i7 = i6; i7 < Game.getProvincesSize(); i7++) {
                if (generateConnections_BoxInBox(i5, i7)) {
                    boolean z = false;
                    for (int i8 = 0; i8 < Game.getProvince(i5).getPointsSize(); i8++) {
                        for (int i9 = 0; i9 < Game.getProvince(i7).getPointsSize(); i9++) {
                            if (Game.getProvince(i5).getPointsX(i8) == Game.getProvince(i7).getPointsX(i9) && Game.getProvince(i5).getPointsY(i8) == Game.getProvince(i7).getPointsY(i9)) {
                                try {
                                    int i10 = i8 + 1;
                                    int i11 = i9 + 1;
                                    if (Game.getProvince(i5).getPointsX(i10) != Game.getProvince(i7).getPointsX(i11) || Game.getProvince(i5).getPointsY(i10) != Game.getProvince(i7).getPointsY(i11)) {
                                        try {
                                            i3 = i8 + 1;
                                            i4 = i9 - 1;
                                            if (Game.getProvince(i5).getPointsX(i3) == Game.getProvince(i7).getPointsX(i4) || Game.getProvince(i5).getPointsY(i3) != Game.getProvince(i7).getPointsY(i4)) {
                                                try {
                                                    i = i8 - 1;
                                                    i2 = i9 + 1;
                                                    if (Game.getProvince(i5).getPointsX(i) == Game.getProvince(i7).getPointsX(i2) || Game.getProvince(i5).getPointsY(i) != Game.getProvince(i7).getPointsY(i2)) {
                                                        if (z) {
                                                            break;
                                                            break;
                                                        }
                                                    }
                                                } catch (IndexOutOfBoundsException unused) {
                                                    int pointsSize = i8 - 1;
                                                    int i12 = i9 + 1;
                                                    if (pointsSize < 0) {
                                                        pointsSize = Game.getProvince(i5).getPointsSize() - 1;
                                                    }
                                                    if (Game.getProvince(i7).getPointsSize() == i12) {
                                                        i12 = 0;
                                                    }
                                                    try {
                                                        if (Game.getProvince(i5).getPointsX(pointsSize) != Game.getProvince(i7).getPointsX(i12) || Game.getProvince(i5).getPointsY(pointsSize) != Game.getProvince(i7).getPointsY(i12)) {
                                                            if (z) {
                                                                break;
                                                                break;
                                                            }
                                                        }
                                                    } catch (IndexOutOfBoundsException unused2) {
                                                    }
                                                }
                                            }
                                        } catch (IndexOutOfBoundsException unused3) {
                                            int i13 = i8 + 1;
                                            int pointsSize2 = i9 - 1;
                                            if (Game.getProvince(i5).getPointsSize() == i13) {
                                                i13 = 0;
                                            }
                                            if (pointsSize2 < 0) {
                                                pointsSize2 = Game.getProvince(i7).getPointsSize() - 1;
                                            }
                                            try {
                                                if (Game.getProvince(i5).getPointsX(i13) != Game.getProvince(i7).getPointsX(pointsSize2) || Game.getProvince(i5).getPointsY(i13) != Game.getProvince(i7).getPointsY(pointsSize2)) {
                                                    i = i8 - 1;
                                                    i2 = i9 + 1;
                                                    if (Game.getProvince(i5).getPointsX(i) == Game.getProvince(i7).getPointsX(i2)) {
                                                    }
                                                    if (z) {
                                                        break;
                                                        if (z) {
                                                            break;
                                                            if (z) {
                                                                addConnection(i5, i7);
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (IndexOutOfBoundsException unused4) {
                                            }
                                        }
                                    }
                                } catch (IndexOutOfBoundsException unused5) {
                                    int i14 = i8 + 1;
                                    int i15 = i9 + 1;
                                    if (Game.getProvince(i5).getPointsSize() == i14) {
                                        i14 = 0;
                                    }
                                    if (Game.getProvince(i7).getPointsSize() == i15) {
                                        i15 = 0;
                                    }
                                    try {
                                        if (Game.getProvince(i5).getPointsX(i14) != Game.getProvince(i7).getPointsX(i15) || Game.getProvince(i5).getPointsY(i14) != Game.getProvince(i7).getPointsY(i15)) {
                                            i3 = i8 + 1;
                                            i4 = i9 - 1;
                                            if (Game.getProvince(i5).getPointsX(i3) == Game.getProvince(i7).getPointsX(i4)) {
                                                i = i8 - 1;
                                                i2 = i9 + 1;
                                                if (Game.getProvince(i5).getPointsX(i) == Game.getProvince(i7).getPointsX(i2)) {
                                                }
                                                if (z) {
                                                    break;
                                                    if (z) {
                                                        break;
                                                        if (z) {
                                                            addConnection(i5, i7);
                                                        }
                                                    }
                                                }
                                            } else {
                                                i = i8 - 1;
                                                i2 = i9 + 1;
                                                if (Game.getProvince(i5).getPointsX(i) == Game.getProvince(i7).getPointsX(i2)) {
                                                }
                                                if (z) {
                                                    break;
                                                    if (z) {
                                                        break;
                                                        if (z) {
                                                            addConnection(i5, i7);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } catch (IndexOutOfBoundsException unused6) {
                                    }
                                }
                                z = true;
                                break;
                            }
                            if (z) {
                                break;
                            }
                        }
                        if (z) {
                            break;
                        }
                    }
                    if (z) {
                        addConnection(i5, i7);
                    }
                }
            }
            i5 = i6;
        }
    }

    public static final boolean generateConnections_BoxInBox(int i, int i2) {
        return generateConnections_PointInBox(i, Game.getProvince(i2).getMinX(), Game.getProvince(i2).getMinY()) || generateConnections_PointInBox(i, Game.getProvince(i2).getMaxX(), Game.getProvince(i2).getMinY()) || generateConnections_PointInBox(i, Game.getProvince(i2).getMinX(), Game.getProvince(i2).getMaxY()) || generateConnections_PointInBox(i, Game.getProvince(i2).getMaxX(), Game.getProvince(i2).getMaxY()) || generateConnections_PointInBox(i2, Game.getProvince(i).getMinX(), Game.getProvince(i).getMinY()) || generateConnections_PointInBox(i2, Game.getProvince(i).getMaxX(), Game.getProvince(i).getMinY()) || generateConnections_PointInBox(i2, Game.getProvince(i).getMinX(), Game.getProvince(i).getMaxY()) || generateConnections_PointInBox(i2, Game.getProvince(i).getMaxX(), Game.getProvince(i).getMaxY());
    }

    public static final boolean generateConnections_PointInBox(int i, int i2, int i3) {
        return i2 >= Game.getProvince(i).getMinX() && i2 <= Game.getProvince(i).getMaxX() && i3 >= Game.getProvince(i).getMinY() && i3 <= Game.getProvince(i).getMaxY();
    }

    public static boolean keyUp(int i) {
        if (i == 62) {
            int i2 = activeProvinceID;
            if (i2 >= 0) {
                ProvinceDrawDetails.updateDrawProvinceDetails_ProvinceID(i2);
            }
            int i3 = Game.iActiveProvince;
            activeProvinceID = i3;
            if (i3 >= 0) {
                ProvinceDrawDetails.updateDrawProvinceDetails_ProvinceID_Active(i3);
            }
            Game.menuManager.rebuildEditorMapProvinceConnectionsList();
        }
        if (i == 46 && Game.iActiveProvince >= 0) {
            Game.getProvince(Game.iActiveProvince).buildProvinceBG(true);
            Game.getProvince(Game.iActiveProvince).loadProvinceBG();
            Game.menuManager.addToast(Game.lang.get("Done") + ": " + Game.iActiveProvince);
        }
        if (i == 135 && Game.iActiveProvince >= 0) {
            Game.getProvince(Game.iActiveProvince).buildProvinceBG_Just(true);
            Game.getProvince(Game.iActiveProvince).loadProvinceBG();
            Game.menuManager.addToast(Game.lang.get("Done") + ": " + Game.iActiveProvince);
        }
        int i4 = activeProvinceID;
        int i5 = 0;
        if (i4 < 0) {
            return false;
        }
        if (i == 66) {
            return addConnection(i4, Game.iActiveProvince);
        }
        if (i != 41) {
            if (i != 67) {
                return false;
            }
            if (i4 != Game.iActiveProvince) {
                Game.getProvince(Game.iActiveProvince).removeNeighboringProvince(activeProvinceID);
                Game.getProvince(Game.iActiveProvince).removeNeighboringSeaProvince(activeProvinceID);
                Game.getProvince(activeProvinceID).removeNeighboringProvince(Game.iActiveProvince);
                Game.getProvince(activeProvinceID).removeNeighboringSeaProvince(Game.iActiveProvince);
                if (!Game.getProvince(Game.iActiveProvince).getSeaProvince() && Game.getProvince(Game.iActiveProvince).getNeighboringSeaProvincesSize() == 0) {
                    Game.getProvince(Game.iActiveProvince).setLevelOfPort(-1);
                }
                if (!Game.getProvince(activeProvinceID).getSeaProvince() && Game.getProvince(activeProvinceID).getNeighboringSeaProvincesSize() == 0) {
                    Game.getProvince(activeProvinceID).setLevelOfPort(-1);
                }
                if (activeProvinceID > Game.iActiveProvince) {
                    Game.getProvince(Game.iActiveProvince).removeProvinceBorder(activeProvinceID);
                } else {
                    Game.getProvince(activeProvinceID).removeProvinceBorder(Game.iActiveProvince);
                }
                Game.menuManager.addToast(Game.lang.get("Removed") + ": [" + activeProvinceID + " - " + Game.iActiveProvince + "]");
                Game.menuManager.rebuildEditorMapProvinceConnectionsList();
            }
            return true;
        }
        if (i4 != Game.iActiveProvince) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (activeProvinceID > Game.iActiveProvince) {
                for (int i6 = 0; i6 < Game.getProvince(Game.iActiveProvince).getProvinceBordersLandByLand(activeProvinceID).lPointsX.size(); i6++) {
                    arrayList.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersLandByLand(activeProvinceID).lPointsX.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersLandByLand(activeProvinceID).lPointsX.size() - 1) - i6));
                    arrayList2.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersLandByLand(activeProvinceID).lPointsY.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersLandByLand(activeProvinceID).lPointsY.size() - 1) - i6));
                }
                if (arrayList.size() == 0) {
                    for (int i7 = 0; i7 < Game.getProvince(Game.iActiveProvince).getProvinceBordersLandBySea(activeProvinceID).lPointsX.size(); i7++) {
                        arrayList.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersLandBySea(activeProvinceID).lPointsX.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersLandBySea(activeProvinceID).lPointsX.size() - 1) - i7));
                        arrayList2.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersLandBySea(activeProvinceID).lPointsY.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersLandBySea(activeProvinceID).lPointsY.size() - 1) - i7));
                    }
                }
                if (arrayList.size() == 0) {
                    while (i5 < Game.getProvince(Game.iActiveProvince).getProvinceBordersSeaBySea(activeProvinceID).lPointsX.size()) {
                        arrayList.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersSeaBySea(activeProvinceID).lPointsX.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersSeaBySea(activeProvinceID).lPointsX.size() - 1) - i5));
                        arrayList2.add(Game.getProvince(Game.iActiveProvince).getProvinceBordersSeaBySea(activeProvinceID).lPointsY.get((Game.getProvince(Game.iActiveProvince).getProvinceBordersSeaBySea(activeProvinceID).lPointsY.size() - 1) - i5));
                        i5++;
                    }
                }
            } else {
                for (int i8 = 0; i8 < Game.getProvince(activeProvinceID).getProvinceBordersLandByLand(Game.iActiveProvince).lPointsX.size(); i8++) {
                    arrayList.add(Game.getProvince(activeProvinceID).getProvinceBordersLandByLand(Game.iActiveProvince).lPointsX.get((Game.getProvince(activeProvinceID).getProvinceBordersLandByLand(Game.iActiveProvince).lPointsX.size() - 1) - i8));
                    arrayList2.add(Game.getProvince(activeProvinceID).getProvinceBordersLandByLand(Game.iActiveProvince).lPointsY.get((Game.getProvince(activeProvinceID).getProvinceBordersLandByLand(Game.iActiveProvince).lPointsY.size() - 1) - i8));
                }
                if (arrayList.size() == 0) {
                    for (int i9 = 0; i9 < Game.getProvince(activeProvinceID).getProvinceBordersLandBySea(Game.iActiveProvince).lPointsX.size(); i9++) {
                        arrayList.add(Game.getProvince(activeProvinceID).getProvinceBordersLandBySea(Game.iActiveProvince).lPointsX.get((Game.getProvince(activeProvinceID).getProvinceBordersLandBySea(Game.iActiveProvince).lPointsX.size() - 1) - i9));
                        arrayList2.add(Game.getProvince(activeProvinceID).getProvinceBordersLandBySea(Game.iActiveProvince).lPointsY.get((Game.getProvince(activeProvinceID).getProvinceBordersLandBySea(Game.iActiveProvince).lPointsY.size() - 1) - i9));
                    }
                }
                if (arrayList.size() == 0) {
                    while (i5 < Game.getProvince(activeProvinceID).getProvinceBordersSeaBySea(Game.iActiveProvince).lPointsX.size()) {
                        arrayList.add(Game.getProvince(activeProvinceID).getProvinceBordersSeaBySea(Game.iActiveProvince).lPointsX.get((Game.getProvince(activeProvinceID).getProvinceBordersSeaBySea(Game.iActiveProvince).lPointsX.size() - 1) - i5));
                        arrayList2.add(Game.getProvince(activeProvinceID).getProvinceBordersSeaBySea(Game.iActiveProvince).lPointsY.get((Game.getProvince(activeProvinceID).getProvinceBordersSeaBySea(Game.iActiveProvince).lPointsY.size() - 1) - i5));
                        i5++;
                    }
                }
            }
            if (activeProvinceID > Game.iActiveProvince) {
                Game.getProvince(Game.iActiveProvince).removeProvinceBorder(activeProvinceID);
            } else {
                Game.getProvince(activeProvinceID).removeProvinceBorder(Game.iActiveProvince);
            }
            if (activeProvinceID > Game.iActiveProvince) {
                Game.getProvince(Game.iActiveProvince).addProvinceBorder(activeProvinceID, arrayList, arrayList2);
            } else {
                Game.getProvince(activeProvinceID).addProvinceBorder(Game.iActiveProvince, arrayList, arrayList2);
            }
        }
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str = "ACTIVE PROVINCE ID: " + activeProvinceID + "\n\nSPACE -> SET ACTIVE PROVINCE\nENTER -> ADD CONNECTION\nBACKSPACE -> REMOVE CONNECTION\nM -> REFLECT PROVINCE BORDER\nR -> REBUILD PROVINCE BACKGROUND\nF5 -> REBUILD PROVINCE BG WITHOUT CROP";
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 3) + i, (CFG.PADDING * 3) + i2, ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 2), ((int) Renderer.glyphLayout.height) + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
