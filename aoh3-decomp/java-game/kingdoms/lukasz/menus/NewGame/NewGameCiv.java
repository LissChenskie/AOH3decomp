package aoc.kingdoms.lukasz.menus.NewGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Animation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.Button_Advantage3;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_HorizontalSplit;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_SimpleNewGame;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class NewGameCiv extends Menu {
    public static boolean expandCivDesc;
    public static int iActiveCivID;
    public int flagH;
    public int flagW;
    public int flagX;
    public int flagY;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag_Animation {
        AnonymousClass1(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
                return;
            }
            ColorPicker.ACTIVE_CIV_ID = NewGameCiv.iActiveCivID;
            Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(NewGameCiv.iActiveCivID).getR(), Game.getCiv(NewGameCiv.iActiveCivID).getG(), Game.getCiv(NewGameCiv.iActiveCivID).getB());
            Game.menuManager.getColorPicker().setVisible(true, ColorPicker.PickerAction.CIV_COLOR_NEWGAME);
            Game.menuManager.getColorPicker().setPosX(CFG.BUTTON_WIDTH);
            Game.menuManager.getColorPicker().setPosY(CFG.GAME_HEIGHT / 10);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ShowHideColorPicker"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Animation, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + i2, NewGameCiv.this.flagW, NewGameCiv.this.flagH, 1.0f);
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Images.gradientXY.draw(spriteBatch, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + i2, NewGameCiv.this.flagW, NewGameCiv.this.flagH);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.55f));
            Images.gradientXY.draw(spriteBatch, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + i2, NewGameCiv.this.flagW, NewGameCiv.this.flagH / 2, false, true);
            Images.gradientXY.draw(spriteBatch, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + (NewGameCiv.this.flagH / 2) + i2, NewGameCiv.this.flagW, NewGameCiv.this.flagH / 2, false, false);
            Images.gradientFull.draw(spriteBatch, NewGameCiv.this.flagX + i, ((NewGameCiv.this.flagY + NewGameCiv.this.flagH) - 2) + i2, NewGameCiv.this.flagW, 1);
            Images.gradientFull.draw(spriteBatch, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + 1 + i2, NewGameCiv.this.flagW, 1);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            Images.gradientFull.draw(spriteBatch, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + i2, NewGameCiv.this.flagW, 1);
            Images.gradientFull.draw(spriteBatch, NewGameCiv.this.flagX + i, ((NewGameCiv.this.flagY + NewGameCiv.this.flagH) - 1) + i2, NewGameCiv.this.flagW, 1);
            spriteBatch.setColor(Color.WHITE);
            if (getIsHovered()) {
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
                Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, NewGameCiv.this.flagX + i, NewGameCiv.this.flagY + i2, NewGameCiv.this.flagW, NewGameCiv.this.flagH, 1.0f);
                spriteBatch.setColor(Color.WHITE);
            }
            super.drawButtonBG(spriteBatch, i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Animation
        public int getFlagCivID() {
            return NewGameCiv.iActiveCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonFlag_Diplomacy {
        AnonymousClass10(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonFlag_Diplomacy {
        AnonymousClass11(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonFlag_Diplomacy {
        AnonymousClass12(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonFlag_Diplomacy {
        AnonymousClass13(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonFlag_Diplomacy {
        AnonymousClass14(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonFlag_Diplomacy {
        AnonymousClass15(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonFlag_Diplomacy {
        AnonymousClass16(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonFlag_Diplomacy {
        AnonymousClass17(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonFlag_Diplomacy {
        AnonymousClass18(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(NewGameCiv.iActiveCivID, false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID() >= 0) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Capital") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(NewGameCiv.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getProvince(Game.getCiv(NewGameCiv.iActiveCivID).getCapitalProvinceID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + CaiJWNfqszJNZ.kpGNSZbexBpeAR, "" + CFG.getNumberWithSpaces("" + Game.getCiv(NewGameCiv.iActiveCivID).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(NewGameCiv.iActiveCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_POPULATION_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.COLOR_POPULATION_HOVER;
            }
            return getClickable() ? Colors.COLOR_POPULATION : Colors.BUTTON_TEXT_DISABLED;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$6, reason: invalid class name */
    class AnonymousClass6 extends TextIcon2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(NewGameCiv.iActiveCivID).getEconomyTotal(), 1)), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnlockedTechnologies") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(NewGameCiv.iActiveCivID).getResearchedTechnologies()), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$8, reason: invalid class name */
    class AnonymousClass8 extends Text_Desc_SimpleNewGame {
        AnonymousClass8(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            NewGameCiv.expandCivDesc = !NewGameCiv.expandCivDesc;
            Game.menuManager.rebuildNewGameCiv();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonFlag_Diplomacy {
        AnonymousClass9(int i, int i2, int i3, boolean z, boolean z2, boolean z3) {
            super(i, i2, i3, z, z2, z3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0897 A[Catch: Exception -> 0x0946, TryCatch #25 {Exception -> 0x0946, blocks: (B:112:0x0887, B:114:0x0897, B:115:0x08ae, B:117:0x08b4, B:119:0x08c1, B:126:0x0906), top: B:336:0x0887 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x08b4 A[Catch: Exception -> 0x0946, TryCatch #25 {Exception -> 0x0946, blocks: (B:112:0x0887, B:114:0x0897, B:115:0x08ae, B:117:0x08b4, B:119:0x08c1, B:126:0x0906), top: B:336:0x0887 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x08c1 A[Catch: Exception -> 0x0946, TRY_LEAVE, TryCatch #25 {Exception -> 0x0946, blocks: (B:112:0x0887, B:114:0x0897, B:115:0x08ae, B:117:0x08b4, B:119:0x08c1, B:126:0x0906), top: B:336:0x0887 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x095a A[Catch: Exception -> 0x0a09, TryCatch #7 {Exception -> 0x0a09, blocks: (B:133:0x094a, B:135:0x095a, B:136:0x0971, B:138:0x0977, B:140:0x0984, B:147:0x09c9), top: B:300:0x094a }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0977 A[Catch: Exception -> 0x0a09, TryCatch #7 {Exception -> 0x0a09, blocks: (B:133:0x094a, B:135:0x095a, B:136:0x0971, B:138:0x0977, B:140:0x0984, B:147:0x09c9), top: B:300:0x094a }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0984 A[Catch: Exception -> 0x0a09, TRY_LEAVE, TryCatch #7 {Exception -> 0x0a09, blocks: (B:133:0x094a, B:135:0x095a, B:136:0x0971, B:138:0x0977, B:140:0x0984, B:147:0x09c9), top: B:300:0x094a }] */
    /* JADX WARN: Code duplicated, block: B:156:0x0a1d A[Catch: Exception -> 0x0ad4, TryCatch #10 {Exception -> 0x0ad4, blocks: (B:154:0x0a0d, B:156:0x0a1d, B:157:0x0a34, B:159:0x0a3a, B:161:0x0a47, B:168:0x0a8c), top: B:306:0x0a0d }] */
    /* JADX WARN: Code duplicated, block: B:159:0x0a3a A[Catch: Exception -> 0x0ad4, TryCatch #10 {Exception -> 0x0ad4, blocks: (B:154:0x0a0d, B:156:0x0a1d, B:157:0x0a34, B:159:0x0a3a, B:161:0x0a47, B:168:0x0a8c), top: B:306:0x0a0d }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0a47 A[Catch: Exception -> 0x0ad4, TRY_LEAVE, TryCatch #10 {Exception -> 0x0ad4, blocks: (B:154:0x0a0d, B:156:0x0a1d, B:157:0x0a34, B:159:0x0a3a, B:161:0x0a47, B:168:0x0a8c), top: B:306:0x0a0d }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0409  */
    /* JADX WARN: Code duplicated, block: B:178:0x0ae4 A[Catch: Exception -> 0x0c22, TryCatch #5 {Exception -> 0x0c22, blocks: (B:175:0x0ad8, B:176:0x0ade, B:178:0x0ae4, B:180:0x0af8, B:181:0x0aff, B:182:0x0b02, B:184:0x0b08), top: B:296:0x0ad8 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0af8 A[Catch: Exception -> 0x0c22, TryCatch #5 {Exception -> 0x0c22, blocks: (B:175:0x0ad8, B:176:0x0ade, B:178:0x0ae4, B:180:0x0af8, B:181:0x0aff, B:182:0x0b02, B:184:0x0b08), top: B:296:0x0ad8 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x0b08 A[Catch: Exception -> 0x0c22, TRY_LEAVE, TryCatch #5 {Exception -> 0x0c22, blocks: (B:175:0x0ad8, B:176:0x0ade, B:178:0x0ae4, B:180:0x0af8, B:181:0x0aff, B:182:0x0b02, B:184:0x0b08), top: B:296:0x0ad8 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0b15 A[Catch: Exception -> 0x0c16, TryCatch #8 {Exception -> 0x0c16, blocks: (B:186:0x0b0f, B:188:0x0b15, B:190:0x0b1b, B:192:0x0b24), top: B:302:0x0b0f }] */
    /* JADX WARN: Code duplicated, block: B:192:0x0b24 A[Catch: Exception -> 0x0c16, TRY_LEAVE, TryCatch #8 {Exception -> 0x0c16, blocks: (B:186:0x0b0f, B:188:0x0b15, B:190:0x0b1b, B:192:0x0b24), top: B:302:0x0b0f }] */
    /* JADX WARN: Code duplicated, block: B:198:0x0b58  */
    /* JADX WARN: Code duplicated, block: B:19:0x0440  */
    /* JADX WARN: Code duplicated, block: B:204:0x0b70 A[Catch: Exception -> 0x0c14, TRY_LEAVE, TryCatch #9 {Exception -> 0x0c14, blocks: (B:196:0x0b4e, B:199:0x0b59, B:202:0x0b65, B:204:0x0b70, B:217:0x0bd4), top: B:304:0x0b4e }] */
    /* JADX WARN: Code duplicated, block: B:21:0x044c  */
    /* JADX WARN: Code duplicated, block: B:227:0x0c1d  */
    /* JADX WARN: Code duplicated, block: B:233:0x0c3a A[Catch: Exception -> 0x0ce4, TryCatch #4 {Exception -> 0x0ce4, blocks: (B:231:0x0c2a, B:233:0x0c3a, B:234:0x0c51, B:236:0x0c57, B:238:0x0c64, B:245:0x0ca4), top: B:294:0x0c2a }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0c57 A[Catch: Exception -> 0x0ce4, TryCatch #4 {Exception -> 0x0ce4, blocks: (B:231:0x0c2a, B:233:0x0c3a, B:234:0x0c51, B:236:0x0c57, B:238:0x0c64, B:245:0x0ca4), top: B:294:0x0c2a }] */
    /* JADX WARN: Code duplicated, block: B:238:0x0c64 A[Catch: Exception -> 0x0ce4, TRY_LEAVE, TryCatch #4 {Exception -> 0x0ce4, blocks: (B:231:0x0c2a, B:233:0x0c3a, B:234:0x0c51, B:236:0x0c57, B:238:0x0c64, B:245:0x0ca4), top: B:294:0x0c2a }] */
    /* JADX WARN: Code duplicated, block: B:24:0x046a  */
    /* JADX WARN: Code duplicated, block: B:255:0x0cf4 A[Catch: Exception -> 0x0dbd, TryCatch #17 {Exception -> 0x0dbd, blocks: (B:252:0x0ce8, B:253:0x0cee, B:255:0x0cf4, B:257:0x0cfe, B:259:0x0d12, B:260:0x0d19, B:261:0x0d1c, B:263:0x0d22, B:264:0x0d29, B:266:0x0d2f, B:268:0x0d36, B:275:0x0d81), top: B:320:0x0ce8 }] */
    /* JADX WARN: Code duplicated, block: B:257:0x0cfe A[Catch: Exception -> 0x0dbd, TryCatch #17 {Exception -> 0x0dbd, blocks: (B:252:0x0ce8, B:253:0x0cee, B:255:0x0cf4, B:257:0x0cfe, B:259:0x0d12, B:260:0x0d19, B:261:0x0d1c, B:263:0x0d22, B:264:0x0d29, B:266:0x0d2f, B:268:0x0d36, B:275:0x0d81), top: B:320:0x0ce8 }] */
    /* JADX WARN: Code duplicated, block: B:263:0x0d22 A[Catch: Exception -> 0x0dbd, TryCatch #17 {Exception -> 0x0dbd, blocks: (B:252:0x0ce8, B:253:0x0cee, B:255:0x0cf4, B:257:0x0cfe, B:259:0x0d12, B:260:0x0d19, B:261:0x0d1c, B:263:0x0d22, B:264:0x0d29, B:266:0x0d2f, B:268:0x0d36, B:275:0x0d81), top: B:320:0x0ce8 }] */
    /* JADX WARN: Code duplicated, block: B:266:0x0d2f A[Catch: Exception -> 0x0dbd, TryCatch #17 {Exception -> 0x0dbd, blocks: (B:252:0x0ce8, B:253:0x0cee, B:255:0x0cf4, B:257:0x0cfe, B:259:0x0d12, B:260:0x0d19, B:261:0x0d1c, B:263:0x0d22, B:264:0x0d29, B:266:0x0d2f, B:268:0x0d36, B:275:0x0d81), top: B:320:0x0ce8 }] */
    /* JADX WARN: Code duplicated, block: B:268:0x0d36 A[Catch: Exception -> 0x0dbd, TRY_LEAVE, TryCatch #17 {Exception -> 0x0dbd, blocks: (B:252:0x0ce8, B:253:0x0cee, B:255:0x0cf4, B:257:0x0cfe, B:259:0x0d12, B:260:0x0d19, B:261:0x0d1c, B:263:0x0d22, B:264:0x0d29, B:266:0x0d2f, B:268:0x0d36, B:275:0x0d81), top: B:320:0x0ce8 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0472  */
    /* JADX WARN: Code duplicated, block: B:281:0x0dc9  */
    /* JADX WARN: Code duplicated, block: B:284:0x0e4f  */
    /* JADX WARN: Code duplicated, block: B:28:0x048c  */
    /* JADX WARN: Code duplicated, block: B:349:0x048d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0549  */
    /* JADX WARN: Code duplicated, block: B:352:0x05c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x0aff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x0b59 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:0x0d19 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:373:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:42:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:48:0x064c A[Catch: Exception -> 0x06fc, TRY_LEAVE, TryCatch #19 {Exception -> 0x06fc, blocks: (B:46:0x063c, B:48:0x064c, B:62:0x06e2), top: B:324:0x063c }] */
    /* JADX WARN: Code duplicated, block: B:52:0x066a A[Catch: Exception -> 0x06f8, TryCatch #0 {Exception -> 0x06f8, blocks: (B:50:0x0664, B:52:0x066a, B:54:0x0677, B:61:0x06bc), top: B:286:0x0664 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0677 A[Catch: Exception -> 0x06f8, TRY_LEAVE, TryCatch #0 {Exception -> 0x06f8, blocks: (B:50:0x0664, B:52:0x066a, B:54:0x0677, B:61:0x06bc), top: B:286:0x0664 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0711 A[Catch: Exception -> 0x07c0, TryCatch #14 {Exception -> 0x07c0, blocks: (B:70:0x0701, B:72:0x0711, B:73:0x0728, B:75:0x072e, B:77:0x073b, B:84:0x0780), top: B:314:0x0701 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x072e A[Catch: Exception -> 0x07c0, TryCatch #14 {Exception -> 0x07c0, blocks: (B:70:0x0701, B:72:0x0711, B:73:0x0728, B:75:0x072e, B:77:0x073b, B:84:0x0780), top: B:314:0x0701 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x073b A[Catch: Exception -> 0x07c0, TRY_LEAVE, TryCatch #14 {Exception -> 0x07c0, blocks: (B:70:0x0701, B:72:0x0711, B:73:0x0728, B:75:0x072e, B:77:0x073b, B:84:0x0780), top: B:314:0x0701 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x07d4 A[Catch: Exception -> 0x0883, TryCatch #28 {Exception -> 0x0883, blocks: (B:91:0x07c4, B:93:0x07d4, B:94:0x07eb, B:96:0x07f1, B:98:0x07fe, B:105:0x0843), top: B:342:0x07c4 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x07f1 A[Catch: Exception -> 0x0883, TryCatch #28 {Exception -> 0x0883, blocks: (B:91:0x07c4, B:93:0x07d4, B:94:0x07eb, B:96:0x07f1, B:98:0x07fe, B:105:0x0843), top: B:342:0x07c4 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x07fe A[Catch: Exception -> 0x0883, TRY_LEAVE, TryCatch #28 {Exception -> 0x0883, blocks: (B:91:0x07c4, B:93:0x07d4, B:94:0x07eb, B:96:0x07f1, B:98:0x07fe, B:105:0x0843), top: B:342:0x07c4 }] */
    public NewGameCiv() {
        String str;
        String string;
        int buttonHeight;
        int height;
        int size;
        int buttonWidth;
        int height2;
        int width;
        int i;
        int height3;
        int i2;
        int i3;
        String str2;
        ArrayList arrayList;
        int i4;
        int i5;
        int width2;
        int i6;
        int i7;
        int i8;
        int i9;
        int width3;
        int i10;
        int i11;
        ArrayList arrayList2;
        int i12;
        int i13;
        int width4;
        int i14;
        int i15;
        int size2;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int width5;
        int i21;
        int i22;
        int i23;
        int width6;
        int i24;
        int i25;
        int i26;
        int width7;
        int i27;
        int i28;
        int i29;
        int width8;
        int i30;
        int i31;
        int i32;
        int width9;
        int i33;
        int i34;
        int i35;
        int width10;
        int i36;
        int i37;
        int i38;
        int width11;
        int i39;
        int i40;
        List<MenuElement> advantagesSmall;
        int buttonWidth2;
        int size3;
        int i41;
        int i42;
        ArrayList arrayList3 = new ArrayList();
        int i43 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int height4 = ImageManager.getImage(Images.title1Red).getHeight();
        int width12 = ImageManager.getImage(Images.insideTop).getWidth();
        int i44 = (CFG.GAME_WIDTH - width12) - (CFG.PADDING * 2);
        int i45 = CFG.GAME_HEIGHT / 10;
        int i46 = CFG.PADDING * 2;
        int i47 = Game.player.iCivID;
        iActiveCivID = i47;
        RulersManager.loadRulerIMG(i47);
        arrayList3.add(new ButtonRuler(iActiveCivID, (width12 - ButtonRuler.getButtonWidth()) - i43, i46));
        this.flagX = i43;
        this.flagY = i46;
        int i48 = i43 * 2;
        int i49 = width12 - i48;
        this.flagW = (i49 - CFG.PADDING) - ButtonRuler.getButtonWidth();
        int i50 = i46 + (CFG.PADDING * 3);
        arrayList3.add(new AnonymousClass1((((width12 - ButtonRuler.getButtonWidth()) - Images.boxTitleBORDERWIDTH) / 2) - (ButtonFlag.getButtonWidth() / 2), i50, true));
        int height5 = i50 + arrayList3.get(arrayList3.size() - 1).getHeight() + (CFG.PADDING * 3);
        this.flagH = (height5 - this.flagY) - CFG.PADDING;
        ButtonIdeology.maxHeight = Math.max(Game.ideologiesManager.maxHeight, Game.religionManager.maxHeight);
        int buttonWidth3 = (((width12 - ButtonRuler.getButtonWidth()) - i48) / 2) - CFG.PADDING;
        arrayList3.add(new ButtonIdeology2(Game.getCiv(iActiveCivID).getIdeologyID(), i43, height5, buttonWidth3, (ButtonRuler.getButtonHeight() - height5) + (CFG.PADDING * 2)));
        arrayList3.add(new ButtonReligion2(Game.getCiv(iActiveCivID).getReligionID(), CFG.PADDING + i43 + buttonWidth3, height5, buttonWidth3, (ButtonRuler.getButtonHeight() - height5) + (CFG.PADDING * 2)));
        int posY = arrayList3.get(0).getPosY() + arrayList3.get(0).getHeight() + CFG.PADDING;
        int i51 = (i49 - CFG.PADDING) / 2;
        String str3 = "";
        arrayList3.add(new AnonymousClass2("" + Game.getCiv(iActiveCivID).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(iActiveCivID), i43, posY, i51, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), ImageManager.getImage(Images.vassal).getWidth() + (CFG.PADDING * 2)));
        arrayList3.add(new AnonymousClass3(Game.getCiv(iActiveCivID).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(iActiveCivID).getCapitalProvinceID()).getProvinceName() : str3, Images.capital, i43 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, posY, i51, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), ImageManager.getImage(Images.vassal).getWidth() + (CFG.PADDING * 2)));
        int height6 = posY + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        int i52 = (i49 - (CFG.PADDING * 3)) / 4;
        int height7 = ImageManager.getImage(Images.provinces).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        arrayList3.add(new AnonymousClass4(str3 + Game.getCiv(iActiveCivID).getNumOfProvinces(), Images.provinces, i43, height6, i52, height7));
        int width13 = i43 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
        arrayList3.add(new AnonymousClass5(CFG.getShortNumber(Game.getCiv(iActiveCivID).getPopulationTotal()), Images.population, width13, height6, i52, height7));
        int width14 = width13 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
        arrayList3.add(new AnonymousClass6(CFG.getShortNumber((int) Game.getCiv(iActiveCivID).getEconomyTotal()), Game_Calendar.IMG_ECONOMY, width14, height6, i52, height7));
        arrayList3.add(new AnonymousClass7(str3 + Game.getCiv(iActiveCivID).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, width14 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, height6, i52, height7));
        int height8 = height6 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            if (!FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/descriptions/" + Game.getCiv(iActiveCivID).getCivTag() + ".txt").exists()) {
                                                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/descriptions/" + Game.getCiv(iActiveCivID).realTag + ".txt").exists()) {
                                                    string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/descriptions/" + Game.getCiv(iActiveCivID).realTag + ".txt").readString();
                                                } else {
                                                    str = str3;
                                                }
                                                if (str.length() > 0) {
                                                    arrayList3.add(new AnonymousClass8(str, i43, height8, i49));
                                                    height8 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                                                }
                                                buttonHeight = height8;
                                                if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).NEW_GAME_ADVANTAGES) {
                                                    advantagesSmall = InGame_CivilizationAdvantages.getAdvantagesSmall(iActiveCivID);
                                                    if (advantagesSmall.size() > 0) {
                                                        buttonWidth2 = (width12 / 2) - (((Button_Advantage3.getButtonWidth() * advantagesSmall.size()) + (CFG.PADDING * (advantagesSmall.size() - 1))) / 2);
                                                        while (advantagesSmall.size() > 0) {
                                                            size3 = advantagesSmall.size();
                                                            i41 = 0;
                                                            for (i42 = 1; i42 < size3; i42++) {
                                                                if (CFG.compareAlphabetic_TwoString(advantagesSmall.get(i41).getTextToDraw(), advantagesSmall.get(i42).getTextToDraw())) {
                                                                    i41 = i42;
                                                                }
                                                            }
                                                            advantagesSmall.get(i41).setPosX(buttonWidth2);
                                                            advantagesSmall.get(i41).setPosY(buttonHeight);
                                                            arrayList3.add(advantagesSmall.get(i41));
                                                            buttonWidth2 += arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                            advantagesSmall.remove(i41);
                                                        }
                                                        buttonHeight += Button_Advantage3.getButtonHeight() + CFG.PADDING;
                                                    }
                                                }
                                                arrayList3.add(new Text_Title_v2Center(Game.lang.get("Diplomacy"), -1, Images.boxTitleBORDERWIDTH, buttonHeight, width12 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                                                height = buttonHeight + arrayList3.get(arrayList3.size() - 1).getHeight();
                                                size = arrayList3.size();
                                                buttonWidth = (i49 - (ButtonFlag_Diplomacy.getButtonWidth() * 3)) - (CFG.PADDING * 2);
                                                height2 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (CFG.PADDING * 2);
                                                width = ImageManager.getImage(Images.relations).getWidth() + (CFG.PADDING * 2);
                                                i = Images.boxTitleBORDERWIDTH;
                                                if (Game.getCiv(iActiveCivID).getPuppetOfCivID() != Game.getCiv(iActiveCivID).getCivID()) {
                                                    int i53 = CFG.PADDING;
                                                    arrayList3.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).getPuppetOfCivID(), i + buttonWidth + CFG.PADDING, height + CFG.PADDING, true, true, false));
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get(Game_Ages.getLord()), Images.vassal, i, height, buttonWidth, height2, width, width12 - (i * 2)));
                                                    height += height2;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                                                    i38 = i + buttonWidth;
                                                    width11 = i38 + CFG.PADDING;
                                                    i39 = 0;
                                                    i40 = 0;
                                                    while (i40 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > width12) {
                                                            width11 = i38 + CFG.PADDING;
                                                            height += height2;
                                                            i39++;
                                                        }
                                                        int i54 = width11;
                                                        arrayList3.add(new AnonymousClass9(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i40).c, i54, height + CFG.PADDING, true, true, true));
                                                        width11 = i54 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        i40++;
                                                        i39 = i39;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i, height - (height2 * i39), buttonWidth, height2 * (i39 + 1), width, width12 - (i * 2)));
                                                    height += height2;
                                                }
                                                height3 = height;
                                                if (Game.getCiv(iActiveCivID).diplomacy.alliance.size() > 0) {
                                                    i35 = i + buttonWidth;
                                                    width10 = CFG.PADDING + i35;
                                                    i2 = 0;
                                                    for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(iActiveCivID).diplomacy.alliance.values()) {
                                                        try {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > width12) {
                                                                width10 = CFG.PADDING + i35;
                                                                height3 += height2;
                                                                i2++;
                                                            }
                                                            int i55 = width10;
                                                            i36 = i2;
                                                            i37 = height3;
                                                            try {
                                                                int i56 = i35;
                                                                arrayList3.add(new AnonymousClass10(diplomacyData.iCivID, i55, i37 + CFG.PADDING, true));
                                                                width10 = i55 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                height3 = i37;
                                                                i2 = i36;
                                                                i35 = i56;
                                                            } catch (Exception e) {
                                                                e = e;
                                                                height3 = i37;
                                                                i2 = i36;
                                                                CFG.exceptionStack(e);
                                                                if (Game.getCiv(iActiveCivID).diplomacy.truce.size() > 0) {
                                                                    i32 = i + buttonWidth;
                                                                    width9 = CFG.PADDING + i32;
                                                                    for (Diplomacy.DiplomacyData diplomacyData2 : Game.getCiv(iActiveCivID).diplomacy.truce.values()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > width12) {
                                                                            width9 = CFG.PADDING + i32;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i57 = width9;
                                                                        i33 = i2;
                                                                        i34 = height3;
                                                                        try {
                                                                            int i58 = i32;
                                                                            arrayList3.add(new AnonymousClass11(diplomacyData2.iCivID, i57, i34 + CFG.PADDING, true));
                                                                            width9 = i57 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                            height3 = i34;
                                                                            i2 = i33;
                                                                            i32 = i58;
                                                                        } catch (Exception e2) {
                                                                            e = e2;
                                                                            height3 = i34;
                                                                            i2 = i33;
                                                                            CFG.exceptionStack(e);
                                                                            if (Game.getCiv(iActiveCivID).diplomacy.defensivePact.size() > 0) {
                                                                                i29 = i + buttonWidth;
                                                                                width8 = CFG.PADDING + i29;
                                                                                for (Diplomacy.DiplomacyData diplomacyData3 : Game.getCiv(iActiveCivID).diplomacy.defensivePact.values()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > width12) {
                                                                                        width8 = CFG.PADDING + i29;
                                                                                        height3 += height2;
                                                                                        i2++;
                                                                                    }
                                                                                    int i59 = width8;
                                                                                    i30 = i2;
                                                                                    i31 = height3;
                                                                                    try {
                                                                                        int i60 = i29;
                                                                                        arrayList3.add(new AnonymousClass12(diplomacyData3.iCivID, i59, i31 + CFG.PADDING, true));
                                                                                        width8 = i59 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                        height3 = i31;
                                                                                        i2 = i30;
                                                                                        i29 = i60;
                                                                                    } catch (Exception e3) {
                                                                                        e = e3;
                                                                                        height3 = i31;
                                                                                        i2 = i30;
                                                                                        CFG.exceptionStack(e);
                                                                                        if (Game.getCiv(iActiveCivID).diplomacy.guarantee.size() > 0) {
                                                                                            i26 = i + buttonWidth;
                                                                                            width7 = CFG.PADDING + i26;
                                                                                            for (Diplomacy.DiplomacyData diplomacyData4 : Game.getCiv(iActiveCivID).diplomacy.guarantee.values()) {
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > width12) {
                                                                                                    width7 = CFG.PADDING + i26;
                                                                                                    height3 += height2;
                                                                                                    i2++;
                                                                                                }
                                                                                                int i61 = width7;
                                                                                                i27 = i2;
                                                                                                i28 = height3;
                                                                                                try {
                                                                                                    int i62 = i26;
                                                                                                    arrayList3.add(new AnonymousClass13(diplomacyData4.iCivID, i61, i28 + CFG.PADDING, true));
                                                                                                    width7 = i61 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                    height3 = i28;
                                                                                                    i2 = i27;
                                                                                                    i26 = i62;
                                                                                                } catch (Exception e4) {
                                                                                                    e = e4;
                                                                                                    height3 = i28;
                                                                                                    i2 = i27;
                                                                                                    CFG.exceptionStack(e);
                                                                                                    if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                                                                                                        i23 = i + buttonWidth;
                                                                                                        width6 = CFG.PADDING + i23;
                                                                                                        for (Diplomacy.DiplomacyData diplomacyData5 : Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.values()) {
                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                                                                                                width6 = CFG.PADDING + i23;
                                                                                                                height3 += height2;
                                                                                                                i2++;
                                                                                                            }
                                                                                                            int i63 = width6;
                                                                                                            i24 = i2;
                                                                                                            i25 = height3;
                                                                                                            try {
                                                                                                                int i64 = i23;
                                                                                                                arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i63, i25 + CFG.PADDING, true));
                                                                                                                width6 = i63 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                height3 = i25;
                                                                                                                i2 = i24;
                                                                                                                i23 = i64;
                                                                                                            } catch (Exception e5) {
                                                                                                                e = e5;
                                                                                                                height3 = i25;
                                                                                                                i2 = i24;
                                                                                                                CFG.exceptionStack(e);
                                                                                                                if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                                                                                    i20 = i + buttonWidth;
                                                                                                                    width5 = CFG.PADDING + i20;
                                                                                                                    for (Diplomacy.DiplomacyData diplomacyData6 : Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.values()) {
                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                                                                                            width5 = CFG.PADDING + i20;
                                                                                                                            height3 += height2;
                                                                                                                            i2++;
                                                                                                                        }
                                                                                                                        int i65 = width5;
                                                                                                                        i21 = i2;
                                                                                                                        i22 = height3;
                                                                                                                        try {
                                                                                                                            int i66 = i20;
                                                                                                                            arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i65, i22 + CFG.PADDING, true));
                                                                                                                            width5 = i65 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                            height3 = i22;
                                                                                                                            i2 = i21;
                                                                                                                            i20 = i66;
                                                                                                                        } catch (Exception e6) {
                                                                                                                            e = e6;
                                                                                                                            height3 = i22;
                                                                                                                            i2 = i21;
                                                                                                                            CFG.exceptionStack(e);
                                                                                                                            arrayList2 = new ArrayList();
                                                                                                                            for (i12 = 1; i12 < Game.getCivsSize(); i12++) {
                                                                                                                                if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                                                                                    arrayList2.add(Integer.valueOf(i12));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            if (arrayList2.size() > 0) {
                                                                                                                                i13 = i + buttonWidth;
                                                                                                                                width4 = CFG.PADDING + i13;
                                                                                                                                i14 = i2;
                                                                                                                                i15 = 0;
                                                                                                                                while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                                                                                    try {
                                                                                                                                        size2 = arrayList2.size() - 1;
                                                                                                                                        i16 = 0;
                                                                                                                                        while (size2 > 0) {
                                                                                                                                            str2 = str3;
                                                                                                                                            try {
                                                                                                                                                i3 = size;
                                                                                                                                                try {
                                                                                                                                                    if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                                                                                        i16 = size2;
                                                                                                                                                    }
                                                                                                                                                    size2--;
                                                                                                                                                    str3 = str2;
                                                                                                                                                    size = i3;
                                                                                                                                                } catch (Exception e7) {
                                                                                                                                                    e = e7;
                                                                                                                                                    i2 = i14;
                                                                                                                                                    CFG.exceptionStack(e);
                                                                                                                                                    if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                                                                        i9 = i + buttonWidth;
                                                                                                                                                        width3 = CFG.PADDING + i9;
                                                                                                                                                        for (Diplomacy.DiplomacyData diplomacyData7 : Game.getCiv(iActiveCivID).diplomacy.militaryAccess.values()) {
                                                                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                                                                width3 = CFG.PADDING + i9;
                                                                                                                                                                height3 += height2;
                                                                                                                                                                i2++;
                                                                                                                                                            }
                                                                                                                                                            int i67 = width3;
                                                                                                                                                            i10 = i2;
                                                                                                                                                            i11 = height3;
                                                                                                                                                            try {
                                                                                                                                                                int i68 = i9;
                                                                                                                                                                arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i67, i11 + CFG.PADDING, true));
                                                                                                                                                                width3 = i67 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                                height3 = i11;
                                                                                                                                                                i2 = i10;
                                                                                                                                                                i9 = i68;
                                                                                                                                                            } catch (Exception e8) {
                                                                                                                                                                e = e8;
                                                                                                                                                                height3 = i11;
                                                                                                                                                                i2 = i10;
                                                                                                                                                                CFG.exceptionStack(e);
                                                                                                                                                                arrayList = new ArrayList();
                                                                                                                                                                while (i4 < Game.getCivsSize()) {
                                                                                                                                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                if (arrayList.size() > 0) {
                                                                                                                                                                    i5 = i + buttonWidth;
                                                                                                                                                                    width2 = CFG.PADDING + i5;
                                                                                                                                                                    i6 = i2;
                                                                                                                                                                    i7 = 0;
                                                                                                                                                                    while (i7 < arrayList.size()) {
                                                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                                                                            width2 = CFG.PADDING + i5;
                                                                                                                                                                            height3 += height2;
                                                                                                                                                                            i6++;
                                                                                                                                                                        }
                                                                                                                                                                        i8 = height3;
                                                                                                                                                                        int i69 = width2;
                                                                                                                                                                        int i70 = i6;
                                                                                                                                                                        try {
                                                                                                                                                                            ArrayList arrayList4 = arrayList;
                                                                                                                                                                            arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i69, i8 + CFG.PADDING, true));
                                                                                                                                                                            width2 = i69 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                                            i7++;
                                                                                                                                                                            height3 = i8;
                                                                                                                                                                            i6 = i70;
                                                                                                                                                                            arrayList = arrayList4;
                                                                                                                                                                        } catch (Exception e9) {
                                                                                                                                                                            e = e9;
                                                                                                                                                                            height3 = i8;
                                                                                                                                                                            CFG.exceptionStack(e);
                                                                                                                                                                            if (i3 == arrayList3.size()) {
                                                                                                                                                                                int i71 = CFG.PADDING + height3;
                                                                                                                                                                                arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i71, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                                                                height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i71;
                                                                                                                                                                            }
                                                                                                                                                                            int iMin = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                                                                            arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin)));
                                                                                                                                                                            initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin, arrayList3, true, false);
                                                                                                                                                                            if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                                                                ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                                                                Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                                }
                                                                                                                                                                if (i3 == arrayList3.size()) {
                                                                                                                                                                    int i72 = CFG.PADDING + height3;
                                                                                                                                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i72, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i72;
                                                                                                                                                                }
                                                                                                                                                                int iMin2 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin2)));
                                                                                                                                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin2, arrayList3, true, false);
                                                                                                                                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                                                        try {
                                                                                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                            i2 = 0;
                                                                                                                                                        } catch (Exception e10) {
                                                                                                                                                            e = e10;
                                                                                                                                                            i2 = 0;
                                                                                                                                                            CFG.exceptionStack(e);
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    arrayList = new ArrayList();
                                                                                                                                                    while (i4 < Game.getCivsSize()) {
                                                                                                                                                        if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    if (arrayList.size() > 0) {
                                                                                                                                                        i5 = i + buttonWidth;
                                                                                                                                                        width2 = CFG.PADDING + i5;
                                                                                                                                                        i6 = i2;
                                                                                                                                                        i7 = 0;
                                                                                                                                                        while (i7 < arrayList.size()) {
                                                                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                                                                width2 = CFG.PADDING + i5;
                                                                                                                                                                height3 += height2;
                                                                                                                                                                i6++;
                                                                                                                                                            }
                                                                                                                                                            i8 = height3;
                                                                                                                                                            int i610 = width2;
                                                                                                                                                            int i73 = i6;
                                                                                                                                                            ArrayList arrayList5 = arrayList;
                                                                                                                                                            arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i610, i8 + CFG.PADDING, true));
                                                                                                                                                            width2 = i610 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                            i7++;
                                                                                                                                                            height3 = i8;
                                                                                                                                                            i6 = i73;
                                                                                                                                                            arrayList = arrayList5;
                                                                                                                                                        }
                                                                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                    }
                                                                                                                                                    if (i3 == arrayList3.size()) {
                                                                                                                                                        int i74 = CFG.PADDING + height3;
                                                                                                                                                        arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i74, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                                        height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i74;
                                                                                                                                                    }
                                                                                                                                                    int iMin3 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                                                    arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin3)));
                                                                                                                                                    initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin3, arrayList3, true, false);
                                                                                                                                                    if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                                        ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                                        Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            } catch (Exception e11) {
                                                                                                                                                e = e11;
                                                                                                                                                i3 = size;
                                                                                                                                                i2 = i14;
                                                                                                                                                CFG.exceptionStack(e);
                                                                                                                                                if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                                                                    i9 = i + buttonWidth;
                                                                                                                                                    width3 = CFG.PADDING + i9;
                                                                                                                                                    while (r7.hasNext()) {
                                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                                                            width3 = CFG.PADDING + i9;
                                                                                                                                                            height3 += height2;
                                                                                                                                                            i2++;
                                                                                                                                                        }
                                                                                                                                                        int i611 = width3;
                                                                                                                                                        i10 = i2;
                                                                                                                                                        i11 = height3;
                                                                                                                                                        int i612 = i9;
                                                                                                                                                        arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i611, i11 + CFG.PADDING, true));
                                                                                                                                                        width3 = i611 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                        height3 = i11;
                                                                                                                                                        i2 = i10;
                                                                                                                                                        i9 = i612;
                                                                                                                                                    }
                                                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                    i2 = 0;
                                                                                                                                                }
                                                                                                                                                arrayList = new ArrayList();
                                                                                                                                                while (i4 < Game.getCivsSize()) {
                                                                                                                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                if (arrayList.size() > 0) {
                                                                                                                                                    i5 = i + buttonWidth;
                                                                                                                                                    width2 = CFG.PADDING + i5;
                                                                                                                                                    i6 = i2;
                                                                                                                                                    i7 = 0;
                                                                                                                                                    while (i7 < arrayList.size()) {
                                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                                                            width2 = CFG.PADDING + i5;
                                                                                                                                                            height3 += height2;
                                                                                                                                                            i6++;
                                                                                                                                                        }
                                                                                                                                                        i8 = height3;
                                                                                                                                                        int i613 = width2;
                                                                                                                                                        int i75 = i6;
                                                                                                                                                        ArrayList arrayList6 = arrayList;
                                                                                                                                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i613, i8 + CFG.PADDING, true));
                                                                                                                                                        width2 = i613 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                        i7++;
                                                                                                                                                        height3 = i8;
                                                                                                                                                        i6 = i75;
                                                                                                                                                        arrayList = arrayList6;
                                                                                                                                                    }
                                                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                }
                                                                                                                                                if (i3 == arrayList3.size()) {
                                                                                                                                                    int i76 = CFG.PADDING + height3;
                                                                                                                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i76, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i76;
                                                                                                                                                }
                                                                                                                                                int iMin4 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin4)));
                                                                                                                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin4, arrayList3, true, false);
                                                                                                                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        i3 = size;
                                                                                                                                        str2 = str3;
                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                                                                                            width4 = CFG.PADDING + i13;
                                                                                                                                            height3 += height2;
                                                                                                                                            i14++;
                                                                                                                                        }
                                                                                                                                        i17 = height3;
                                                                                                                                        int i77 = width4;
                                                                                                                                        i18 = i14;
                                                                                                                                        try {
                                                                                                                                            int iIntValue = ((Integer) arrayList2.get(i16)).intValue();
                                                                                                                                            int i78 = i17 + CFG.PADDING;
                                                                                                                                            int i79 = i13;
                                                                                                                                            i19 = i17;
                                                                                                                                            int i80 = i16;
                                                                                                                                            try {
                                                                                                                                                arrayList3.add(new AnonymousClass16(iIntValue, i77, i78, true));
                                                                                                                                                width4 = i77 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                arrayList2.remove(i80);
                                                                                                                                                i15++;
                                                                                                                                                str3 = str2;
                                                                                                                                                size = i3;
                                                                                                                                                i14 = i18;
                                                                                                                                                height3 = i19;
                                                                                                                                                i13 = i79;
                                                                                                                                            } catch (Exception e12) {
                                                                                                                                                e = e12;
                                                                                                                                                i2 = i18;
                                                                                                                                                height3 = i19;
                                                                                                                                                CFG.exceptionStack(e);
                                                                                                                                                if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                                                                    i9 = i + buttonWidth;
                                                                                                                                                    width3 = CFG.PADDING + i9;
                                                                                                                                                    while (r7.hasNext()) {
                                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                                                            width3 = CFG.PADDING + i9;
                                                                                                                                                            height3 += height2;
                                                                                                                                                            i2++;
                                                                                                                                                        }
                                                                                                                                                        int i614 = width3;
                                                                                                                                                        i10 = i2;
                                                                                                                                                        i11 = height3;
                                                                                                                                                        int i615 = i9;
                                                                                                                                                        arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i614, i11 + CFG.PADDING, true));
                                                                                                                                                        width3 = i614 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                        height3 = i11;
                                                                                                                                                        i2 = i10;
                                                                                                                                                        i9 = i615;
                                                                                                                                                    }
                                                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                    i2 = 0;
                                                                                                                                                }
                                                                                                                                                arrayList = new ArrayList();
                                                                                                                                                while (i4 < Game.getCivsSize()) {
                                                                                                                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                if (arrayList.size() > 0) {
                                                                                                                                                    i5 = i + buttonWidth;
                                                                                                                                                    width2 = CFG.PADDING + i5;
                                                                                                                                                    i6 = i2;
                                                                                                                                                    i7 = 0;
                                                                                                                                                    while (i7 < arrayList.size()) {
                                                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                                                            width2 = CFG.PADDING + i5;
                                                                                                                                                            height3 += height2;
                                                                                                                                                            i6++;
                                                                                                                                                        }
                                                                                                                                                        i8 = height3;
                                                                                                                                                        int i616 = width2;
                                                                                                                                                        int i710 = i6;
                                                                                                                                                        ArrayList arrayList7 = arrayList;
                                                                                                                                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i616, i8 + CFG.PADDING, true));
                                                                                                                                                        width2 = i616 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                                        i7++;
                                                                                                                                                        height3 = i8;
                                                                                                                                                        i6 = i710;
                                                                                                                                                        arrayList = arrayList7;
                                                                                                                                                    }
                                                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                                }
                                                                                                                                                if (i3 == arrayList3.size()) {
                                                                                                                                                    int i711 = CFG.PADDING + height3;
                                                                                                                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i711, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i711;
                                                                                                                                                }
                                                                                                                                                int iMin5 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin5)));
                                                                                                                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin5, arrayList3, true, false);
                                                                                                                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } catch (Exception e13) {
                                                                                                                                            e = e13;
                                                                                                                                            i19 = i17;
                                                                                                                                        }
                                                                                                                                    } catch (Exception e14) {
                                                                                                                                        e = e14;
                                                                                                                                        i3 = size;
                                                                                                                                        str2 = str3;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                i3 = size;
                                                                                                                                str2 = str3;
                                                                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                                                                                try {
                                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                    i2 = 0;
                                                                                                                                } catch (Exception e15) {
                                                                                                                                    e = e15;
                                                                                                                                    i2 = 0;
                                                                                                                                    CFG.exceptionStack(e);
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                i3 = size;
                                                                                                                                str2 = str3;
                                                                                                                            }
                                                                                                                            if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                                                i9 = i + buttonWidth;
                                                                                                                                width3 = CFG.PADDING + i9;
                                                                                                                                while (r7.hasNext()) {
                                                                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                                        width3 = CFG.PADDING + i9;
                                                                                                                                        height3 += height2;
                                                                                                                                        i2++;
                                                                                                                                    }
                                                                                                                                    int i617 = width3;
                                                                                                                                    i10 = i2;
                                                                                                                                    i11 = height3;
                                                                                                                                    int i618 = i9;
                                                                                                                                    arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i617, i11 + CFG.PADDING, true));
                                                                                                                                    width3 = i617 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                    height3 = i11;
                                                                                                                                    i2 = i10;
                                                                                                                                    i9 = i618;
                                                                                                                                }
                                                                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                                i2 = 0;
                                                                                                                            }
                                                                                                                            arrayList = new ArrayList();
                                                                                                                            while (i4 < Game.getCivsSize()) {
                                                                                                                                if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                                }
                                                                                                                            }
                                                                                                                            if (arrayList.size() > 0) {
                                                                                                                                i5 = i + buttonWidth;
                                                                                                                                width2 = CFG.PADDING + i5;
                                                                                                                                i6 = i2;
                                                                                                                                i7 = 0;
                                                                                                                                while (i7 < arrayList.size()) {
                                                                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                                        width2 = CFG.PADDING + i5;
                                                                                                                                        height3 += height2;
                                                                                                                                        i6++;
                                                                                                                                    }
                                                                                                                                    i8 = height3;
                                                                                                                                    int i619 = width2;
                                                                                                                                    int i712 = i6;
                                                                                                                                    ArrayList arrayList8 = arrayList;
                                                                                                                                    arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i619, i8 + CFG.PADDING, true));
                                                                                                                                    width2 = i619 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                                    i7++;
                                                                                                                                    height3 = i8;
                                                                                                                                    i6 = i712;
                                                                                                                                    arrayList = arrayList8;
                                                                                                                                }
                                                                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                            }
                                                                                                                            if (i3 == arrayList3.size()) {
                                                                                                                                int i713 = CFG.PADDING + height3;
                                                                                                                                arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i713, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                                height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i713;
                                                                                                                            }
                                                                                                                            int iMin6 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                            arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin6)));
                                                                                                                            initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin6, arrayList3, true, false);
                                                                                                                            if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                                ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                                Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                    try {
                                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                        i2 = 0;
                                                                                                                    } catch (Exception e16) {
                                                                                                                        e = e16;
                                                                                                                        i2 = 0;
                                                                                                                        CFG.exceptionStack(e);
                                                                                                                    }
                                                                                                                }
                                                                                                                arrayList2 = new ArrayList();
                                                                                                                while (i12 < Game.getCivsSize()) {
                                                                                                                    if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                                                                        arrayList2.add(Integer.valueOf(i12));
                                                                                                                    }
                                                                                                                }
                                                                                                                if (arrayList2.size() > 0) {
                                                                                                                    i13 = i + buttonWidth;
                                                                                                                    width4 = CFG.PADDING + i13;
                                                                                                                    i14 = i2;
                                                                                                                    i15 = 0;
                                                                                                                    while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                                                                        size2 = arrayList2.size() - 1;
                                                                                                                        i16 = 0;
                                                                                                                        while (size2 > 0) {
                                                                                                                            str2 = str3;
                                                                                                                            i3 = size;
                                                                                                                            if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                                                                i16 = size2;
                                                                                                                            }
                                                                                                                            size2--;
                                                                                                                            str3 = str2;
                                                                                                                            size = i3;
                                                                                                                        }
                                                                                                                        i3 = size;
                                                                                                                        str2 = str3;
                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                                                                            width4 = CFG.PADDING + i13;
                                                                                                                            height3 += height2;
                                                                                                                            i14++;
                                                                                                                        }
                                                                                                                        i17 = height3;
                                                                                                                        int i714 = width4;
                                                                                                                        i18 = i14;
                                                                                                                        int iIntValue2 = ((Integer) arrayList2.get(i16)).intValue();
                                                                                                                        int i715 = i17 + CFG.PADDING;
                                                                                                                        int i716 = i13;
                                                                                                                        i19 = i17;
                                                                                                                        int i81 = i16;
                                                                                                                        arrayList3.add(new AnonymousClass16(iIntValue2, i714, i715, true));
                                                                                                                        width4 = i714 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                        arrayList2.remove(i81);
                                                                                                                        i15++;
                                                                                                                        str3 = str2;
                                                                                                                        size = i3;
                                                                                                                        i14 = i18;
                                                                                                                        height3 = i19;
                                                                                                                        i13 = i716;
                                                                                                                    }
                                                                                                                    i3 = size;
                                                                                                                    str2 = str3;
                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                    i2 = 0;
                                                                                                                } else {
                                                                                                                    i3 = size;
                                                                                                                    str2 = str3;
                                                                                                                }
                                                                                                                if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                                    i9 = i + buttonWidth;
                                                                                                                    width3 = CFG.PADDING + i9;
                                                                                                                    while (r7.hasNext()) {
                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                            width3 = CFG.PADDING + i9;
                                                                                                                            height3 += height2;
                                                                                                                            i2++;
                                                                                                                        }
                                                                                                                        int i6110 = width3;
                                                                                                                        i10 = i2;
                                                                                                                        i11 = height3;
                                                                                                                        int i6111 = i9;
                                                                                                                        arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i6110, i11 + CFG.PADDING, true));
                                                                                                                        width3 = i6110 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                        height3 = i11;
                                                                                                                        i2 = i10;
                                                                                                                        i9 = i6111;
                                                                                                                    }
                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                    i2 = 0;
                                                                                                                }
                                                                                                                arrayList = new ArrayList();
                                                                                                                while (i4 < Game.getCivsSize()) {
                                                                                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                                    }
                                                                                                                }
                                                                                                                if (arrayList.size() > 0) {
                                                                                                                    i5 = i + buttonWidth;
                                                                                                                    width2 = CFG.PADDING + i5;
                                                                                                                    i6 = i2;
                                                                                                                    i7 = 0;
                                                                                                                    while (i7 < arrayList.size()) {
                                                                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                            width2 = CFG.PADDING + i5;
                                                                                                                            height3 += height2;
                                                                                                                            i6++;
                                                                                                                        }
                                                                                                                        i8 = height3;
                                                                                                                        int i6112 = width2;
                                                                                                                        int i717 = i6;
                                                                                                                        ArrayList arrayList9 = arrayList;
                                                                                                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i6112, i8 + CFG.PADDING, true));
                                                                                                                        width2 = i6112 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                                        i7++;
                                                                                                                        height3 = i8;
                                                                                                                        i6 = i717;
                                                                                                                        arrayList = arrayList9;
                                                                                                                    }
                                                                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                                }
                                                                                                                if (i3 == arrayList3.size()) {
                                                                                                                    int i718 = CFG.PADDING + height3;
                                                                                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i718, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i718;
                                                                                                                }
                                                                                                                int iMin7 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin7)));
                                                                                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin7, arrayList3, true, false);
                                                                                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                        try {
                                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                            i2 = 0;
                                                                                                        } catch (Exception e17) {
                                                                                                            e = e17;
                                                                                                            i2 = 0;
                                                                                                            CFG.exceptionStack(e);
                                                                                                        }
                                                                                                    }
                                                                                                    if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                                                                        i20 = i + buttonWidth;
                                                                                                        width5 = CFG.PADDING + i20;
                                                                                                        while (r7.hasNext()) {
                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                                                                                width5 = CFG.PADDING + i20;
                                                                                                                height3 += height2;
                                                                                                                i2++;
                                                                                                            }
                                                                                                            int i620 = width5;
                                                                                                            i21 = i2;
                                                                                                            i22 = height3;
                                                                                                            int i621 = i20;
                                                                                                            arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i620, i22 + CFG.PADDING, true));
                                                                                                            width5 = i620 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                            height3 = i22;
                                                                                                            i2 = i21;
                                                                                                            i20 = i621;
                                                                                                        }
                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                        i2 = 0;
                                                                                                    }
                                                                                                    arrayList2 = new ArrayList();
                                                                                                    while (i12 < Game.getCivsSize()) {
                                                                                                        if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                                                            arrayList2.add(Integer.valueOf(i12));
                                                                                                        }
                                                                                                    }
                                                                                                    if (arrayList2.size() > 0) {
                                                                                                        i13 = i + buttonWidth;
                                                                                                        width4 = CFG.PADDING + i13;
                                                                                                        i14 = i2;
                                                                                                        i15 = 0;
                                                                                                        while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                                                            size2 = arrayList2.size() - 1;
                                                                                                            i16 = 0;
                                                                                                            while (size2 > 0) {
                                                                                                                str2 = str3;
                                                                                                                i3 = size;
                                                                                                                if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                                                    i16 = size2;
                                                                                                                }
                                                                                                                size2--;
                                                                                                                str3 = str2;
                                                                                                                size = i3;
                                                                                                            }
                                                                                                            i3 = size;
                                                                                                            str2 = str3;
                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                                                                width4 = CFG.PADDING + i13;
                                                                                                                height3 += height2;
                                                                                                                i14++;
                                                                                                            }
                                                                                                            i17 = height3;
                                                                                                            int i719 = width4;
                                                                                                            i18 = i14;
                                                                                                            int iIntValue3 = ((Integer) arrayList2.get(i16)).intValue();
                                                                                                            int i7110 = i17 + CFG.PADDING;
                                                                                                            int i7111 = i13;
                                                                                                            i19 = i17;
                                                                                                            int i82 = i16;
                                                                                                            arrayList3.add(new AnonymousClass16(iIntValue3, i719, i7110, true));
                                                                                                            width4 = i719 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                            arrayList2.remove(i82);
                                                                                                            i15++;
                                                                                                            str3 = str2;
                                                                                                            size = i3;
                                                                                                            i14 = i18;
                                                                                                            height3 = i19;
                                                                                                            i13 = i7111;
                                                                                                        }
                                                                                                        i3 = size;
                                                                                                        str2 = str3;
                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                        i2 = 0;
                                                                                                    } else {
                                                                                                        i3 = size;
                                                                                                        str2 = str3;
                                                                                                    }
                                                                                                    if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                                        i9 = i + buttonWidth;
                                                                                                        width3 = CFG.PADDING + i9;
                                                                                                        while (r7.hasNext()) {
                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                                width3 = CFG.PADDING + i9;
                                                                                                                height3 += height2;
                                                                                                                i2++;
                                                                                                            }
                                                                                                            int i6113 = width3;
                                                                                                            i10 = i2;
                                                                                                            i11 = height3;
                                                                                                            int i6114 = i9;
                                                                                                            arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i6113, i11 + CFG.PADDING, true));
                                                                                                            width3 = i6113 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                            height3 = i11;
                                                                                                            i2 = i10;
                                                                                                            i9 = i6114;
                                                                                                        }
                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                        i2 = 0;
                                                                                                    }
                                                                                                    arrayList = new ArrayList();
                                                                                                    while (i4 < Game.getCivsSize()) {
                                                                                                        if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                                        }
                                                                                                    }
                                                                                                    if (arrayList.size() > 0) {
                                                                                                        i5 = i + buttonWidth;
                                                                                                        width2 = CFG.PADDING + i5;
                                                                                                        i6 = i2;
                                                                                                        i7 = 0;
                                                                                                        while (i7 < arrayList.size()) {
                                                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                                width2 = CFG.PADDING + i5;
                                                                                                                height3 += height2;
                                                                                                                i6++;
                                                                                                            }
                                                                                                            i8 = height3;
                                                                                                            int i6115 = width2;
                                                                                                            int i7112 = i6;
                                                                                                            ArrayList arrayList10 = arrayList;
                                                                                                            arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i6115, i8 + CFG.PADDING, true));
                                                                                                            width2 = i6115 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                            i7++;
                                                                                                            height3 = i8;
                                                                                                            i6 = i7112;
                                                                                                            arrayList = arrayList10;
                                                                                                        }
                                                                                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                    }
                                                                                                    if (i3 == arrayList3.size()) {
                                                                                                        int i7113 = CFG.PADDING + height3;
                                                                                                        arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i7113, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                                        height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i7113;
                                                                                                    }
                                                                                                    int iMin8 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                                    arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin8)));
                                                                                                    initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin8, arrayList3, true, false);
                                                                                                    if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                                        ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                                        Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                            try {
                                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                                i2 = 0;
                                                                                            } catch (Exception e18) {
                                                                                                e = e18;
                                                                                                i2 = 0;
                                                                                                CFG.exceptionStack(e);
                                                                                            }
                                                                                        }
                                                                                        if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                                                                                            i23 = i + buttonWidth;
                                                                                            width6 = CFG.PADDING + i23;
                                                                                            while (r7.hasNext()) {
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                                                                                    width6 = CFG.PADDING + i23;
                                                                                                    height3 += height2;
                                                                                                    i2++;
                                                                                                }
                                                                                                int i622 = width6;
                                                                                                i24 = i2;
                                                                                                i25 = height3;
                                                                                                int i623 = i23;
                                                                                                arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i622, i25 + CFG.PADDING, true));
                                                                                                width6 = i622 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                height3 = i25;
                                                                                                i2 = i24;
                                                                                                i23 = i623;
                                                                                            }
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                            i2 = 0;
                                                                                        }
                                                                                        if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                                                            i20 = i + buttonWidth;
                                                                                            width5 = CFG.PADDING + i20;
                                                                                            while (r7.hasNext()) {
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                                                                    width5 = CFG.PADDING + i20;
                                                                                                    height3 += height2;
                                                                                                    i2++;
                                                                                                }
                                                                                                int i624 = width5;
                                                                                                i21 = i2;
                                                                                                i22 = height3;
                                                                                                int i625 = i20;
                                                                                                arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i624, i22 + CFG.PADDING, true));
                                                                                                width5 = i624 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                height3 = i22;
                                                                                                i2 = i21;
                                                                                                i20 = i625;
                                                                                            }
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                            i2 = 0;
                                                                                        }
                                                                                        arrayList2 = new ArrayList();
                                                                                        while (i12 < Game.getCivsSize()) {
                                                                                            if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                                                arrayList2.add(Integer.valueOf(i12));
                                                                                            }
                                                                                        }
                                                                                        if (arrayList2.size() > 0) {
                                                                                            i13 = i + buttonWidth;
                                                                                            width4 = CFG.PADDING + i13;
                                                                                            i14 = i2;
                                                                                            i15 = 0;
                                                                                            while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                                                size2 = arrayList2.size() - 1;
                                                                                                i16 = 0;
                                                                                                while (size2 > 0) {
                                                                                                    str2 = str3;
                                                                                                    i3 = size;
                                                                                                    if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                                        i16 = size2;
                                                                                                    }
                                                                                                    size2--;
                                                                                                    str3 = str2;
                                                                                                    size = i3;
                                                                                                }
                                                                                                i3 = size;
                                                                                                str2 = str3;
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                                                    width4 = CFG.PADDING + i13;
                                                                                                    height3 += height2;
                                                                                                    i14++;
                                                                                                }
                                                                                                i17 = height3;
                                                                                                int i7114 = width4;
                                                                                                i18 = i14;
                                                                                                int iIntValue4 = ((Integer) arrayList2.get(i16)).intValue();
                                                                                                int i7115 = i17 + CFG.PADDING;
                                                                                                int i7116 = i13;
                                                                                                i19 = i17;
                                                                                                int i83 = i16;
                                                                                                arrayList3.add(new AnonymousClass16(iIntValue4, i7114, i7115, true));
                                                                                                width4 = i7114 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                arrayList2.remove(i83);
                                                                                                i15++;
                                                                                                str3 = str2;
                                                                                                size = i3;
                                                                                                i14 = i18;
                                                                                                height3 = i19;
                                                                                                i13 = i7116;
                                                                                            }
                                                                                            i3 = size;
                                                                                            str2 = str3;
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                            i2 = 0;
                                                                                        } else {
                                                                                            i3 = size;
                                                                                            str2 = str3;
                                                                                        }
                                                                                        if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                            i9 = i + buttonWidth;
                                                                                            width3 = CFG.PADDING + i9;
                                                                                            while (r7.hasNext()) {
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                                    width3 = CFG.PADDING + i9;
                                                                                                    height3 += height2;
                                                                                                    i2++;
                                                                                                }
                                                                                                int i6116 = width3;
                                                                                                i10 = i2;
                                                                                                i11 = height3;
                                                                                                int i6117 = i9;
                                                                                                arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i6116, i11 + CFG.PADDING, true));
                                                                                                width3 = i6116 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                height3 = i11;
                                                                                                i2 = i10;
                                                                                                i9 = i6117;
                                                                                            }
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                            i2 = 0;
                                                                                        }
                                                                                        arrayList = new ArrayList();
                                                                                        while (i4 < Game.getCivsSize()) {
                                                                                            if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                            }
                                                                                        }
                                                                                        if (arrayList.size() > 0) {
                                                                                            i5 = i + buttonWidth;
                                                                                            width2 = CFG.PADDING + i5;
                                                                                            i6 = i2;
                                                                                            i7 = 0;
                                                                                            while (i7 < arrayList.size()) {
                                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                                    width2 = CFG.PADDING + i5;
                                                                                                    height3 += height2;
                                                                                                    i6++;
                                                                                                }
                                                                                                i8 = height3;
                                                                                                int i6118 = width2;
                                                                                                int i7117 = i6;
                                                                                                ArrayList arrayList11 = arrayList;
                                                                                                arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i6118, i8 + CFG.PADDING, true));
                                                                                                width2 = i6118 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                                i7++;
                                                                                                height3 = i8;
                                                                                                i6 = i7117;
                                                                                                arrayList = arrayList11;
                                                                                            }
                                                                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                        }
                                                                                        if (i3 == arrayList3.size()) {
                                                                                            int i7118 = CFG.PADDING + height3;
                                                                                            arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i7118, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                            height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i7118;
                                                                                        }
                                                                                        int iMin9 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                                        arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin9)));
                                                                                        initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin9, arrayList3, true, false);
                                                                                        if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                            ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                            Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                                        }
                                                                                    }
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("DefensivePact"), Images.defensivePact, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                try {
                                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                    i2 = 0;
                                                                                } catch (Exception e19) {
                                                                                    e = e19;
                                                                                    i2 = 0;
                                                                                    CFG.exceptionStack(e);
                                                                                }
                                                                            }
                                                                            if (Game.getCiv(iActiveCivID).diplomacy.guarantee.size() > 0) {
                                                                                i26 = i + buttonWidth;
                                                                                width7 = CFG.PADDING + i26;
                                                                                while (r7.hasNext()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > width12) {
                                                                                        width7 = CFG.PADDING + i26;
                                                                                        height3 += height2;
                                                                                        i2++;
                                                                                    }
                                                                                    int i626 = width7;
                                                                                    i27 = i2;
                                                                                    i28 = height3;
                                                                                    int i627 = i26;
                                                                                    arrayList3.add(new AnonymousClass13(diplomacyData4.iCivID, i626, i28 + CFG.PADDING, true));
                                                                                    width7 = i626 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    height3 = i28;
                                                                                    i2 = i27;
                                                                                    i26 = i627;
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                i2 = 0;
                                                                            }
                                                                            if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                                                                                i23 = i + buttonWidth;
                                                                                width6 = CFG.PADDING + i23;
                                                                                while (r7.hasNext()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                                                                        width6 = CFG.PADDING + i23;
                                                                                        height3 += height2;
                                                                                        i2++;
                                                                                    }
                                                                                    int i628 = width6;
                                                                                    i24 = i2;
                                                                                    i25 = height3;
                                                                                    int i629 = i23;
                                                                                    arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i628, i25 + CFG.PADDING, true));
                                                                                    width6 = i628 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    height3 = i25;
                                                                                    i2 = i24;
                                                                                    i23 = i629;
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                i2 = 0;
                                                                            }
                                                                            if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                                                i20 = i + buttonWidth;
                                                                                width5 = CFG.PADDING + i20;
                                                                                while (r7.hasNext()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                                                        width5 = CFG.PADDING + i20;
                                                                                        height3 += height2;
                                                                                        i2++;
                                                                                    }
                                                                                    int i6210 = width5;
                                                                                    i21 = i2;
                                                                                    i22 = height3;
                                                                                    int i6211 = i20;
                                                                                    arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i6210, i22 + CFG.PADDING, true));
                                                                                    width5 = i6210 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    height3 = i22;
                                                                                    i2 = i21;
                                                                                    i20 = i6211;
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                i2 = 0;
                                                                            }
                                                                            arrayList2 = new ArrayList();
                                                                            while (i12 < Game.getCivsSize()) {
                                                                                if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                                    arrayList2.add(Integer.valueOf(i12));
                                                                                }
                                                                            }
                                                                            if (arrayList2.size() > 0) {
                                                                                i13 = i + buttonWidth;
                                                                                width4 = CFG.PADDING + i13;
                                                                                i14 = i2;
                                                                                i15 = 0;
                                                                                while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                                    size2 = arrayList2.size() - 1;
                                                                                    i16 = 0;
                                                                                    while (size2 > 0) {
                                                                                        str2 = str3;
                                                                                        i3 = size;
                                                                                        if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                            i16 = size2;
                                                                                        }
                                                                                        size2--;
                                                                                        str3 = str2;
                                                                                        size = i3;
                                                                                    }
                                                                                    i3 = size;
                                                                                    str2 = str3;
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                                        width4 = CFG.PADDING + i13;
                                                                                        height3 += height2;
                                                                                        i14++;
                                                                                    }
                                                                                    i17 = height3;
                                                                                    int i7119 = width4;
                                                                                    i18 = i14;
                                                                                    int iIntValue5 = ((Integer) arrayList2.get(i16)).intValue();
                                                                                    int i71110 = i17 + CFG.PADDING;
                                                                                    int i71111 = i13;
                                                                                    i19 = i17;
                                                                                    int i84 = i16;
                                                                                    arrayList3.add(new AnonymousClass16(iIntValue5, i7119, i71110, true));
                                                                                    width4 = i7119 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    arrayList2.remove(i84);
                                                                                    i15++;
                                                                                    str3 = str2;
                                                                                    size = i3;
                                                                                    i14 = i18;
                                                                                    height3 = i19;
                                                                                    i13 = i71111;
                                                                                }
                                                                                i3 = size;
                                                                                str2 = str3;
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                i2 = 0;
                                                                            } else {
                                                                                i3 = size;
                                                                                str2 = str3;
                                                                            }
                                                                            if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                                i9 = i + buttonWidth;
                                                                                width3 = CFG.PADDING + i9;
                                                                                while (r7.hasNext()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                                        width3 = CFG.PADDING + i9;
                                                                                        height3 += height2;
                                                                                        i2++;
                                                                                    }
                                                                                    int i6119 = width3;
                                                                                    i10 = i2;
                                                                                    i11 = height3;
                                                                                    int i61110 = i9;
                                                                                    arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i6119, i11 + CFG.PADDING, true));
                                                                                    width3 = i6119 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    height3 = i11;
                                                                                    i2 = i10;
                                                                                    i9 = i61110;
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                                i2 = 0;
                                                                            }
                                                                            arrayList = new ArrayList();
                                                                            while (i4 < Game.getCivsSize()) {
                                                                                if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                                }
                                                                            }
                                                                            if (arrayList.size() > 0) {
                                                                                i5 = i + buttonWidth;
                                                                                width2 = CFG.PADDING + i5;
                                                                                i6 = i2;
                                                                                i7 = 0;
                                                                                while (i7 < arrayList.size()) {
                                                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                                        width2 = CFG.PADDING + i5;
                                                                                        height3 += height2;
                                                                                        i6++;
                                                                                    }
                                                                                    i8 = height3;
                                                                                    int i61111 = width2;
                                                                                    int i71112 = i6;
                                                                                    ArrayList arrayList12 = arrayList;
                                                                                    arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i61111, i8 + CFG.PADDING, true));
                                                                                    width2 = i61111 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                                    i7++;
                                                                                    height3 = i8;
                                                                                    i6 = i71112;
                                                                                    arrayList = arrayList12;
                                                                                }
                                                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                            }
                                                                            if (i3 == arrayList3.size()) {
                                                                                int i71113 = CFG.PADDING + height3;
                                                                                arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i71113, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                                height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i71113;
                                                                            }
                                                                            int iMin10 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                            arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin10)));
                                                                            initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin10, arrayList3, true, false);
                                                                            if (Game.menuManager.getColorPicker().getVisible()) {
                                                                                ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                                Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                            }
                                                                        }
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("Truce"), Images.truce, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    try {
                                                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                        i2 = 0;
                                                                    } catch (Exception e20) {
                                                                        e = e20;
                                                                        i2 = 0;
                                                                        CFG.exceptionStack(e);
                                                                    }
                                                                }
                                                                if (Game.getCiv(iActiveCivID).diplomacy.defensivePact.size() > 0) {
                                                                    i29 = i + buttonWidth;
                                                                    width8 = CFG.PADDING + i29;
                                                                    while (r7.hasNext()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > width12) {
                                                                            width8 = CFG.PADDING + i29;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i510 = width8;
                                                                        i30 = i2;
                                                                        i31 = height3;
                                                                        int i630 = i29;
                                                                        arrayList3.add(new AnonymousClass12(diplomacyData3.iCivID, i510, i31 + CFG.PADDING, true));
                                                                        width8 = i510 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        height3 = i31;
                                                                        i2 = i30;
                                                                        i29 = i630;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("DefensivePact"), Images.defensivePact, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                }
                                                                if (Game.getCiv(iActiveCivID).diplomacy.guarantee.size() > 0) {
                                                                    i26 = i + buttonWidth;
                                                                    width7 = CFG.PADDING + i26;
                                                                    while (r7.hasNext()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > width12) {
                                                                            width7 = CFG.PADDING + i26;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i6212 = width7;
                                                                        i27 = i2;
                                                                        i28 = height3;
                                                                        int i6213 = i26;
                                                                        arrayList3.add(new AnonymousClass13(diplomacyData4.iCivID, i6212, i28 + CFG.PADDING, true));
                                                                        width7 = i6212 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        height3 = i28;
                                                                        i2 = i27;
                                                                        i26 = i6213;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                }
                                                                if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                                                                    i23 = i + buttonWidth;
                                                                    width6 = CFG.PADDING + i23;
                                                                    while (r7.hasNext()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                                                            width6 = CFG.PADDING + i23;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i6214 = width6;
                                                                        i24 = i2;
                                                                        i25 = height3;
                                                                        int i6215 = i23;
                                                                        arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i6214, i25 + CFG.PADDING, true));
                                                                        width6 = i6214 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        height3 = i25;
                                                                        i2 = i24;
                                                                        i23 = i6215;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                }
                                                                if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                                    i20 = i + buttonWidth;
                                                                    width5 = CFG.PADDING + i20;
                                                                    while (r7.hasNext()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                                            width5 = CFG.PADDING + i20;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i6216 = width5;
                                                                        i21 = i2;
                                                                        i22 = height3;
                                                                        int i6217 = i20;
                                                                        arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i6216, i22 + CFG.PADDING, true));
                                                                        width5 = i6216 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        height3 = i22;
                                                                        i2 = i21;
                                                                        i20 = i6217;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                }
                                                                arrayList2 = new ArrayList();
                                                                while (i12 < Game.getCivsSize()) {
                                                                    if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                                        arrayList2.add(Integer.valueOf(i12));
                                                                    }
                                                                }
                                                                if (arrayList2.size() > 0) {
                                                                    i13 = i + buttonWidth;
                                                                    width4 = CFG.PADDING + i13;
                                                                    i14 = i2;
                                                                    i15 = 0;
                                                                    while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                                        size2 = arrayList2.size() - 1;
                                                                        i16 = 0;
                                                                        while (size2 > 0) {
                                                                            str2 = str3;
                                                                            i3 = size;
                                                                            if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                                i16 = size2;
                                                                            }
                                                                            size2--;
                                                                            str3 = str2;
                                                                            size = i3;
                                                                        }
                                                                        i3 = size;
                                                                        str2 = str3;
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                                            width4 = CFG.PADDING + i13;
                                                                            height3 += height2;
                                                                            i14++;
                                                                        }
                                                                        i17 = height3;
                                                                        int i71114 = width4;
                                                                        i18 = i14;
                                                                        int iIntValue6 = ((Integer) arrayList2.get(i16)).intValue();
                                                                        int i71115 = i17 + CFG.PADDING;
                                                                        int i71116 = i13;
                                                                        i19 = i17;
                                                                        int i85 = i16;
                                                                        arrayList3.add(new AnonymousClass16(iIntValue6, i71114, i71115, true));
                                                                        width4 = i71114 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        arrayList2.remove(i85);
                                                                        i15++;
                                                                        str3 = str2;
                                                                        size = i3;
                                                                        i14 = i18;
                                                                        height3 = i19;
                                                                        i13 = i71116;
                                                                    }
                                                                    i3 = size;
                                                                    str2 = str3;
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                } else {
                                                                    i3 = size;
                                                                    str2 = str3;
                                                                }
                                                                if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                                    i9 = i + buttonWidth;
                                                                    width3 = CFG.PADDING + i9;
                                                                    while (r7.hasNext()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                                            width3 = CFG.PADDING + i9;
                                                                            height3 += height2;
                                                                            i2++;
                                                                        }
                                                                        int i61112 = width3;
                                                                        i10 = i2;
                                                                        i11 = height3;
                                                                        int i61113 = i9;
                                                                        arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i61112, i11 + CFG.PADDING, true));
                                                                        width3 = i61112 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        height3 = i11;
                                                                        i2 = i10;
                                                                        i9 = i61113;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                    i2 = 0;
                                                                }
                                                                arrayList = new ArrayList();
                                                                while (i4 < Game.getCivsSize()) {
                                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                                                    }
                                                                }
                                                                if (arrayList.size() > 0) {
                                                                    i5 = i + buttonWidth;
                                                                    width2 = CFG.PADDING + i5;
                                                                    i6 = i2;
                                                                    i7 = 0;
                                                                    while (i7 < arrayList.size()) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                                            width2 = CFG.PADDING + i5;
                                                                            height3 += height2;
                                                                            i6++;
                                                                        }
                                                                        i8 = height3;
                                                                        int i61114 = width2;
                                                                        int i71117 = i6;
                                                                        ArrayList arrayList13 = arrayList;
                                                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i61114, i8 + CFG.PADDING, true));
                                                                        width2 = i61114 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                                        i7++;
                                                                        height3 = i8;
                                                                        i6 = i71117;
                                                                        arrayList = arrayList13;
                                                                    }
                                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                                }
                                                                if (i3 == arrayList3.size()) {
                                                                    int i71118 = CFG.PADDING + height3;
                                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i71118, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i71118;
                                                                }
                                                                int iMin11 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin11)));
                                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin11, arrayList3, true, false);
                                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                                }
                                                            }
                                                        } catch (Exception e21) {
                                                            e = e21;
                                                        }
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("Alliance"), Images.alliance, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                }
                                                i2 = 0;
                                                if (Game.getCiv(iActiveCivID).diplomacy.truce.size() > 0) {
                                                    i32 = i + buttonWidth;
                                                    width9 = CFG.PADDING + i32;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > width12) {
                                                            width9 = CFG.PADDING + i32;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i511 = width9;
                                                        i33 = i2;
                                                        i34 = height3;
                                                        int i512 = i32;
                                                        arrayList3.add(new AnonymousClass11(diplomacyData2.iCivID, i511, i34 + CFG.PADDING, true));
                                                        width9 = i511 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i34;
                                                        i2 = i33;
                                                        i32 = i512;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("Truce"), Images.truce, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.defensivePact.size() > 0) {
                                                    i29 = i + buttonWidth;
                                                    width8 = CFG.PADDING + i29;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > width12) {
                                                            width8 = CFG.PADDING + i29;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i513 = width8;
                                                        i30 = i2;
                                                        i31 = height3;
                                                        int i631 = i29;
                                                        arrayList3.add(new AnonymousClass12(diplomacyData3.iCivID, i513, i31 + CFG.PADDING, true));
                                                        width8 = i513 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i31;
                                                        i2 = i30;
                                                        i29 = i631;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("DefensivePact"), Images.defensivePact, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.guarantee.size() > 0) {
                                                    i26 = i + buttonWidth;
                                                    width7 = CFG.PADDING + i26;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > width12) {
                                                            width7 = CFG.PADDING + i26;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i6218 = width7;
                                                        i27 = i2;
                                                        i28 = height3;
                                                        int i6219 = i26;
                                                        arrayList3.add(new AnonymousClass13(diplomacyData4.iCivID, i6218, i28 + CFG.PADDING, true));
                                                        width7 = i6218 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i28;
                                                        i2 = i27;
                                                        i26 = i6219;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                                                    i23 = i + buttonWidth;
                                                    width6 = CFG.PADDING + i23;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                                            width6 = CFG.PADDING + i23;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i62110 = width6;
                                                        i24 = i2;
                                                        i25 = height3;
                                                        int i62111 = i23;
                                                        arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i62110, i25 + CFG.PADDING, true));
                                                        width6 = i62110 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i25;
                                                        i2 = i24;
                                                        i23 = i62111;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                                                    i20 = i + buttonWidth;
                                                    width5 = CFG.PADDING + i20;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                                            width5 = CFG.PADDING + i20;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i62112 = width5;
                                                        i21 = i2;
                                                        i22 = height3;
                                                        int i62113 = i20;
                                                        arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i62112, i22 + CFG.PADDING, true));
                                                        width5 = i62112 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i22;
                                                        i2 = i21;
                                                        i20 = i62113;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                arrayList2 = new ArrayList();
                                                while (i12 < Game.getCivsSize()) {
                                                    if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                        arrayList2.add(Integer.valueOf(i12));
                                                    }
                                                }
                                                if (arrayList2.size() > 0) {
                                                    i13 = i + buttonWidth;
                                                    width4 = CFG.PADDING + i13;
                                                    i14 = i2;
                                                    i15 = 0;
                                                    while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW && i15 < arrayList2.size()) {
                                                        size2 = arrayList2.size() - 1;
                                                        i16 = 0;
                                                        while (size2 > 0) {
                                                            str2 = str3;
                                                            i3 = size;
                                                            if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                i16 = size2;
                                                            }
                                                            size2--;
                                                            str3 = str2;
                                                            size = i3;
                                                        }
                                                        i3 = size;
                                                        str2 = str3;
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                                                            width4 = CFG.PADDING + i13;
                                                            height3 += height2;
                                                            i14++;
                                                        }
                                                        i17 = height3;
                                                        int i71119 = width4;
                                                        i18 = i14;
                                                        int iIntValue7 = ((Integer) arrayList2.get(i16)).intValue();
                                                        int i711110 = i17 + CFG.PADDING;
                                                        int i711111 = i13;
                                                        i19 = i17;
                                                        int i86 = i16;
                                                        arrayList3.add(new AnonymousClass16(iIntValue7, i71119, i711110, true));
                                                        width4 = i71119 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        arrayList2.remove(i86);
                                                        i15++;
                                                        str3 = str2;
                                                        size = i3;
                                                        i14 = i18;
                                                        height3 = i19;
                                                        i13 = i711111;
                                                    }
                                                    i3 = size;
                                                    str2 = str3;
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                } else {
                                                    i3 = size;
                                                    str2 = str3;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                                                    i9 = i + buttonWidth;
                                                    width3 = CFG.PADDING + i9;
                                                    while (r7.hasNext()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                                                            width3 = CFG.PADDING + i9;
                                                            height3 += height2;
                                                            i2++;
                                                        }
                                                        int i61115 = width3;
                                                        i10 = i2;
                                                        i11 = height3;
                                                        int i61116 = i9;
                                                        arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i61115, i11 + CFG.PADDING, true));
                                                        width3 = i61115 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        height3 = i11;
                                                        i2 = i10;
                                                        i9 = i61116;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                    i2 = 0;
                                                }
                                                arrayList = new ArrayList();
                                                for (i4 = 1; i4 < Game.getCivsSize(); i4++) {
                                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0 && Game.getCiv(i4).diplomacy.militaryAccess.containsKey(Integer.valueOf(iActiveCivID))) {
                                                        arrayList.add(Integer.valueOf(i4));
                                                    }
                                                }
                                                if (arrayList.size() > 0) {
                                                    i5 = i + buttonWidth;
                                                    width2 = CFG.PADDING + i5;
                                                    i6 = i2;
                                                    i7 = 0;
                                                    while (i7 < arrayList.size()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                                            width2 = CFG.PADDING + i5;
                                                            height3 += height2;
                                                            i6++;
                                                        }
                                                        i8 = height3;
                                                        int i61117 = width2;
                                                        int i711112 = i6;
                                                        ArrayList arrayList14 = arrayList;
                                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i61117, i8 + CFG.PADDING, true));
                                                        width2 = i61117 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                        i7++;
                                                        height3 = i8;
                                                        i6 = i711112;
                                                        arrayList = arrayList14;
                                                    }
                                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                }
                                                if (i3 == arrayList3.size()) {
                                                    int i711113 = CFG.PADDING + height3;
                                                    arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i711113, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
                                                    height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i711113;
                                                }
                                                int iMin12 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
                                                arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin12)));
                                                initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin12, arrayList3, true, false);
                                                if (Game.menuManager.getColorPicker().getVisible()) {
                                                    ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
                                                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
                                                }
                                            }
                                            string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/descriptions/" + Game.getCiv(iActiveCivID).getCivTag() + ".txt").readString();
                                            if (Game.getCiv(iActiveCivID).diplomacy.defensivePact.size() > 0) {
                                                i29 = i + buttonWidth;
                                                width8 = CFG.PADDING + i29;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > width12) {
                                                        width8 = CFG.PADDING + i29;
                                                        height3 += height2;
                                                        i2++;
                                                    }
                                                    int i514 = width8;
                                                    i30 = i2;
                                                    i31 = height3;
                                                    int i632 = i29;
                                                    arrayList3.add(new AnonymousClass12(diplomacyData3.iCivID, i514, i31 + CFG.PADDING, true));
                                                    width8 = i514 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                    height3 = i31;
                                                    i2 = i30;
                                                    i29 = i632;
                                                }
                                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("DefensivePact"), Images.defensivePact, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                                i2 = 0;
                                            }
                                        } catch (Exception e22) {
                                            e = e22;
                                        }
                                        if (Game.getCiv(iActiveCivID).diplomacy.guarantee.size() > 0) {
                                            i26 = i + buttonWidth;
                                            width7 = CFG.PADDING + i26;
                                            while (r7.hasNext()) {
                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > width12) {
                                                    width7 = CFG.PADDING + i26;
                                                    height3 += height2;
                                                    i2++;
                                                }
                                                int i62114 = width7;
                                                i27 = i2;
                                                i28 = height3;
                                                int i62115 = i26;
                                                arrayList3.add(new AnonymousClass13(diplomacyData4.iCivID, i62114, i28 + CFG.PADDING, true));
                                                width7 = i62114 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                                height3 = i28;
                                                i2 = i27;
                                                i26 = i62115;
                                            }
                                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                            i2 = 0;
                                        }
                                    } catch (Exception e23) {
                                        e = e23;
                                    }
                                    if (Game.getCiv(iActiveCivID).diplomacy.alliance.size() > 0) {
                                        i35 = i + buttonWidth;
                                        width10 = CFG.PADDING + i35;
                                        i2 = 0;
                                        while (r7.hasNext()) {
                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > width12) {
                                                width10 = CFG.PADDING + i35;
                                                height3 += height2;
                                                i2++;
                                            }
                                            int i515 = width10;
                                            i36 = i2;
                                            i37 = height3;
                                            int i516 = i35;
                                            arrayList3.add(new AnonymousClass10(diplomacyData.iCivID, i515, i37 + CFG.PADDING, true));
                                            width10 = i515 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                            height3 = i37;
                                            i2 = i36;
                                            i35 = i516;
                                        }
                                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("Alliance"), Images.alliance, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                    }
                                    i2 = 0;
                                } catch (Exception e24) {
                                    e = e24;
                                    i2 = 0;
                                }
                                arrayList = new ArrayList();
                                while (i4 < Game.getCivsSize()) {
                                    if (Game.getCiv(i4).getNumOfProvinces() <= 0) {
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    i5 = i + buttonWidth;
                                    width2 = CFG.PADDING + i5;
                                    i6 = i2;
                                    i7 = 0;
                                    while (i7 < arrayList.size()) {
                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > width12) {
                                            width2 = CFG.PADDING + i5;
                                            height3 += height2;
                                            i6++;
                                        }
                                        i8 = height3;
                                        int i61118 = width2;
                                        int i711114 = i6;
                                        ArrayList arrayList15 = arrayList;
                                        arrayList3.add(new AnonymousClass18(((Integer) arrayList.get(i7)).intValue(), i61118, i8 + CFG.PADDING, true));
                                        width2 = i61118 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                        i7++;
                                        height3 = i8;
                                        i6 = i711114;
                                        arrayList = arrayList15;
                                    }
                                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i, height3 - (height2 * i6), buttonWidth, height2 * (i6 + 1), width, width12 - (i * 2)));
                                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                }
                            } catch (Exception e25) {
                                e = e25;
                            }
                            if (Game.getCiv(iActiveCivID).diplomacy.truce.size() > 0) {
                                i32 = i + buttonWidth;
                                width9 = CFG.PADDING + i32;
                                while (r7.hasNext()) {
                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > width12) {
                                        width9 = CFG.PADDING + i32;
                                        height3 += height2;
                                        i2++;
                                    }
                                    int i517 = width9;
                                    i33 = i2;
                                    i34 = height3;
                                    int i518 = i32;
                                    arrayList3.add(new AnonymousClass11(diplomacyData2.iCivID, i517, i34 + CFG.PADDING, true));
                                    width9 = i517 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                    height3 = i34;
                                    i2 = i33;
                                    i32 = i518;
                                }
                                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("Truce"), Images.truce, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                                i2 = 0;
                            }
                        } catch (Exception e26) {
                            e = e26;
                        }
                        if (Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.size() > 0) {
                            i20 = i + buttonWidth;
                            width5 = CFG.PADDING + i20;
                            while (r7.hasNext()) {
                                if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > width12) {
                                    width5 = CFG.PADDING + i20;
                                    height3 += height2;
                                    i2++;
                                }
                                int i62116 = width5;
                                i21 = i2;
                                i22 = height3;
                                int i62117 = i20;
                                arrayList3.add(new AnonymousClass15(diplomacyData6.iCivID, i62116, i22 + CFG.PADDING, true));
                                width5 = i62116 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                                height3 = i22;
                                i2 = i21;
                                i20 = i62117;
                            }
                            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                            height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                            i2 = 0;
                        }
                    } catch (Exception e27) {
                        e = e27;
                    }
                    if (Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.size() > 0) {
                        i23 = i + buttonWidth;
                        width6 = CFG.PADDING + i23;
                        while (r7.hasNext()) {
                            if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > width12) {
                                width6 = CFG.PADDING + i23;
                                height3 += height2;
                                i2++;
                            }
                            int i62118 = width6;
                            i24 = i2;
                            i25 = height3;
                            int i62119 = i23;
                            arrayList3.add(new AnonymousClass14(diplomacyData5.iCivID, i62118, i25 + CFG.PADDING, true));
                            width6 = i62118 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                            height3 = i25;
                            i2 = i24;
                            i23 = i62119;
                        }
                        arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                        height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                        i2 = 0;
                    }
                } catch (Exception e28) {
                    e = e28;
                }
                arrayList2 = new ArrayList();
                while (i12 < Game.getCivsSize()) {
                    if (Game.getCiv(i12).diplomacy.getRelation(iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                        arrayList2.add(Integer.valueOf(i12));
                    }
                }
                if (arrayList2.size() > 0) {
                    i13 = i + buttonWidth;
                    width4 = CFG.PADDING + i13;
                    i14 = i2;
                    i15 = 0;
                    while (i15 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                        size2 = arrayList2.size() - 1;
                        i16 = 0;
                        while (size2 > 0) {
                            str2 = str3;
                            i3 = size;
                            if (Game.getCiv(((Integer) arrayList2.get(i16)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                i16 = size2;
                            }
                            size2--;
                            str3 = str2;
                            size = i3;
                        }
                        i3 = size;
                        str2 = str3;
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width12) {
                            width4 = CFG.PADDING + i13;
                            height3 += height2;
                            i14++;
                        }
                        i17 = height3;
                        int i711115 = width4;
                        i18 = i14;
                        int iIntValue8 = ((Integer) arrayList2.get(i16)).intValue();
                        int i711116 = i17 + CFG.PADDING;
                        int i711117 = i13;
                        i19 = i17;
                        int i87 = i16;
                        arrayList3.add(new AnonymousClass16(iIntValue8, i711115, i711116, true));
                        width4 = i711115 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.remove(i87);
                        i15++;
                        str3 = str2;
                        size = i3;
                        i14 = i18;
                        height3 = i19;
                        i13 = i711117;
                    }
                    i3 = size;
                    str2 = str3;
                    arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("FriendlyCivilizations"), Images.heart, i, height3 - (height2 * i14), buttonWidth, height2 * (i14 + 1), width, width12 - (i * 2)));
                    height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                    i2 = 0;
                } else {
                    i3 = size;
                    str2 = str3;
                }
            } catch (Exception e29) {
                e = e29;
                i3 = size;
                str2 = str3;
            }
            if (Game.getCiv(iActiveCivID).diplomacy.militaryAccess.size() > 0) {
                i9 = i + buttonWidth;
                width3 = CFG.PADDING + i9;
                while (r7.hasNext()) {
                    if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > width12) {
                        width3 = CFG.PADDING + i9;
                        height3 += height2;
                        i2++;
                    }
                    int i61119 = width3;
                    i10 = i2;
                    i11 = height3;
                    int i611110 = i9;
                    arrayList3.add(new AnonymousClass17(diplomacyData7.iCivID, i61119, i11 + CFG.PADDING, true));
                    width3 = i61119 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    height3 = i11;
                    i2 = i10;
                    i9 = i611110;
                }
                arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i, height3 - (height2 * i2), buttonWidth, height2 * (i2 + 1), width, width12 - (i * 2)));
                height3 += Math.max(height2, arrayList3.get(arrayList3.size() - 1).getHeight());
                i2 = 0;
            }
        } catch (Exception e30) {
            e = e30;
        }
        str = string;
        if (str.length() > 0) {
            arrayList3.add(new AnonymousClass8(str, i43, height8, i49));
            height8 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        }
        buttonHeight = height8;
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).NEW_GAME_ADVANTAGES) {
            advantagesSmall = InGame_CivilizationAdvantages.getAdvantagesSmall(iActiveCivID);
            if (advantagesSmall.size() > 0) {
                buttonWidth2 = (width12 / 2) - (((Button_Advantage3.getButtonWidth() * advantagesSmall.size()) + (CFG.PADDING * (advantagesSmall.size() - 1))) / 2);
                while (advantagesSmall.size() > 0) {
                    size3 = advantagesSmall.size();
                    i41 = 0;
                    while (i42 < size3) {
                        if (CFG.compareAlphabetic_TwoString(advantagesSmall.get(i41).getTextToDraw(), advantagesSmall.get(i42).getTextToDraw())) {
                            i41 = i42;
                        }
                    }
                    advantagesSmall.get(i41).setPosX(buttonWidth2);
                    advantagesSmall.get(i41).setPosY(buttonHeight);
                    arrayList3.add(advantagesSmall.get(i41));
                    buttonWidth2 += arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    advantagesSmall.remove(i41);
                }
                buttonHeight += Button_Advantage3.getButtonHeight() + CFG.PADDING;
            }
        }
        arrayList3.add(new Text_Title_v2Center(Game.lang.get("Diplomacy"), -1, Images.boxTitleBORDERWIDTH, buttonHeight, width12 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        height = buttonHeight + arrayList3.get(arrayList3.size() - 1).getHeight();
        size = arrayList3.size();
        buttonWidth = (i49 - (ButtonFlag_Diplomacy.getButtonWidth() * 3)) - (CFG.PADDING * 2);
        height2 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (CFG.PADDING * 2);
        width = ImageManager.getImage(Images.relations).getWidth() + (CFG.PADDING * 2);
        i = Images.boxTitleBORDERWIDTH;
        if (Game.getCiv(iActiveCivID).getPuppetOfCivID() != Game.getCiv(iActiveCivID).getCivID()) {
            int i519 = CFG.PADDING;
            arrayList3.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).getPuppetOfCivID(), i + buttonWidth + CFG.PADDING, height + CFG.PADDING, true, true, false));
            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get(Game_Ages.getLord()), Images.vassal, i, height, buttonWidth, height2, width, width12 - (i * 2)));
            height += height2;
        }
        if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
            i38 = i + buttonWidth;
            width11 = i38 + CFG.PADDING;
            i39 = 0;
            i40 = 0;
            while (i40 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > width12) {
                    width11 = i38 + CFG.PADDING;
                    height += height2;
                    i39++;
                }
                int i520 = width11;
                arrayList3.add(new AnonymousClass9(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i40).c, i520, height + CFG.PADDING, true, true, true));
                width11 = i520 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                i40++;
                i39 = i39;
            }
            arrayList3.add(new TextIcon2_HorizontalSplit(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i, height - (height2 * i39), buttonWidth, height2 * (i39 + 1), width, width12 - (i * 2)));
            height += height2;
        }
        height3 = height;
        if (i3 == arrayList3.size()) {
            int i711118 = CFG.PADDING + height3;
            arrayList3.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, i, i711118, width12 - (i * 2), CFG.BUTTON_HEIGHT2));
            height3 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + i711118;
        }
        int iMin13 = Math.min((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 3)) - i45) - height4, Math.min(height3, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3)));
        arrayList3.add(new Empty(0, 0, width12, Math.max(height3, iMin13)));
        initMenu(new MenuTitleIMG(str2, true, false, Images.title1Red), i44, height4 + i45, width12, iMin13, arrayList3, true, false);
        if (Game.menuManager.getColorPicker().getVisible()) {
            ColorPicker.ACTIVE_CIV_ID = iActiveCivID;
            Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(iActiveCivID).getR(), Game.getCiv(iActiveCivID).getG(), Game.getCiv(iActiveCivID).getB());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (NewGame.lTime + 500 >= CFG.currentTimeMillis) {
            i = (i + getWidth()) - ((int) (getWidth() * ((CFG.currentTimeMillis - NewGame.lTime) / 500.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.getCiv(iActiveCivID).getCivName());
    }
}
