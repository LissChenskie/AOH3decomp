package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Intervene extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iCivID = 0;
    public static int iCivID2 = 0;
    public static long lTime = 0;
    public static String warKey = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Static_ID {
        AnonymousClass1(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Static_ID {
        AnonymousClass2(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon_Diplomacy {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_WAR;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame_ImageSparks {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Intervene.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("JoinAWar"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("JoinAWarAgainst") + ": ", Game.getCiv(InGame_Intervene.iCivID2).getCivName(), InGame_Intervene.iCivID2, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", "+" + CFG.getPrecision2(GameValues.diplomacy.INTERVENE_IN_WAR_IMPROVE_RELATIONS_VALUE, 10), Images.relationsUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG {
        AnonymousClass7(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Intervene.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    public InGame_Intervene(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        iCivID = i;
        iCivID2 = i2;
        int width2 = ImageManager.getImage(Images.interveneBig).getWidth() + (CFG.PADDING * 4);
        int i6 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i6 * 2);
        int i7 = width / 2;
        int i8 = width2 / 2;
        int width3 = (((i7 - i3) - (CFG.PADDING * 2)) - i8) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i9 = i6 + i5;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID, ((i7 - i8) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i9, true));
        int i10 = i7 + i8;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID2, (CFG.PADDING * 2) + i10, i9, true));
        int i11 = iCivID2;
        arrayList.add(new AnonymousClass1(i11, Game.getCiv(i11).getCivName(), CFG.FONT_REGULAR, -1, i10 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i5, width3, height3));
        int i12 = iCivID;
        arrayList.add(new AnonymousClass2(i12, Game.getCiv(i12).getCivName(), CFG.FONT_REGULAR, -1, i3, i5, width3, height3));
        int i13 = width - (i3 * 2);
        arrayList.add(new AnonymousClass3(Images.interveneBig, i3, i5, i13, height3, width2));
        int height4 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i14 = (i13 - CFG.PADDING) / 2;
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        arrayList.add(new AnonymousClass4("" + Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i3, height4, i14, i15, Game.player.iCivID));
        arrayList.add(new Text_StaticBG("---", CFG.FONT_REGULAR, -1, CFG.PADDING + i3 + i14, height4, i14, i15));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i16 = i3 + CFG.PADDING;
        int i17 = width - (i16 * 2);
        arrayList.add(new AnonymousClass5(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i16, height5, (i17 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass6(Game.lang.get("JoinAWar"), CFG.FONT_REGULAR, -1, i16 + CFG.PADDING + ((i17 - ((CFG.PADDING / 2) * 2)) / 2), height5, (i17 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.war));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height6, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height6, height6)));
        initMenu(new AnonymousClass7(Game.lang.get("InterveneInWar"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i7, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((height + iMin) / 2)), width, iMin, arrayList, false, true);
    }

    public static final void confirm() {
        try {
            if (WarManager.lWars.get(warKey).isAggressor(iCivID)) {
                WarManager.lWars.get(warKey).addAggressor(Game.player.iCivID);
                rebuildWar();
                DiplomacyManager.addMilitaryAccess(Game.player.iCivID, WarManager.lWars.get(warKey).lAggressors.get(0).iCivID);
            } else if (WarManager.lWars.get(warKey).isDefender(iCivID)) {
                WarManager.lWars.get(warKey).addDefender(Game.player.iCivID);
                rebuildWar();
                DiplomacyManager.addMilitaryAccess(Game.player.iCivID, WarManager.lWars.get(warKey).lDefenders.get(0).iCivID);
            }
            Game.getCiv(iCivID).diplomacy.setRelation(iCivID, Game.player.iCivID, GameValues.diplomacy.INTERVENE_IN_WAR_IMPROVE_RELATIONS_VALUE);
            Game.getCiv(Game.player.iCivID).diplomacy.setRelation(Game.player.iCivID, iCivID, GameValues.diplomacy.INTERVENE_IN_WAR_IMPROVE_RELATIONS_VALUE);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    public static void rebuildWar() {
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = iCivID2;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("InterveneInWar"), Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(iCivID2).getCivName());
        InGame_Info.imgID = Images.infoWar;
        if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
            Game.addSimpleTask(new AnonymousClass8("updateProvinceBorder"));
        }
        Game.addSimpleTask(new AnonymousClass9("rebuildInGame_Wars"));
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
