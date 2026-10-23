package aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court;
import aoc.kingdoms.lukasz.menu_element.button.Button_Capital;
import aoc.kingdoms.lukasz.menu_element.button.Button_CapitalMove;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ChangeIdeology2 extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int toIdeologyID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonIdeology_Court {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.ideologiesManager.getHoverIdeology(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ChangeIdeology2.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.ideologiesManager.getHoverIdeology(InGame_ChangeIdeology2.toIdeologyID, false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass4(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ChangeIdeology2.lTime;
        }
    }

    public InGame_ChangeIdeology2() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        ImageManager.getImage(Images.topStats).getHeight();
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.title500).getHeight();
        int buttonHeight = (Button_CapitalMove.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new Text_Title_v2Center(Game.ideologiesManager.getIdeology(toIdeologyID).Name, -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + 0;
        int i6 = height - CFG.PADDING;
        int buttonHeight2 = i + Button_Capital.getButtonHeight() + CFG.PADDING;
        List<MenuElement> menuElements = Game.ideologiesManager.getMenuElements(toIdeologyID, buttonHeight2, height, (width - i) - buttonHeight2, buttonHeight);
        for (int i7 = 0; i7 < menuElements.size(); i7++) {
            if (i7 > 2) {
                menuElements.get(i7).setPosX(i);
                menuElements.get(i7).setWidth(width - (i * 2));
            }
            arrayList.add(menuElements.get(i7));
        }
        arrayList.add(new AnonymousClass1(toIdeologyID, i, height, Button_Capital.getButtonHeight(), Button_Capital.getButtonHeight()));
        int size = arrayList.size();
        int iMax = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iMax = Math.max(iMax, arrayList.get(i8).getPosY() + arrayList.get(i8).getHeight());
        }
        int i9 = iMax + CFG.PADDING;
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i6, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), i9 - i6));
        int i10 = CFG.PADDING + i9;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i11 = width - (i * 2);
        int i12 = (i11 - CFG.PADDING) / 2;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), Images.gold, i, i10, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), Images.legacy, i + i12 + CFG.PADDING, i10, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + i10;
        arrayList.add(new AnonymousClass2(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height2, (i11 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass3(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i + ((i11 - CFG.PADDING) / 2) + CFG.PADDING, height2, (i11 - CFG.PADDING) / 2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i13 = CFG.PADDING;
        int size2 = arrayList.size();
        int posY = 0;
        for (int i14 = 0; i14 < size2; i14++) {
            if (posY < arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + (CFG.PADDING * 2);
            }
        }
        int i15 = CFG.GAME_HEIGHT / 8;
        int iMin = Math.min(posY, CFG.GAME_HEIGHT - (i15 * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("ChangeTypeOfGovernment"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), i15, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).getIdeologyID() == toIdeologyID) {
            Game.menuManager.addToast_Error(Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).Name + " == " + Game.ideologiesManager.getIdeology(toIdeologyID).Name);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.government.CHANGE_GOVERNMENT_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), Images.gold);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), Images.legacy);
            return;
        }
        if (Game.ideologiesManager.getIdeology(toIdeologyID).REQUIRED_TECHNOLOGY >= 0 && !Game.getCiv(Game.player.iCivID).getTechResearched(Game.ideologiesManager.getIdeology(toIdeologyID).REQUIRED_TECHNOLOGY)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("RequiredTechnology") + ": ", TechnologyTree.lTechnology.get(Game.ideologiesManager.getIdeology(toIdeologyID).REQUIRED_TECHNOLOGY).Name, Game_Calendar.IMG_TECHNOLOGY);
            return;
        }
        if (Game.ideologiesManager.changeGovernmentType(Game.player.iCivID, toIdeologyID, false)) {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iGovernmentID) {
                Game.menuManager.rebuildInGame_Government();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("Government"), Game.ideologiesManager.getIdeology(toIdeologyID).Name);
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.setVisibleInGame_PopUp(false);
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
