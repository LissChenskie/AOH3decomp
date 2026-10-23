package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Image;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ReleaseAVassal extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static ReleaseVassalData releaseVassalData = new ReleaseVassalData();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID_Special {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", getText(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID_Special {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.removeProvince(getCurrent());
            Game.getProvince(getCurrent()).peaceTreatyIsTaken = false;
            Game.menuManager.rebuildInGame_ReleaseAVassal_SavePos();
            Game.menuManager.addToastPositive("", Game.lang.get(ATsAGKCnv.jdt), Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Remove"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG {
        AnonymousClass12(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ReleaseAVassal.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_POPULATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.releaseVassalData.changeGovernment = !InGame_ReleaseAVassal.releaseVassalData.changeGovernment;
            setImageID(InGame_ReleaseAVassal.releaseVassalData.changeGovernment ? Images.v : Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("GovernmentChange"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.releaseVassalData.changeReligion = !InGame_ReleaseAVassal.releaseVassalData.changeReligion;
            setImageID(InGame_ReleaseAVassal.releaseVassalData.changeReligion ? Images.v : Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DemandReligionConversion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.releaseVassalData.liberateVassal = !InGame_ReleaseAVassal.releaseVassalData.liberateVassal;
            setImageID(InGame_ReleaseAVassal.releaseVassalData.liberateVassal ? Images.v : Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getLiberateAVassal()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.releaseVassalData.playAsVassal = !InGame_ReleaseAVassal.releaseVassalData.playAsVassal;
            setImageID(InGame_ReleaseAVassal.releaseVassalData.playAsVassal ? Images.v : Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getPlayAsAReleasedVassal()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame_Image {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$7$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str, int i, int i2) {
                super(str, i, i2);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                Game.ideologiesManager.changeGovernmentType(this.id, this.id2, true);
                Game.getCiv(this.id).fGold += GameValues.government.CHANGE_GOVERNMENT_COST;
                Game.getCiv(this.id).fLegacy += GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY;
            }
        }

        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            LanguageManager languageManager;
            String vassal;
            if (InGame_ReleaseAVassal.releaseVassalData.lProvinces.size() <= 0) {
                Game.menuManager.addToast_Error(Game.lang.get("Provinces") + ": " + InGame_ReleaseAVassal.releaseVassalData.lProvinces.size(), Images.provinces);
                return;
            }
            if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getNumOfProvinces() > 0) {
                Game.menuManager.addToast_Error(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCivName() + ": " + Game.lang.get("Provinces") + ": " + Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getNumOfProvinces(), Images.provinces);
                return;
            }
            for (int size = InGame_ReleaseAVassal.releaseVassalData.lProvinces.size() - 1; size >= 0; size--) {
                if (Game.getProvince(InGame_ReleaseAVassal.releaseVassalData.lProvinces.get(size).intValue()).getCivID() == InGame_ReleaseAVassal.releaseVassalData.iLordID) {
                    Game.getProvince(InGame_ReleaseAVassal.releaseVassalData.lProvinces.get(size).intValue()).setCivID(InGame_ReleaseAVassal.releaseVassalData.iCivID);
                }
            }
            if (InGame_ReleaseAVassal.releaseVassalData.liberateVassal) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).setPuppetOfCivID(InGame_ReleaseAVassal.releaseVassalData.iCivID);
            } else {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).setPuppetOfCivID(InGame_ReleaseAVassal.releaseVassalData.iLordID);
            }
            if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fGold < 25.0f) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fGold = 25.0f;
            }
            if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fLegacy < 25.0f) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fLegacy = 25.0f;
            }
            if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fDiplomacy < 25.0f) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).fDiplomacy = 25.0f;
            }
            for (int i = 0; i < Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).lTechResearched.size(); i++) {
                try {
                    if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).lTechResearched.get(i).booleanValue() && !Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getTechResearched(i)) {
                        Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).addTechnology(i, true);
                    }
                } catch (Exception unused) {
                }
            }
            if (InGame_ReleaseAVassal.releaseVassalData.changeReligion && Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getReligionID() != Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).getReligionID()) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).setReligionID_UpdateBonuses(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).getReligionID());
            }
            if (InGame_ReleaseAVassal.releaseVassalData.changeGovernment && Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getIdeologyID() != Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).getIdeologyID()) {
                Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + InGame_ReleaseAVassal.releaseVassalData.iCivID + "_" + Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).getIdeologyID(), InGame_ReleaseAVassal.releaseVassalData.iCivID, Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iLordID).getIdeologyID()));
            }
            if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCapitalProvinceID()).getCivID() != InGame_ReleaseAVassal.releaseVassalData.iCivID) {
                Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).moveCapital_ToLargestProvince();
            } else if (Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCapitalProvinceID()).getCivID() == InGame_ReleaseAVassal.releaseVassalData.iCivID) {
                Game.getProvince(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCapitalProvinceID()).setIsCapital(true);
            }
            if (InGame_ReleaseAVassal.releaseVassalData.playAsVassal) {
                Game.player.iCivID = InGame_ReleaseAVassal.releaseVassalData.iCivID;
                NewGame.clearPlayerData();
                Game.player.currSituation.updateCurrentSituation();
                ProvinceDrawArmy.updateArmyImgID();
                Game.menuManager.rebuildInGame_Right();
                Game.menuManager.rebuildInGame_Wars();
                Game.menuManager.rebuildInGame_Messages();
                Game.menuManager.rebuildInGame_Notifications();
            }
            CivilizationRanking.buildCivilizationRanking();
            InGame_Info.iCivID = InGame_ReleaseAVassal.releaseVassalData.iLordID;
            InGame_Info.iCivID2 = InGame_ReleaseAVassal.releaseVassalData.iCivID;
            MenuManager menuManager = Game.menuManager;
            if (InGame_ReleaseAVassal.releaseVassalData.liberateVassal) {
                languageManager = Game.lang;
                vassal = "Liberation";
            } else {
                languageManager = Game.lang;
                vassal = Game_Ages.getVassal();
            }
            menuManager.rebuildInGame_Info(languageManager.get(vassal), Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getCivName());
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RELEASE_VASSAL) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            if (Game.menuManager.getVisibleInGame_Court()) {
                return;
            }
            InGame.action1();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getReleaseAVassal()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = 0; i < InGame_ReleaseAVassal.releaseVassalData.lProvinces.size(); i++) {
                Game.getProvince(InGame_ReleaseAVassal.releaseVassalData.lProvinces.get(i).intValue()).peaceTreatyIsTaken = false;
            }
            InGame_ReleaseAVassal.releaseVassalData.lProvinces.clear();
            Game.menuManager.addToastPositive("", Game.lang.get("Done"), Images.v);
            Game.menuManager.rebuildInGame_ReleaseAVassal_SavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Reset"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Flag {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CenterToProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.center, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return InGame_ReleaseAVassal.releaseVassalData.iCivID;
        }
    }

    public static class ReleaseVassalData {
        public int iCivID;
        public int iLordID;
        public List<Integer> lProvinces = new ArrayList();
        public boolean playAsVassal = false;
        public boolean changeGovernment = true;
        public boolean changeReligion = true;
        public boolean liberateVassal = false;

        public ReleaseVassalData() {
        }

        public ReleaseVassalData(int i, int i2) {
            this.iLordID = i;
            this.iCivID = i2;
        }
    }

    public InGame_ReleaseAVassal() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT2 : CFG.BUTTON_HEIGHT;
        arrayList.add(new Text_Title_v2Center(Game.getCiv(releaseVassalData.iCivID).getCivName(), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i3 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + releaseVassalData.lProvinces.size()), Images.provinces, i, height2, i3, CFG.BUTTON_HEIGHT3, width2));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        long populationTotal = 0;
        for (int i4 = 0; i4 < releaseVassalData.lProvinces.size(); i4++) {
            populationTotal += (long) Game.getProvince(releaseVassalData.lProvinces.get(i4).intValue()).getPopulationTotal();
        }
        arrayList.add(new AnonymousClass2(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + populationTotal), Images.population, i, height3, i3, CFG.BUTTON_HEIGHT3, width2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("GovernmentChange"), releaseVassalData.changeGovernment ? Images.v : Images.x, i, height4, i3, i2, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 2), 0));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.lang.get("DemandReligionConversion"), releaseVassalData.changeReligion ? Images.v : Images.x, i, height5, i3, i2, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 2), 0));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get(Game_Ages.getLiberateAVassal()), releaseVassalData.liberateVassal ? Images.v : Images.x, i, height6, i3, i2, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 2), 0));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass6(Game.lang.get(Game_Ages.getPlayAsAReleasedVassal()), releaseVassalData.playAsVassal ? Images.v : Images.x, i, height7, i3, i2, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 2), 0));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass7(Game.lang.get(Game_Ages.getReleaseAVassal()), CFG.FONT_REGULAR, -1, i, height8, i3, CFG.BUTTON_HEIGHT2, true, Images.vassal));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Provinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height9, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ATsAGKCnv.YOMlspDxHgMZcY));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i5 = (int) ((i3 - (CFG.PADDING * 2)) * 0.25f);
        int i6 = (int) ((i3 - (CFG.PADDING * 2)) * 0.5f);
        if (CFG.isDesktop()) {
            int i7 = CFG.BUTTON_HEIGHT3;
        } else {
            int i8 = CFG.BUTTON_HEIGHT2;
        }
        arrayList.add(new AnonymousClass8(Game.lang.get("Reset"), Images.provinces, i, height10, i3, i2, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 2), 0));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i9 = 0;
        while (i9 < releaseVassalData.lProvinces.size()) {
            int i10 = height11;
            int i11 = i6;
            arrayList.add(new AnonymousClass9(Game.getProvince(releaseVassalData.lProvinces.get(i9).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, i10, i6, i2, releaseVassalData.lProvinces.get(i9).intValue()));
            arrayList.get(arrayList.size() - 1).setTypeOfElement(MenuElement_Type.BUTTON);
            int width3 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i;
            int i12 = i2;
            arrayList.add(new AnonymousClass10(CFG.getNumberWithSpaces("" + Game.getProvince(releaseVassalData.lProvinces.get(i9).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width3, i10, i5, i12, releaseVassalData.lProvinces.get(i9).intValue()));
            arrayList.add(new AnonymousClass11(Game.lang.get("Remove"), CFG.FONT_REGULAR_SMALL, -1, width3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i10, i5, i12, releaseVassalData.lProvinces.get(i9).intValue()));
            arrayList.get(arrayList.size() - 1).getWidth();
            int i13 = CFG.PADDING;
            height11 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i9++;
            i6 = i11;
        }
        int iMin = Math.min(height11, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height11, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get(Game_Ages.getVassal()), false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, true, true);
    }

    public static final void addProvince(int i) {
        if (Game.getProvince(i).getCivID() == releaseVassalData.iLordID) {
            for (int i2 = 0; i2 < releaseVassalData.lProvinces.size(); i2++) {
                if (releaseVassalData.lProvinces.get(i2).intValue() == i) {
                    return;
                }
            }
            releaseVassalData.lProvinces.add(Integer.valueOf(i));
        }
    }

    public static void buildData(int i, int i2) {
        ReleaseVassalData releaseVassalData2 = new ReleaseVassalData(i, i2);
        releaseVassalData = releaseVassalData2;
        releaseVassalData2.lProvinces = Game.getVassalsToRelease_Provinces(i, i2);
    }

    public static void buildData_MapMode(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            Game.getProvince(Game.getCiv(i).getProvinceID(i3)).peaceTreatyIsTaken = false;
        }
        for (int i4 = 0; i4 < releaseVassalData.lProvinces.size(); i4++) {
            Game.getProvince(releaseVassalData.lProvinces.get(i4).intValue()).peaceTreatyIsTaken = true;
        }
    }

    public static final void removeProvince(int i) {
        for (int i2 = 0; i2 < releaseVassalData.lProvinces.size(); i2++) {
            if (releaseVassalData.lProvinces.get(i2).intValue() == i) {
                releaseVassalData.lProvinces.remove(i2);
                return;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        super.actionCloseMenu();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }
}
