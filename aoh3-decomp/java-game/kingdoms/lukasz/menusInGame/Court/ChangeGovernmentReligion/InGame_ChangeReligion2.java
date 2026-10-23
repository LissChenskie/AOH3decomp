package aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.Button_Capital;
import aoc.kingdoms.lukasz.menu_element.button.Button_CapitalMove;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ChangeReligion2 extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int toReligionID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion2$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonReligion2 {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion2$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion2$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ChangeReligion2.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(InGame_ChangeReligion2.toReligionID, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion2$4, reason: invalid class name */
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
            return InGame_ChangeReligion2.lTime;
        }
    }

    public InGame_ChangeReligion2() {
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
        int i6 = CFG.PADDING;
        int buttonHeight = (Button_CapitalMove.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int buttonHeight2 = i + Button_Capital.getButtonHeight() + CFG.PADDING;
        int i7 = i6 + CFG.PADDING;
        int i8 = i7 - CFG.PADDING;
        int i9 = (width - i) - buttonHeight2;
        List<MenuElement> menuElements = Game.religionManager.getMenuElements(toReligionID, buttonHeight2, i7, i9, buttonHeight);
        if (menuElements.isEmpty()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, buttonHeight2, i7, i9, (Button_Capital.getButtonHeight() * 3) / 5));
        } else if (menuElements.size() == 1) {
            menuElements.get(0).setHeight((Button_Capital.getButtonHeight() * 3) / 5);
            arrayList.add(menuElements.get(0));
        } else {
            for (int i10 = 0; i10 < menuElements.size(); i10++) {
                if (i10 > 2) {
                    menuElements.get(i10).setPosX(i);
                    menuElements.get(i10).setWidth(width - (i * 2));
                }
                arrayList.add(menuElements.get(i10));
            }
        }
        arrayList.add(new AnonymousClass1(toReligionID, i, i7, Button_Capital.getButtonHeight(), (Button_Capital.getButtonHeight() * 3) / 5));
        int size = arrayList.size();
        int iMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iMax = Math.max(iMax, arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight());
        }
        int i12 = iMax + CFG.PADDING;
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i8, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), i12 - i8));
        int i13 = CFG.PADDING + i12;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i14 = width - (i * 2);
        int i15 = (i14 - CFG.PADDING) / 2;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST, 10), Images.gold, i, i13, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST_LEGACY, 10), Images.legacy, i + i15 + CFG.PADDING, i13, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + i13;
        arrayList.add(new AnonymousClass2(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height, (i14 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass3(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i + ((i14 - CFG.PADDING) / 2) + CFG.PADDING, height, (i14 - CFG.PADDING) / 2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i16 = CFG.PADDING;
        int size2 = arrayList.size();
        int posY = 0;
        for (int i17 = 0; i17 < size2; i17++) {
            if (posY < arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2);
            }
        }
        int i18 = CFG.GAME_HEIGHT / 8;
        int iMin = Math.min(posY, CFG.GAME_HEIGHT - (i18 * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass4(Game.getCiv(Game.player.iCivID).getCivName() + ": " + Game.religionManager.getReligion(toReligionID).Name, true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), i18, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).getReligionID() == toReligionID) {
            Game.menuManager.addToast_Error(Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name + " == " + Game.religionManager.getReligion(toReligionID).Name);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.religion.CHANGE_RELIGION_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST, 10), Images.gold);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.religion.CHANGE_RELIGION_COST_LEGACY) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST_LEGACY, 10), Images.legacy);
            return;
        }
        Game.getCiv(Game.player.iCivID).fGold -= GameValues.religion.CHANGE_RELIGION_COST;
        Game.getCiv(Game.player.iCivID).fLegacy -= GameValues.religion.CHANGE_RELIGION_COST_LEGACY;
        Game.getCiv(Game.player.iCivID).setReligionID_UpdateBonuses(toReligionID);
        Game.getCiv(Game.player.iCivID).updateCivStability();
        Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.player.iCivID);
        if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iGovernmentID) {
            Game.menuManager.rebuildInGame_Government();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = Game.player.iCivID;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("Religion"), Game.religionManager.getReligion(toReligionID).Name);
        InGame_Info.imgID = Images.infoCrown;
        Game.menuManager.setVisibleInGame_PopUp(false);
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
