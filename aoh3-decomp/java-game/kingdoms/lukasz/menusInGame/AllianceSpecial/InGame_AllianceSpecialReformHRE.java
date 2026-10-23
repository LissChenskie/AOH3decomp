package aoc.kingdoms.lukasz.menusInGame.AllianceSpecial;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter_HRE;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.Button_HRE_Reform;
import aoc.kingdoms.lukasz.menu_element.button.Button_HRE_Reform_Red;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_AllianceSpecialReformHRE extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int allianceID;
    public static long lTime;
    public static int reformID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$1, reason: invalid class name */
    class AnonymousClass1 extends Button_HRE_Reform {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == InGame_AllianceSpecialReformHRE.allianceID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceSpecial(InGame_AllianceSpecialReformHRE.allianceID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecialReformHRE.allianceID, this.reformID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$2, reason: invalid class name */
    class AnonymousClass2 extends Button_HRE_Reform_Red {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == InGame_AllianceSpecialReformHRE.allianceID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceSpecial(InGame_AllianceSpecialReformHRE.allianceID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecialReformHRE.allianceID, this.reformID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$3, reason: invalid class name */
    class AnonymousClass3 extends TextBonus {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[InGame_AllianceSpecialReformHRE.reformID];
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$4, reason: invalid class name */
    class AnonymousClass4 extends TextBonus {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$5, reason: invalid class name */
    class AnonymousClass5 extends TextBonus {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("DiplomacyPoints") + ATsAGKCnv.GWOXIBVnYHg, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(this.sText2, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(this.imageID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$6, reason: invalid class name */
    class AnonymousClass6 extends TextBonus {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(this.sText2, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(this.imageID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == InGame_AllianceSpecialReformHRE.allianceID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceSpecial(InGame_AllianceSpecialReformHRE.allianceID);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_AllianceSpecialReformHRE.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecialReformHRE.allianceID, InGame_AllianceSpecialReformHRE.reformID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return super.getClickable() && Game.player.iCivID == Game.alliancesSpecial.get(InGame_AllianceSpecialReformHRE.allianceID).iLeaderCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG_FlagCenter_HRE {
        AnonymousClass9(int i, String str, String str2, boolean z, boolean z2, int i2) {
            super(i, str, str2, z, z2, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter_HRE
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_AllianceSpecialReformHRE.lTime;
        }
    }

    public InGame_AllianceSpecialReformHRE(int i, int i2) {
        String str;
        ArrayList arrayList = new ArrayList();
        allianceID = i;
        reformID = i2;
        int i3 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i4 = CFG.BUTTON_WIDTH;
        int i5 = Renderer.boxBGExtraY;
        int i6 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i7 = CFG.PADDING * 2;
        int i8 = reformID;
        int i9 = Game.alliancesSpecial.get(allianceID).iReformsPassed;
        String str2 = gpVDKipRURuzw.bHdqPKTpssb;
        if (i8 == i9) {
            String str3 = Game.lang.get("Reform" + reformID);
            String str4 = Game.lang.get("Reform" + reformID + str2);
            int i10 = i3 + CFG.PADDING;
            int i11 = (width - (i3 * 2)) - (CFG.PADDING * 2);
            int i12 = reformID;
            str = "Reform";
            arrayList.add(new AnonymousClass1(str3, str4, i10, i7, i11, i12, i12));
        } else {
            str = "Reform";
            String str5 = Game.lang.get(str + reformID);
            String str6 = Game.lang.get(str + reformID + str2);
            int i13 = i3 + CFG.PADDING;
            int i14 = (width - (i3 * 2)) - (CFG.PADDING * 2);
            int i15 = reformID;
            arrayList.add(new AnonymousClass2(str5, str6, i13, i7, i14, i15, i15));
        }
        int height2 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("ReformRequirements"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        if (GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[reformID] >= 0) {
            arrayList.add(new AnonymousClass3(Game.lang.get("RequiredTechnology") + ": ", "" + TechnologyTree.lTechnology.get(GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[reformID]).Name, Game_Calendar.IMG_TECHNOLOGY, i3, height3, width - (i3 * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (GameValues.hre.HRE_REFORM_COST_GOLD[reformID] > 0.0f) {
            arrayList.add(new AnonymousClass4(Game.lang.get("Gold") + ": ", ((String) r14) + CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_GOLD[reformID], 100), Images.gold, i3, height3, width - (i3 * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i16 = width - (i3 * 2);
        int i17 = height3;
        arrayList.add(new AnonymousClass5("", ((String) r14) + CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_DIPLOMACY[reformID], 10), Images.diplomacy, i3, height3, (i16 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new AnonymousClass6("", "" + CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_LEGACY[reformID], 10), Images.legacy, CFG.PADDING + i3 + ((i16 - ((CFG.PADDING / 2) * 2)) / 2), i17, (i16 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height4 = i17 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass7(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i3, height4, (i16 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass8(Game.lang.get("PassReform"), CFG.FONT_REGULAR, -1, i3 + CFG.PADDING + ((i16 - ((CFG.PADDING / 2) * 2)) / 2), height4, (i16 - ((CFG.PADDING / 2) * 2)) / 2, !HREManager.passReform_ReformsPassed(allianceID, reformID)));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height5, CFG.GAME_HEIGHT - (height * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(height5, iMin)));
        String str7 = str;
        initMenu(new AnonymousClass9(allianceID, Game.lang.get(str7 + reformID), Game.lang.get(str7), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        if (Game.alliancesSpecial.get(allianceID).iLeaderCivID == Game.player.iCivID) {
            if (HREManager.passReform_Legacy(allianceID, reformID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_LEGACY[reformID], 100), Images.legacy);
                return;
            }
            if (HREManager.passReform_Diplomacy(allianceID, reformID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_DIPLOMACY[reformID], 100), Images.diplomacy);
                return;
            }
            if (HREManager.passReform_RequiredTech(allianceID, reformID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("RequiredTechnology") + ": ", TechnologyTree.lTechnology.get(GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[reformID]).Name, Game_Calendar.IMG_TECHNOLOGY);
                return;
            }
            if (HREManager.passReform(allianceID, reformID)) {
                Game.menuManager.rebuildInGame_AllianceSpecial(allianceID);
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get(QefTqRjwAJmEDy.cONzssNePRRmasS), Game.lang.get("Reform" + reformID));
                InGame_Info.imgID = Images.infoCrown;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
