package aoc.kingdoms.lukasz.menusInGame.Court;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.button.Button_Capital;
import aoc.kingdoms.lukasz.menu_element.button.Button_MilitaryAcademy;
import aoc.kingdoms.lukasz.menu_element.button.Button_MilitaryAcademyForGenerals;
import aoc.kingdoms.lukasz.menu_element.button.Button_SupremeCourt;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageFull;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Government extends Menu {
    public static List<Image> lFlags = new ArrayList();
    public static boolean reloadFlags = true;
    public static int modeID = 1;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Government.modeID == 0) {
                InGame_Court_Government.modeID = 1;
            } else {
                InGame_Court_Government.modeID = 0;
            }
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Government_SavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRect_Active {
        int id;
        float lastValue;

        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
            this.lastValue = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionUnrest(this.id)) {
                Game.menuManager.rebuildInGame_Government_SavePos();
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 45) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverUnrest(this.id, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.getProvince(this.id).getRevulutionaryRisk() != this.lastValue) {
                this.lastValue = Game.getProvince(this.id).getRevulutionaryRisk();
                setText("" + CFG.getPrecision2(this.lastValue, 100) + "%");
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 45) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.setVisibleInGame_Court(false);
                Game.menuManager.rebuildInGame_Revolutions();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonCurrentSituation {
        int id;

        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRect_Active {
        int id;
        int lastValue;

        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Liberation"), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.revolutionRisk, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.revolutionManager.declareIndependence_TurnsLeft(this.id)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.revolutionManager.declareIndependence_TurnsLeft(this.id) != this.lastValue) {
                int iDeclareIndependence_TurnsLeft = Game.revolutionManager.declareIndependence_TurnsLeft(this.id);
                this.lastValue = iDeclareIndependence_TurnsLeft;
                if (iDeclareIndependence_TurnsLeft == 0) {
                    setText(aBEBOpwLZcQFCZ.qtSK);
                } else {
                    setText("" + Game.lang.get("DaysX", this.lastValue));
                }
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonFlag_Formable {
        AnonymousClass14(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Court(false);
            InGame_FormCiv.GO_BACK_TO_COURT = true;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_RulerTitle {
        int id;

        AnonymousClass15(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Court(false);
            InGame_FormCiv.GO_BACK_TO_COURT = true;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.id;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsRectIMG_Bonuses {
        int id;

        AnonymousClass16(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Court(false);
            InGame_FormCiv.GO_BACK_TO_COURT = true;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.id;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(Game.player.iCivID).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Capital") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsRect_Active {
        AnonymousClass18(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.menuManager.addToastGold(Game.lang.get("ChooseAProvince"), Images.provinces);
            InGame_MoveCapital_PopUp.toProvinceID = -1;
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_MOVE_CAPITAL);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MoveCapital"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass19(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Title_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Government.modeID == 0) {
                InGame_Court_Government.modeID = 1;
            } else {
                InGame_Court_Government.modeID = 0;
            }
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Government_SavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$20, reason: invalid class name */
    class AnonymousClass20 extends Button_Capital {
        AnonymousClass20(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$21, reason: invalid class name */
    class AnonymousClass21 extends Text_StaticBG_RulerTitle {
        AnonymousClass21(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Court_Government.getHoverCapitalCity();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass22(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getCapitalLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass23(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getCapitalLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass24(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getCapitalLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass25(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$26, reason: invalid class name */
    class AnonymousClass26 extends Button_MilitaryAcademy {
        AnonymousClass26(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademy();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$27, reason: invalid class name */
    class AnonymousClass27 extends Text_StaticBG_RulerTitle {
        AnonymousClass27(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy.getHoverMilitaryAcademy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass28(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass29(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonIdeology_Court {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 10) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_ChangeIdeology();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.ideologiesManager.getHoverIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID(), true, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$30, reason: invalid class name */
    class AnonymousClass30 extends ButtonStatsRectIMG {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("RegimentsLimit"));
            String str = MQYGMkZOAcS.pcvzirk;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(sbAppend.append(str).toString()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.player.iCivID != Game.getCiv(Game.player.iCivID).getPuppetOfCivID()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassal") + str + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_VASSAL * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total > Game.getCiv(Game.player.iCivID).iRegimentsLimit ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass31(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$32, reason: invalid class name */
    class AnonymousClass32 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass32(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$33, reason: invalid class name */
    class AnonymousClass33 extends Button_MilitaryAcademyForGenerals {
        AnonymousClass33(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), Images.general);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 3) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademyForGenerals();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$34, reason: invalid class name */
    class AnonymousClass34 extends Text_StaticBG_RulerTitle {
        AnonymousClass34(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), Images.general);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 3) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademyForGenerals();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Generals.getHoverMilitaryAcademyForGenerals();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass35(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass36(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() == 0 ? Colors.getColorNeutral(getIsHovered(), getIsHovered()) : super.getColorBonus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass37(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$38, reason: invalid class name */
    class AnonymousClass38 extends Button_SupremeCourt {
        AnonymousClass38(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), Images.stability);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 4) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeSupremeCourt();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$39, reason: invalid class name */
    class AnonymousClass39 extends Text_StaticBG_RulerTitle {
        AnonymousClass39(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + fTNtCctcBZcqKK.hMEN, "" + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), Images.stability);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 4) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeSupremeCourt();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Court_IncreaseTaxEfficiency.getHoverSupremeCourt();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonReligion2 {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 49) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_ChangeReligion();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$40, reason: invalid class name */
    class AnonymousClass40 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass40(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), Images.stability);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 4) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeSupremeCourt();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.getHoverCorruption();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getCorruption() > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        float value;

        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.value = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).haveACore && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).coreCreation == null) {
                    InGame_CourtOptions2.actionCores(InGame_CourtOptions2.idCores);
                    return;
                }
            }
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).religionConversion == null) {
                    InGame_CourtOptions2.actionReligion(InGame_CourtOptions2.idReligion);
                    return;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHover_CivStability(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).civStability_LostFrom100 > 0.0f ? Colors.getColorNegative(false, getIsHovered()) : Colors.getColorPositive(false, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.value != Game.getCiv(Game.player.iCivID).civStability_LostFrom100) {
                setText2("" + CFG.getPrecision2((1.0f - Game.getCiv(Game.player.iCivID).civStability_LostFrom100) * 100.0f, 100) + "%");
                this.value = Game.getCiv(Game.player.iCivID).civStability_LostFrom100;
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop()) {
                if (z) {
                    if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                        Game.mapModes.setActiveViewID(Game.mapModes.MODE_CIV_STABILITY_HOVER);
                    }
                } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_STABILITY_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses {
        float value;

        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.value = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHover_WarWeariness(Game.player.iCivID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getWarWeariness() < 0.01f ? Colors.getColorPositive(false, getIsHovered()) : Colors.getColorNegative(false, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.value != Game.getCiv(Game.player.iCivID).getWarWeariness()) {
                setText2("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getWarWeariness(), 100) + "%");
                this.value = Game.getCiv(Game.player.iCivID).getWarWeariness();
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRect_Active {
        AnonymousClass7(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.warWeariness.WW_REDUCE_COST_LEGACY) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.warWeariness.WW_REDUCE_COST_LEGACY, 100), Images.legacy);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fGold < GameValues.warWeariness.WW_REDUCE_COST_GOLD) {
                Game.menuManager.addToastInsufficient(Game.lang.get(QefTqRjwAJmEDy.CBpZHVu) + ": ", CFG.getPrecision2(GameValues.warWeariness.WW_REDUCE_COST_GOLD, 100), Images.gold);
            } else if (Game.getCiv(Game.player.iCivID).getWarWeariness() < 0.01f) {
                Game.menuManager.addToastInsufficient(Game.lang.get("WarWeariness") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getWarWeariness(), 1) + "%", Images.weariness);
            } else if (Game.getCiv(Game.player.iCivID).reduceWarWeariness()) {
                Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Reduce") + ": ", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("WarWeariness"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.weariness, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WarWeariness") + ": ", CFG.getPrecision2(GameValues.warWeariness.WW_REDUCE, 100), Images.weariness, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", CFG.getPrecision2(GameValues.warWeariness.WW_REDUCE_COST_GOLD, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(nEtnPpUF.uAuinfcaFueQ) + ": ", CFG.getPrecision2(GameValues.warWeariness.WW_REDUCE_COST_LEGACY, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Bonuses {
        float value;

        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.value = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHover_AggressiveExpansion(Game.player.iCivID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getCiv(Game.player.iCivID).getAggressiveExpansion() < 0.01f ? Colors.getColorPositive(false, getIsHovered()) : Colors.getColorNegative(false, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.value != Game.getCiv(Game.player.iCivID).getAggressiveExpansion()) {
                setText2("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAggressiveExpansion(), 100));
                this.value = Game.getCiv(Game.player.iCivID).getAggressiveExpansion();
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonCurrentSituation {
        int id;

        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionUnrest(this.id)) {
                Game.menuManager.rebuildInGame_Government_SavePos();
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 45) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverUnrest(this.id, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0a11  */
    /* JADX WARN: Code duplicated, block: B:135:0x0a23 A[Catch: Exception -> 0x0b4c, TRY_LEAVE, TryCatch #4 {Exception -> 0x0b4c, blocks: (B:133:0x0a13, B:135:0x0a23), top: B:184:0x0a13 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0b51  */
    public InGame_Court_Government() {
        int i;
        int height;
        int i2;
        String str;
        String str2;
        int height2;
        String str3;
        int i3;
        int i4;
        String str4;
        int height3;
        int i5;
        int buttonHeight;
        ArrayList arrayList = new ArrayList();
        int i6 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height4 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i8 = CFG.PADDING;
        int i9 = Images.boxTitleBORDERWIDTH;
        int i10 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int buttonHeight2 = (Button_Capital.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int i11 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) / 2.0f);
        int i12 = (int) ((((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 3) / 5.0f);
        int i13 = ((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) - i12;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        arrayList.add(new AnonymousClass1(Game.lang.get("Government"), Images.boxTitleBORDERWIDTH, 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, modeID == 0));
        int i14 = i7;
        arrayList.add(new AnonymousClass2(Game.lang.get("Capital"), Images.boxTitleBORDERWIDTH + ((width - (Images.boxTitleBORDERWIDTH * 2)) / 2), 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, modeID == 1));
        int height5 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int buttonHeight3 = i6 + Button_Capital.getButtonHeight() + CFG.PADDING;
        if (modeID == 0) {
            int i15 = height5 + CFG.PADDING;
            int i16 = i15 - CFG.PADDING;
            int i17 = width - i6;
            List<MenuElement> menuElements = Game.ideologiesManager.getMenuElements(Game.getCiv(Game.player.iCivID).getIdeologyID(), buttonHeight3, i15, i17 - buttonHeight3, buttonHeight2);
            for (int i18 = 0; i18 < menuElements.size(); i18++) {
                if (i18 > 2) {
                    menuElements.get(i18).setPosX(i6);
                    menuElements.get(i18).setWidth(width - (i6 * 2));
                }
                arrayList.add(menuElements.get(i18));
            }
            arrayList.add(new AnonymousClass3(Game.getCiv(Game.player.iCivID).getIdeologyID(), i6, i15, Button_Capital.getButtonHeight(), Button_Capital.getButtonHeight()));
            int size = arrayList.size();
            int iMax = 0;
            for (int i19 = 0; i19 < size; i19++) {
                iMax = Math.max(iMax, arrayList.get(i19).getPosY() + arrayList.get(i19).getHeight());
            }
            int i20 = iMax + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i16, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), i20 - i16));
            int i21 = i20 + CFG.PADDING;
            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Religion"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i21, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
            int height6 = i21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int buttonHeight4 = i6 + Button_Capital.getButtonHeight() + CFG.PADDING;
            int i22 = height6 + CFG.PADDING;
            int i23 = i22 - CFG.PADDING;
            menuElements.clear();
            int i24 = i17 - buttonHeight4;
            List<MenuElement> menuElements2 = Game.religionManager.getMenuElements(Game.getCiv(Game.player.iCivID).getReligionID(), buttonHeight4, i22, i24, buttonHeight2);
            if (menuElements2.isEmpty()) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, buttonHeight4, i22, i24, (Button_Capital.getButtonHeight() * 3) / 5));
                i2 = 0;
            } else if (menuElements2.size() == 1) {
                i2 = 0;
                menuElements2.get(0).setHeight((Button_Capital.getButtonHeight() * 3) / 5);
                arrayList.add(menuElements2.get(0));
            } else {
                i2 = 0;
                for (int i25 = 0; i25 < menuElements2.size(); i25++) {
                    if (i25 > 2) {
                        menuElements2.get(i25).setPosX(i6);
                        menuElements2.get(i25).setWidth(width - (i6 * 2));
                    }
                    arrayList.add(menuElements2.get(i25));
                }
            }
            arrayList.add(new AnonymousClass4(Game.getCiv(Game.player.iCivID).getReligionID(), i6, i22, Button_Capital.getButtonHeight(), (Button_Capital.getButtonHeight() * 3) / 5));
            int size2 = arrayList.size();
            int iMax2 = i2;
            for (int i26 = iMax2; i26 < size2; i26++) {
                iMax2 = Math.max(iMax2, arrayList.get(i26).getPosY() + arrayList.get(i26).getHeight());
            }
            int i27 = iMax2 + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i23, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), i27 - i23));
            int i28 = i27 + CFG.PADDING;
            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Stability"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i28, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
            int height7 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i28;
            int i29 = width - (i6 * 2);
            String str5 = ": ";
            int i30 = i6;
            int i31 = i2;
            arrayList.add(new AnonymousClass5(Game.lang.get("CivilizationStability") + ": ", "" + CFG.getPrecision2((1.0f - Game.getCiv(Game.player.iCivID).civStability_LostFrom100) * 100.0f, 100) + "%", Images.civStability, i6, height7, i29, i10, ImageManager.getImage(Images.capital).getWidth() + (CFG.PADDING * 2)));
            int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass6(Game.lang.get("WarWeariness") + str5, "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getWarWeariness(), 100) + "%", Images.weariness, i30, height8, i12, i10, ImageManager.getImage(Images.capital).getWidth() + (CFG.PADDING * 2)));
            arrayList.add(new AnonymousClass7(Game.lang.get("Reduce"), i30 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height8, i13, i10));
            int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass8(Game.lang.get("AggressiveExpansion") + str5, "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAggressiveExpansion(), 100), Images.aggressiveExpansion, i30, height9, i29, i10, ImageManager.getImage(Images.capital).getWidth() + (CFG.PADDING * 2)));
            int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i32 = Images.boxTitleBORDERWIDTH;
            List<Integer> revolutionaryProvinces_Sorted = Game.revolutionManager.getRevolutionaryProvinces_Sorted(Game.player.iCivID);
            String str6 = " / ";
            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("RevolutionaryMovements"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height10, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), (revolutionaryProvinces_Sorted.size() > 0 ? "" + revolutionaryProvinces_Sorted.size() : "") + str6 + Game.getCiv(Game.player.iCivID).getNumOfProvinces()));
            int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (revolutionaryProvinces_Sorted.size() > 0) {
                int i33 = i31;
                while (i33 < revolutionaryProvinces_Sorted.size() && i33 < GameValues.rebels.GOVERNMENT_VIEW_PROVINCES_UNREST_LIMIT) {
                    String str7 = str5;
                    int i34 = i33;
                    arrayList.add(new AnonymousClass9(Game.getProvince(revolutionaryProvinces_Sorted.get(i33).intValue()).getProvinceName(), Images.revolutionRisk, i30, height11, (i29 - CFG.PADDING) - CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    arrayList.get(arrayList.size() - 1).setCurrent(revolutionaryProvinces_Sorted.get(i34).intValue());
                    arrayList.add(new AnonymousClass10("" + CFG.getPrecision2(Game.getProvince(revolutionaryProvinces_Sorted.get(i34).intValue()).getRevulutionaryRisk(), 100) + "%", i17 - CFG.BUTTON_WIDTH, height11, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, CFG.FONT_BOLD_SMALL));
                    arrayList.get(arrayList.size() - 1).setCurrent(revolutionaryProvinces_Sorted.get(i34).intValue());
                    height11 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i33 = i34 + 1;
                    str5 = str7;
                    str6 = str6;
                }
                str = str6;
                String str8 = str5;
                if (revolutionaryProvinces_Sorted.size() > 2) {
                    str5 = str8;
                    arrayList.add(new AnonymousClass11(Game.lang.get("More") + str5 + (revolutionaryProvinces_Sorted.size() - 2), CFG.FONT_REGULAR, -1, i30, height11, i29, i10));
                    height11 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str5 = str8;
                }
                height2 = height11;
                str2 = "None";
            } else {
                str = str6;
                str2 = "None";
                arrayList.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR, -1, i30, height11, i29, i10));
                height2 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            try {
                ArrayList arrayList2 = new ArrayList();
                for (int i35 = i31; i35 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i35++) {
                    if (Game.getProvinceData(Game.getCiv(Game.player.iCivID).getProvinceID(i35)).getOccupiedByCivID() < 0) {
                        arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i35)));
                    }
                }
                String str9 = str;
                try {
                    String str10 = arrayList2.size() + str9 + Game.getCiv(Game.player.iCivID).getNumOfProvinces();
                    try {
                        str4 = str9;
                        i4 = width;
                        try {
                            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Rebels") + str5 + Game.lang.get("OccupiedProvinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), str10));
                            int height12 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height2;
                            try {
                                if (arrayList2.size() > 0) {
                                    ArrayList arrayList3 = new ArrayList();
                                    ArrayList arrayList4 = new ArrayList();
                                    for (int i36 = i31; i36 < arrayList2.size(); i36++) {
                                        try {
                                            arrayList4.add(Integer.valueOf(Game.revolutionManager.declareIndependence_TurnsLeft(((Integer) arrayList2.get(i36)).intValue())));
                                        } catch (Exception e) {
                                            e = e;
                                            height2 = height12;
                                            str3 = str5;
                                            i3 = i29;
                                            CFG.exceptionStack(e);
                                            height3 = height2;
                                            arrayList.add(new Text_Title_v2Center(Game.lang.get(IwYCCQBuFGwl.jGW), -1, Images.boxTitleBORDERWIDTH, height3, i4 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                                            height = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                            if (Game.getCiv(Game.player.iCivID).sTagsCanForm.size() > 0) {
                                                i5 = i31;
                                                while (i5 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size()) {
                                                    try {
                                                        buttonHeight = height + CFG.PADDING;
                                                        try {
                                                            int i37 = i14;
                                                            arrayList.add(new AnonymousClass14(i5, i37, buttonHeight));
                                                            int width3 = i37 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                                            int buttonHeight5 = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
                                                            int i38 = (i4 - width3) - i37;
                                                            arrayList.add(new AnonymousClass15(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i5)), width3, buttonHeight, i38, buttonHeight5));
                                                            arrayList.get(arrayList.size() - 1).setCurrent(i5);
                                                            String str11 = str3;
                                                            String str12 = str4;
                                                            i14 = i37;
                                                            arrayList.add(new AnonymousClass16(Game.lang.get("Provinces") + str11, Game.player.formableCivs.get(i5).getControlledProvinces(Game.player.iCivID) + str12 + Game.player.formableCivs.get(i5).getProvincesSize_WithoutNeutral(), Images.provinces, width3, buttonHeight + buttonHeight5 + CFG.PADDING, i38, buttonHeight5, width2));
                                                            arrayList.get(arrayList.size() - 1).setCurrent(i5);
                                                            buttonHeight += ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
                                                            int i39 = i3;
                                                            int i40 = i30;
                                                            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i40, buttonHeight - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i39, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
                                                            i5++;
                                                            i30 = i40;
                                                            i3 = i39;
                                                            str3 = str11;
                                                            str4 = str12;
                                                            height = CFG.PADDING + buttonHeight;
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            height = buttonHeight;
                                                            CFG.exceptionStack(e);
                                                            i = i4;
                                                            int i41 = height;
                                                            int i42 = height4 + InGame_CourtOptions.menuH;
                                                            int iMin = Math.min(i41, (CFG.GAME_HEIGHT - i42) - (CFG.PADDING * 3));
                                                            int i43 = i;
                                                            arrayList.add(new Empty(0, 0, i43, Math.max(i41, iMin)));
                                                            initMenu(null, otherMenuPosX, i42, i43, iMin, arrayList, false, false);
                                                            this.drawScrollPositionAlways = false;
                                                            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Government"));
                                                            loadFormableFlags();
                                                        }
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                    }
                                                }
                                            } else {
                                                arrayList.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR, -1, i30, height, i3, i10));
                                                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                            }
                                            i = i4;
                                            int i44 = height;
                                            int i45 = height4 + InGame_CourtOptions.menuH;
                                            int iMin2 = Math.min(i44, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3));
                                            int i46 = i;
                                            arrayList.add(new Empty(0, 0, i46, Math.max(i44, iMin2)));
                                            initMenu(null, otherMenuPosX, i45, i46, iMin2, arrayList, false, false);
                                            this.drawScrollPositionAlways = false;
                                            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Government"));
                                            loadFormableFlags();
                                        }
                                    }
                                    while (arrayList2.size() > 0 && arrayList3.size() < GameValues.rebels.GOVERNMENT_VIEW_PROVINCES_OCCUPIED_LIMIT) {
                                        int size3 = arrayList2.size();
                                        int i47 = i31;
                                        for (int i48 = 1; i48 < size3; i48++) {
                                            if (((Integer) arrayList4.get(i47)).intValue() > ((Integer) arrayList4.get(i48)).intValue()) {
                                                i47 = i48;
                                            }
                                        }
                                        arrayList3.add((Integer) arrayList2.get(i47));
                                        arrayList2.remove(i47);
                                        arrayList4.remove(i47);
                                    }
                                    int size4 = arrayList3.size();
                                    height3 = height12;
                                    int i49 = i31;
                                    while (i49 < size4) {
                                        try {
                                            int i50 = i29;
                                            try {
                                                i3 = i50;
                                                int i51 = size4;
                                                int i52 = i49;
                                                str3 = str5;
                                                ArrayList arrayList5 = arrayList3;
                                                try {
                                                    arrayList.add(new AnonymousClass12(Game.getProvince(((Integer) arrayList3.get(i49)).intValue()).getProvinceName(), Images.revolutionRisk, i30, height3, (i50 - CFG.PADDING) - CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                                                    arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList5.get(i52)).intValue());
                                                    arrayList.add(new AnonymousClass13("" + Game.lang.get("DaysX", Game.revolutionManager.declareIndependence_TurnsLeft(((Integer) arrayList5.get(i52)).intValue())), i17 - CFG.BUTTON_WIDTH, height3, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, CFG.FONT_BOLD_SMALL));
                                                    arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList5.get(i52)).intValue());
                                                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                    i49 = i52 + 1;
                                                    arrayList3 = arrayList5;
                                                    size4 = i51;
                                                    i29 = i3;
                                                    str5 = str3;
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    height2 = height3;
                                                    CFG.exceptionStack(e);
                                                    height3 = height2;
                                                    arrayList.add(new Text_Title_v2Center(Game.lang.get(IwYCCQBuFGwl.jGW), -1, Images.boxTitleBORDERWIDTH, height3, i4 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                                                    height = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                    if (Game.getCiv(Game.player.iCivID).sTagsCanForm.size() > 0) {
                                                        i5 = i31;
                                                        while (i5 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size()) {
                                                            buttonHeight = height + CFG.PADDING;
                                                            int i310 = i14;
                                                            arrayList.add(new AnonymousClass14(i5, i310, buttonHeight));
                                                            int width4 = i310 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                                            int buttonHeight6 = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
                                                            int i311 = (i4 - width4) - i310;
                                                            arrayList.add(new AnonymousClass15(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i5)), width4, buttonHeight, i311, buttonHeight6));
                                                            arrayList.get(arrayList.size() - 1).setCurrent(i5);
                                                            String str13 = str3;
                                                            String str14 = str4;
                                                            i14 = i310;
                                                            arrayList.add(new AnonymousClass16(Game.lang.get("Provinces") + str13, Game.player.formableCivs.get(i5).getControlledProvinces(Game.player.iCivID) + str14 + Game.player.formableCivs.get(i5).getProvincesSize_WithoutNeutral(), Images.provinces, width4, buttonHeight + buttonHeight6 + CFG.PADDING, i311, buttonHeight6, width2));
                                                            arrayList.get(arrayList.size() - 1).setCurrent(i5);
                                                            buttonHeight += ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
                                                            int i312 = i3;
                                                            int i410 = i30;
                                                            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i410, buttonHeight - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i312, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
                                                            i5++;
                                                            i30 = i410;
                                                            i3 = i312;
                                                            str3 = str13;
                                                            str4 = str14;
                                                            height = CFG.PADDING + buttonHeight;
                                                        }
                                                    } else {
                                                        arrayList.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR, -1, i30, height, i3, i10));
                                                        height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                    }
                                                    i = i4;
                                                    int i411 = height;
                                                    int i412 = height4 + InGame_CourtOptions.menuH;
                                                    int iMin3 = Math.min(i411, (CFG.GAME_HEIGHT - i412) - (CFG.PADDING * 3));
                                                    int i413 = i;
                                                    arrayList.add(new Empty(0, 0, i413, Math.max(i411, iMin3)));
                                                    initMenu(null, otherMenuPosX, i412, i413, iMin3, arrayList, false, false);
                                                    this.drawScrollPositionAlways = false;
                                                    Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Government"));
                                                    loadFormableFlags();
                                                }
                                            } catch (Exception e5) {
                                                e = e5;
                                                i3 = i50;
                                                str3 = str5;
                                            }
                                        } catch (Exception e6) {
                                            e = e6;
                                            str3 = str5;
                                            i3 = i29;
                                        }
                                    }
                                    str3 = str5;
                                    i3 = i29;
                                } else {
                                    str3 = str5;
                                    i3 = i29;
                                    try {
                                        arrayList.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR, -1, i30, height12, i3, i10));
                                        height3 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                    } catch (Exception e7) {
                                        e = e7;
                                        height2 = height12;
                                        CFG.exceptionStack(e);
                                        height3 = height2;
                                    }
                                }
                            } catch (Exception e8) {
                                e = e8;
                                str3 = str5;
                                i3 = i29;
                            }
                        } catch (Exception e9) {
                            e = e9;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        str3 = str5;
                        str4 = str9;
                        i3 = i29;
                        i4 = width;
                    }
                } catch (Exception e11) {
                    e = e11;
                    str3 = str5;
                    str4 = str9;
                    i3 = i29;
                    i4 = width;
                }
            } catch (Exception e12) {
                e = e12;
                str3 = str5;
                i3 = i29;
                i4 = width;
                str4 = str;
            }
            arrayList.add(new Text_Title_v2Center(Game.lang.get(IwYCCQBuFGwl.jGW), -1, Images.boxTitleBORDERWIDTH, height3, i4 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (Game.getCiv(Game.player.iCivID).sTagsCanForm.size() > 0) {
                i5 = i31;
                while (i5 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size()) {
                    buttonHeight = height + CFG.PADDING;
                    int i313 = i14;
                    arrayList.add(new AnonymousClass14(i5, i313, buttonHeight));
                    int width5 = i313 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    int buttonHeight7 = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
                    int i314 = (i4 - width5) - i313;
                    arrayList.add(new AnonymousClass15(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i5)), width5, buttonHeight, i314, buttonHeight7));
                    arrayList.get(arrayList.size() - 1).setCurrent(i5);
                    String str15 = str3;
                    String str16 = str4;
                    i14 = i313;
                    arrayList.add(new AnonymousClass16(Game.lang.get("Provinces") + str15, Game.player.formableCivs.get(i5).getControlledProvinces(Game.player.iCivID) + str16 + Game.player.formableCivs.get(i5).getProvincesSize_WithoutNeutral(), Images.provinces, width5, buttonHeight + buttonHeight7 + CFG.PADDING, i314, buttonHeight7, width2));
                    arrayList.get(arrayList.size() - 1).setCurrent(i5);
                    buttonHeight += ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
                    int i315 = i3;
                    int i414 = i30;
                    arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i414, buttonHeight - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i315, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
                    i5++;
                    i30 = i414;
                    i3 = i315;
                    str3 = str15;
                    str4 = str16;
                    height = CFG.PADDING + buttonHeight;
                }
            } else {
                arrayList.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR, -1, i30, height, i3, i10));
                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            i = i4;
        } else {
            arrayList.add(new AnonymousClass17(Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getProvinceName() : "--", Images.capital, i6, height5, i11, i10, ImageManager.getImage(Images.capital).getWidth(), 0));
            arrayList.add(new AnonymousClass18(Game.lang.get("MoveCapital"), i6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height5, i11, i10));
            int height13 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), Game.lang.get("Cost") + TGqtTWl.Ptxgg);
            int width6 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + ImageManager.getImage(Images.gold).getWidth();
            int i53 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
            arrayList.add(new AnonymousClass19(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getCapital_Cost(Game.player.iCivID), 1), Images.gold, (width - CFG.PADDING) - width6, height13 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i53) / 2.0f)), width6, i53, ImageManager.getImage(Images.gold).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new Text_Title_v2(Game.lang.get("CapitalCity"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height13, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            int i54 = height14 - CFG.PADDING;
            arrayList.add(new AnonymousClass20(i14, height14));
            int width7 = i14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i55 = (width - width7) - i14;
            arrayList.add(new AnonymousClass21(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), width7, height14, i55, buttonHeight2));
            int height16 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass22(Game.lang.get("MonthlyIncome") + ": ", (Game.getCapital_Income(Game.player.iCivID) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCapital_Income(Game.player.iCivID), 100), Images.gold, width7, height16, i55, buttonHeight2, width2));
            int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass23(Game.lang.get("MaximumResearch") + ": ", "" + CFG.getPrecision2(Game.getCapital_MaxResearch(Game.player.iCivID), 100), Game_Calendar.IMG_TECHNOLOGY, width7, height17, i55, buttonHeight2, width2));
            int i56 = width - (i6 * 2);
            arrayList.add(new AnonymousClass24(Game.lang.get("ProvincesMaintenance") + ": ", "" + CFG.getPrecision2(Game.getCapital_ProvincesMaintenance(Game.player.iCivID) * 100.0f, 100) + "%", Images.provinces, i6, height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i56, buttonHeight2, width2));
            arrayList.get(arrayList.size() - 1).getHeight();
            int i57 = CFG.PADDING;
            int height18 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i6, i54, i56, (height18 - i54) - CFG.PADDING));
            arrayList.add(new AnonymousClass25(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getMilitaryAcademy_Cost(Game.player.iCivID), 1), Images.gold, (width - CFG.PADDING) - width6, height18 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i53) / 2.0f)), width6, i53, ImageManager.getImage(Images.gold).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new Text_Title_v2(Game.lang.get("MilitaryAcademy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height18, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            int i58 = height19 - CFG.PADDING;
            arrayList.add(new AnonymousClass26(i14, height19));
            int width8 = i14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int width9 = ImageManager.getImage(Images.gold).getWidth();
            int i59 = (width - width8) - i6;
            int buttonHeight8 = (Button_MilitaryAcademy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
            arrayList.add(new AnonymousClass27(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), width8, height19, i59, buttonHeight8));
            int height21 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass28(Game.lang.get("UnitsAttack") + ": ", (Game.getMilitaryAcademy_Attack(Game.player.iCivID) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_Attack(Game.player.iCivID), 100), Images.attack, width8, height21, i59, buttonHeight8, width9));
            int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass29(Game.lang.get("UnitsDefense") + ": ", (Game.getMilitaryAcademy_Defense(Game.player.iCivID) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_Defense(Game.player.iCivID), 100), Images.defense, width8, height22, i59, buttonHeight8, width9));
            int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass30("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, Images.regimentsLimit, (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, height20, (width8 - ((CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH)) - CFG.PADDING, buttonHeight8, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth()));
            arrayList.add(new AnonymousClass31(Game.lang.get("RegimentsLimit") + ": ", (Game.getMilitaryAcademy_RegimentsLimit(Game.player.iCivID) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_RegimentsLimit(Game.player.iCivID), 1), Images.regimentsLimit, width8, height23, i59, buttonHeight8, width9));
            arrayList.get(arrayList.size() - 1).getHeight();
            int i60 = CFG.PADDING;
            int height24 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i6, i58, i56, (height24 - i58) - CFG.PADDING));
            arrayList.add(new AnonymousClass32(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_Cost(Game.player.iCivID), 1), Images.gold, (width - CFG.PADDING) - width6, height24 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i53) / 2.0f)), width6, i53, ImageManager.getImage(Images.gold).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new Text_Title_v2(Game.lang.get("MilitaryAcademyForGenerals"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height24, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            int i61 = height25 - CFG.PADDING;
            arrayList.add(new AnonymousClass33(i6, height25));
            int width10 = i6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass34(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), width10, height25, i59, buttonHeight8));
            int height27 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = width;
            arrayList.add(new AnonymousClass35(Game.lang.get("GeneralsAttack") + ": ", (Game.getMilitaryAcademyForGenerals_GeneralAttack(Game.player.iCivID) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_GeneralAttack(Game.player.iCivID), 100), Images.attack, width10, height27, i59, buttonHeight8, width9));
            arrayList.add(new AnonymousClass36(Game.lang.get("GeneralsDefense") + ": ", (Game.getMilitaryAcademyForGenerals_GeneralDefense(Game.player.iCivID) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_GeneralDefense(Game.player.iCivID), 100), Images.defense, width10, height27 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i59, buttonHeight8, width9));
            arrayList.get(arrayList.size() - 1).getHeight();
            int i62 = CFG.PADDING;
            int i63 = height26 + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i6, i61, i56, (i63 - i61) - CFG.PADDING));
            arrayList.add(new AnonymousClass37(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getSupremeCourt_Cost(Game.player.iCivID), 1), Images.gold, (i - CFG.PADDING) - width6, i63 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i53) / 2.0f)), width6, i53, ImageManager.getImage(Images.gold).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new Text_Title_v2(Game.lang.get("SupremeCourt"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i63, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height28 = i63 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            int i64 = height28 - CFG.PADDING;
            arrayList.add(new AnonymousClass38(i14, height28));
            int width11 = i14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int width12 = ImageManager.getImage(Images.gold).getWidth();
            int i65 = (i - width11) - i6;
            int buttonHeight9 = (Button_SupremeCourt.getButtonHeight() - (CFG.PADDING * 2)) / 3;
            arrayList.add(new AnonymousClass39(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), width11, height28, i65, buttonHeight9));
            int height30 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass40(Game.lang.get("Corruption") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getCorruption() * 100.0f, 100) + "%", Images.corruption, width11, height30, i65, buttonHeight9, width12));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("CorruptionPerLevel") + ": ", "" + CFG.getPrecision2(GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * 100.0f, 100) + "%", Images.corruption, width11, height30 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i65, buttonHeight9, width12));
            arrayList.get(arrayList.size() - 1).getHeight();
            int i66 = CFG.PADDING;
            height = height29 + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i6, i64, i56, (height - i64) - CFG.PADDING));
        }
        int i415 = height;
        int i416 = height4 + InGame_CourtOptions.menuH;
        int iMin4 = Math.min(i415, (CFG.GAME_HEIGHT - i416) - (CFG.PADDING * 3));
        int i417 = i;
        arrayList.add(new Empty(0, 0, i417, Math.max(i415, iMin4)));
        initMenu(null, otherMenuPosX, i416, i417, iMin4, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Government"));
        loadFormableFlags();
    }

    public static MenuElement_Hover getHoverCapitalCity() {
        return getHoverCapitalCity(true, Game.player.iCivID);
    }

    public static MenuElement_Hover getHoverCapitalCity(boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("CapitalCity"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.buildingCapitalBig.get(Math.min(Game.getCiv(i).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue(), 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(i).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (Game.getCapital_Income(i) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCapital_Income(i), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getCapital_Income(i) > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumResearch") + ": ", (Game.getCapital_MaxResearch(i) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCapital_MaxResearch(i), 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getCapital_MaxResearch(i) > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvincesMaintenance") + ": ", (Game.getCapital_ProvincesMaintenance(i) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCapital_ProvincesMaintenance(i) * 100.0f, 100) + "%", Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getCapital_ProvincesMaintenance(i) < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z) {
            if (Game.getCiv(i).getCapitalLevel() >= Game.getCapital_MaxLvl(i)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(fiRhHJntP.DjKkQPwsJEZ), CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeCapitalCity"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCapital_Cost(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncomePerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.capital.CAPITAL_INCOME_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumResearch") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvincesMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.capital.CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        return new MenuElement_Hover(arrayList);
    }

    public static final void loadFlag(String str) {
        try {
            if (FileManager.loadFile("gfx/flagsXH/" + str + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + str + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flagsH/" + str + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + str + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flagsH/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flags/" + str + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + str + ".png")), Texture.TextureFilter.Nearest));
            } else if (FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Nearest));
            } else {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png")), Texture.TextureFilter.Nearest));
            }
        } catch (Exception unused) {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/ran.png")), Texture.TextureFilter.Nearest));
        }
    }

    public static final void loadFormableFlags() {
        if (reloadFlags) {
            for (int i = 0; i < lFlags.size(); i++) {
                lFlags.get(i).dispose();
            }
            lFlags.clear();
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size(); i2++) {
                loadFlag(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i2));
            }
            reloadFlags = false;
        }
    }

    public static final void upgradeCapital() {
        if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", QefTqRjwAJmEDy.MTKyLgtlcno + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getCapital_Cost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getCapital_Cost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).upgradeCapitalCity()) {
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("CapitalCity"), Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID));
            InGame_Info.imgID = Images.infoCrown;
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
