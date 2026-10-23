package aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_Capital;
import aoc.kingdoms.lukasz.menu_element.button.Button_CapitalMove;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ChangeIdeology extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonIdeology_Court {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getIdeologyID() == getCurrent()) {
                Game.menuManager.addToast_Error(Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).Name + " == " + Game.ideologiesManager.getIdeology(getCurrent()).Name);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fGold < GameValues.government.CHANGE_GOVERNMENT_COST) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), Images.gold);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), Images.legacy);
            } else if (Game.ideologiesManager.getIdeology(getCurrent()).REQUIRED_TECHNOLOGY >= 0 && !Game.getCiv(Game.player.iCivID).getTechResearched(Game.ideologiesManager.getIdeology(getCurrent()).REQUIRED_TECHNOLOGY)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("RequiredTechnology") + ": ", TechnologyTree.lTechnology.get(Game.ideologiesManager.getIdeology(getCurrent()).REQUIRED_TECHNOLOGY).Name, Game_Calendar.IMG_TECHNOLOGY);
            } else {
                InGame_ChangeIdeology2.toIdeologyID = getCurrent();
                Game.menuManager.rebuildInGame_ChangeIdeology2();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology_Court, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.ideologiesManager.getHoverIdeology(getCurrent(), false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology$4, reason: invalid class name */
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
            return InGame_ChangeIdeology.lTime;
        }
    }

    public InGame_ChangeIdeology() {
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
        arrayList.add(new AnonymousClass1(Game.lang.get("Close"), CFG.FONT_REGULAR, -1, i2, i7, i8, true));
        int height = i7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Desc2(Game.lang.get("EachGovernmentUnlocksSpecialBonusesThatBoostSpecificAreas"), i2, height, i8));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i10 = i8;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), Images.gold, i2, height2, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), Images.legacy, i2 + i9 + CFG.PADDING, height2, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), iCeil));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        for (int i11 = 0; i11 < Game.ideologiesManager.getIdeologiesSize(); i11++) {
            arrayList.add(new Text_Title_v2Center(Game.ideologiesManager.getIdeology(i11).Name, -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            int i12 = height4 - CFG.PADDING;
            int buttonHeight2 = i2 + Button_Capital.getButtonHeight() + CFG.PADDING;
            List<MenuElement> menuElements = Game.ideologiesManager.getMenuElements(i11, buttonHeight2, height4, (width - i2) - buttonHeight2, buttonHeight);
            int i13 = 0;
            while (i13 < menuElements.size()) {
                if (i13 > 2) {
                    menuElements.get(i13).setPosX(i2);
                    i = i10;
                    menuElements.get(i13).setWidth(i);
                } else {
                    i = i10;
                }
                arrayList.add(menuElements.get(i13));
                i13++;
                i10 = i;
            }
            i10 = i10;
            arrayList.add(new AnonymousClass2(i11, i2, height4, Button_Capital.getButtonHeight(), Button_Capital.getButtonHeight()));
            int size = arrayList.size();
            int iMax = 0;
            for (int i14 = 0; i14 < size; i14++) {
                iMax = Math.max(iMax, arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight());
            }
            int height5 = CFG.PADDING + iMax;
            if (Game.ideologiesManager.getIdeology(i11).REQUIRED_TECHNOLOGY >= 0 && !Game.getCiv(Game.player.iCivID).getTechResearched(Game.ideologiesManager.getIdeology(i11).REQUIRED_TECHNOLOGY)) {
                arrayList.add(new AnonymousClass3(Game.lang.get("RequiredTechnology") + ": ", TechnologyTree.lTechnology.get(Game.ideologiesManager.getIdeology(i11).REQUIRED_TECHNOLOGY).Name, Game_Calendar.IMG_TECHNOLOGY, i2, height5, i10, buttonHeight, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2)));
                height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i12, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), height5 - i12));
            height3 = height5 + CFG.PADDING;
        }
        int size2 = arrayList.size();
        int posY = 0;
        for (int i15 = 0; i15 < size2; i15++) {
            if (posY < arrayList.get(i15).getPosY() + arrayList.get(i15).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i15).getPosY() + arrayList.get(i15).getHeight() + (CFG.PADDING * 2);
            }
        }
        int i16 = CFG.GAME_HEIGHT / 8;
        int iMin = Math.min(posY, CFG.GAME_HEIGHT - (i16 * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("ChangeTypeOfGovernment"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), i16, width, iMin, arrayList, false, true);
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
