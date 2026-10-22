package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Rivals_End extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int endRivalryWithCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, Game.lang.get("Provinces") + ": " + Game.getCiv(this.iCivID).getNumOfProvinces()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Population") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getCiv(this.iCivID).getPopulationTotal()), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag
        public int getFlagCivID() {
            return this.iCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(Game.getCiv(InGame_Rivals_End.endRivalryWithCivID).getCapitalProvinceID());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Rivals_End.endRivalryWithCivID, Game.lang.get("Provinces") + ": " + Game.getCiv(InGame_Rivals_End.endRivalryWithCivID).getNumOfProvinces()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.getCiv(InGame_Rivals_End.endRivalryWithCivID).getCapitalProvinceID()).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.getColorNegative(false, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame_ImageSparks {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Rivals_End.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("EndRivalry") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + Game.getCiv(InGame_Rivals_End.endRivalryWithCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rivals, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Legacy") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.rivals.END_RIVALRY_COST_LEGACY, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Rivals_End.lTime;
        }
    }

    public InGame_Rivals_End() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i2 = CFG.PADDING * 2;
        int i3 = width - (i * 2);
        int buttonWidth = (i3 - ButtonFlag.getButtonWidth()) - (CFG.PADDING * 2);
        int buttonHeight = (ButtonFlag.getButtonHeight() - CFG.PADDING) / 2;
        arrayList.add(new AnonymousClass1(endRivalryWithCivID, i, i2, true));
        arrayList.add(new AnonymousClass2(Game.getCiv(endRivalryWithCivID).getCivName(), ButtonFlag.getButtonWidth() + i + (CFG.PADDING * 2), i2, buttonWidth, buttonHeight));
        arrayList.add(new AnonymousClass3(Game.lang.get("Legacy") + ": ", "" + CFG.getPrecision2(GameValues.rivals.END_RIVALRY_COST_LEGACY, 100), Images.legacy, ButtonFlag.getButtonWidth() + i + (CFG.PADDING * 2), i2 + buttonHeight + CFG.PADDING, buttonWidth, buttonHeight, ImageManager.getImage(Images.gold).getWidth()));
        int buttonHeight2 = i2 + ButtonFlag.getButtonHeight() + i2;
        arrayList.add(new AnonymousClass4(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, buttonHeight2, (i3 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass5(Game.lang.get("EndRivalry"), CFG.FONT_REGULAR, -1, i + CFG.PADDING + ((i3 - ((CFG.PADDING / 2) * 2)) / 2), buttonHeight2, (i3 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.rivals));
        int height3 = buttonHeight2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height3, height3)));
        initMenu(new AnonymousClass6(Game.lang.get("EndRivalry"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((height + iMin) / 2)), width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).fLegacy < Math.abs(GameValues.rivals.END_RIVALRY_COST_LEGACY)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.rivals.END_RIVALRY_COST_LEGACY, 100), Images.legacy);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(endRivalryWithCivID)) {
            Game.getCiv(Game.player.iCivID).diplomacy.removeRival(endRivalryWithCivID);
            Game.getCiv(Game.player.iCivID).fLegacy += GameValues.rivals.END_RIVALRY_COST_LEGACY;
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = endRivalryWithCivID;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("EndOfRivalry"), Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(endRivalryWithCivID).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
            if (Game.menuManager.getVisibleInGame_Civ()) {
                Game.menuManager.rebuildInGame_Civ(true);
                InGame_Civ.lTime = 0L;
            }
        } else {
            Game.menuManager.addToast_Error(Game.lang.get("NotFound"), Images.rivals);
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 3) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 3) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
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
