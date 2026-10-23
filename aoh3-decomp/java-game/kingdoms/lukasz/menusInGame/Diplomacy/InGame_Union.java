package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Union extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_UNION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame_ImageSparks {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Union.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SendProposal"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.union, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_UNION_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG {
        AnonymousClass12(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Union.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Union.iCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_Union.iCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_Union.iCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_Union.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonRuler_Diplomacy {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$8, reason: invalid class name */
    class AnonymousClass8 extends TextBonus {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_UNION_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.HOVER_POSITIVE;
        }
    }

    public InGame_Union(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        iCivID = i;
        int width2 = ImageManager.getImage(Images.unionBig).getWidth() + (CFG.PADDING * 4);
        int i5 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i5 * 2);
        int i6 = width / 2;
        int i7 = width2 / 2;
        int width3 = (((i6 - i2) - (CFG.PADDING * 2)) - i7) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i8 = i5 + i4;
        arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, ((i6 - i7) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i8, true));
        int i9 = i6 + i7;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID, (CFG.PADDING * 2) + i9, i8, true));
        int i10 = iCivID;
        arrayList.add(new Text_Static_ID(i10, Game.getCiv(i10).getCivName(), CFG.FONT_REGULAR, -1, i9 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i4, width3, height3));
        arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i2, i4, width3, height3));
        int i11 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Images.unionBig, i2, i4, i11, height3, width2));
        int height4 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i2 + (CFG.PADDING * 2);
        int i12 = (i6 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height4, (i12 * 2) + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit), Images.regimentsLimit, buttonWidth, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, height4 + ((CFG.PADDING + buttonHeight) * 2), i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass5("" + CFG.getShortNumber(Game.getCiv(iCivID).iRegimentsLimit), Images.regimentsLimit, CFG.PADDING + buttonWidth + i12, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass6("" + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, buttonWidth + CFG.PADDING + i12, height4 + ((CFG.PADDING + buttonHeight) * 2), i12, buttonHeight, width4, 0));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(iCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, CFG.PADDING + i2, height4));
        arrayList.add(new AnonymousClass7(iCivID, ((width - i2) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height4));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_UNION_COST, 100), Images.diplomacy, i2, height5, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f)));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass9(Game.lang.get("Tip") + ": " + Game.lang.get("ImproveRelations"), CFG.FONT_REGULAR, -1, i2, height6, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i13 = i2 + CFG.PADDING;
        int i14 = width - (i13 * 2);
        arrayList.add(new AnonymousClass10(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i13, height7, (i14 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass11(Game.lang.get("SendProposal"), CFG.FONT_REGULAR, -1, i13 + CFG.PADDING + ((i14 - ((CFG.PADDING / 2) * 2)) / 2), height7, (i14 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.union));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height8, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height8, height8)));
        initMenu(new AnonymousClass12(Game.lang.get("FormUnion"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i6, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height) / 2)), width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).fDiplomacy < GameValues.diplomacy.DIPLOMACY_UNION_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("Cost") + ", " + Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_UNION_COST, 100), Images.diplomacy);
            return;
        }
        Game.getCiv(Game.player.iCivID).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_UNION_COST;
        if (DiplomacyManager.respondToUnion(Game.player.iCivID, iCivID)) {
            unionAccepted(iCivID);
        } else {
            unionRefused(iCivID);
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(iCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_UNION);
    }

    public static void unionAccepted(int i) {
        if (Game.player.playerStats4.unionTags.isEmpty()) {
            Game.player.playerStats4.unionTags.add(Game.getCiv(Game.player.iCivID).getCivTag());
        }
        Game.player.playerStats4.unionTags.add(Game.getCiv(i).getCivTag());
        Game.player.playerStats4.flagsGenerated = false;
        for (int numOfProvinces = Game.getCiv(iCivID).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            try {
                int provinceID = Game.getCiv(iCivID).getProvinceID(numOfProvinces);
                Game.getProvince(provinceID).setCivID(Game.player.iCivID);
                Game.getProvince(provinceID).addCore(Game.player.iCivID);
                Game.getProvince(provinceID).removeArmyCivID(iCivID);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            if (i2 != iCivID && Game.getCiv(i2).getPuppetOfCivID() == iCivID) {
                Game.getCiv(i2).setPuppetOfCivID(Game.player.iCivID);
            }
        }
        InGame_Info.iCivID = i;
        InGame_Info.iCivID2 = Game.player.iCivID;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("Union") + ": " + Game.lang.get("OurProposalWasAccepted"), Game.getCiv(i).getCivName());
        InGame_Info.imgID = Images.infoDiplomacy;
    }

    public static void unionRefused(int i) {
        InGame_Info.iCivID = i;
        InGame_Info.iCivID2 = Game.player.iCivID;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("Union") + ": " + Game.lang.get("Refused"), Game.getCiv(i).getCivName());
        InGame_Info.imgID = Images.infoDiplomacy;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 3) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 3) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        DiplomacyManager.updateAnimationTime();
    }
}
