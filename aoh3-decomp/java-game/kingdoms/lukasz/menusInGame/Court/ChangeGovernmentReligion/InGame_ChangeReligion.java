package aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
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
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ChangeReligion extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonReligion2 {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getReligionID() == getCurrent()) {
                Game.menuManager.addToast_Error(Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name + " == " + Game.religionManager.getReligion(getCurrent()).Name);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fGold < GameValues.religion.CHANGE_RELIGION_COST) {
                Game.menuManager.addToastInsufficient(Game.lang.get(gpVDKipRURuzw.ATWHUuQ) + ": ", CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST, 10), Images.gold);
            } else if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.religion.CHANGE_RELIGION_COST_LEGACY) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST_LEGACY, 10), Images.legacy);
            } else {
                InGame_ChangeReligion2.toReligionID = getCurrent();
                Game.menuManager.rebuildInGame_ChangeReligion2();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass3(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ChangeReligion.lTime;
        }
    }

    public InGame_ChangeReligion() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i3 = CFG.BUTTON_WIDTH;
        int i4 = Renderer.boxBGExtraY;
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.topStats).getHeight();
        int i6 = CFG.PADDING;
        ImageManager.getImage(Images.title500).getHeight();
        int i7 = CFG.PADDING;
        int buttonHeight = (Button_CapitalMove.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i8 = width - (i2 * 2);
        int i9 = (i8 - CFG.PADDING) / 2;
        int i10 = i8;
        arrayList.add(new AnonymousClass1(Game.lang.get("Close"), CFG.FONT_REGULAR, -1, i2, i7, i8, true));
        int height = i7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST, 10), Images.gold, i2, height, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.religion.CHANGE_RELIGION_COST_LEGACY, 10), Images.legacy, i2 + i9 + CFG.PADDING, height, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i11 = 0;
        while (i11 < Game.religionManager.getReligionsSize()) {
            int buttonHeight2 = i2 + Button_Capital.getButtonHeight() + CFG.PADDING;
            int i12 = height2 + CFG.PADDING;
            int i13 = i12 - CFG.PADDING;
            int i14 = (width - i2) - buttonHeight2;
            List<MenuElement> menuElements = Game.religionManager.getMenuElements(i11, buttonHeight2, i12, i14, buttonHeight);
            if (menuElements.isEmpty()) {
                arrayList.add(new Text_StaticBG(Game.lang.get(fiRhHJntP.RIvKuWbodXvO), CFG.FONT_REGULAR, -1, buttonHeight2, i12, i14, (Button_Capital.getButtonHeight() * 3) / 5));
            } else if (menuElements.size() == 1) {
                menuElements.get(0).setHeight((Button_Capital.getButtonHeight() * 3) / 5);
                arrayList.add(menuElements.get(0));
            } else {
                int i15 = 0;
                while (i15 < menuElements.size()) {
                    if (i15 > 2) {
                        menuElements.get(i15).setPosX(i2);
                        i = i10;
                        menuElements.get(i15).setWidth(i);
                    } else {
                        i = i10;
                    }
                    arrayList.add(menuElements.get(i15));
                    i15++;
                    i10 = i;
                }
            }
            int i16 = i10;
            arrayList.add(new AnonymousClass2(i11, i2, i12, Button_Capital.getButtonHeight(), (Button_Capital.getButtonHeight() * 3) / 5));
            int size = arrayList.size();
            int iMax = 0;
            for (int i17 = 0; i17 < size; i17++) {
                iMax = Math.max(iMax, arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight());
            }
            int i18 = iMax + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i13, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), i18 - i13));
            height2 = CFG.PADDING + i18;
            i11++;
            i10 = i16;
        }
        int size2 = arrayList.size();
        int posY = 0;
        for (int i19 = 0; i19 < size2; i19++) {
            if (posY < arrayList.get(i19).getPosY() + arrayList.get(i19).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i19).getPosY() + arrayList.get(i19).getHeight() + (CFG.PADDING * 2);
            }
        }
        int i20 = CFG.GAME_HEIGHT / 8;
        int iMin = Math.min(posY, CFG.GAME_HEIGHT - (i20 * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass3(Game.getCiv(Game.player.iCivID).getCivName() + ": " + Game.lang.get("Religion"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), i20, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
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
