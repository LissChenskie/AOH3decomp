package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_Advantage2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CivilizationAdvantages2 extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iMenuWidth;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages2$1, reason: invalid class name */
    class AnonymousClass1 extends MenuTitleIMG_FlagCenter {
        AnonymousClass1(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CivilizationAdvantages2.lTime2;
        }
    }

    public InGame_CivilizationAdvantages2() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i2 = Images.boxTitleBORDERWIDTH;
        int i3 = CFG.PADDING;
        ImageManager.getImage(Images.title928).getHeight();
        int width = ImageManager.getImage(Images.insideTop928).getWidth();
        iMenuWidth = width - (Images.boxTitleBORDERWIDTH * 2);
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title928).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING / 2;
        int i6 = CFG.PADDING * 2;
        if (CFG.isDesktop()) {
            int i7 = CFG.BUTTON_HEIGHT3;
        } else {
            int i8 = CFG.BUTTON_HEIGHT2;
        }
        InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE = false;
        new ArrayList();
        int i9 = ((width - (i * 2)) - (CFG.PADDING * 4)) / 3;
        LanguageManager languageManager = Game.lang;
        String str = fTNtCctcBZcqKK.txmTZOAm;
        arrayList.add(new Button_Advantage2(i, i6, 0, 0, languageManager.get(str), "-10%", Images.gold));
        arrayList.add(new Text_Desc2(Game.lang.get("AdditionalBuildingsInProvince"), Button_Advantage2.getButtonHeight() + i + CFG.PADDING, i6, (i9 - Button_Advantage2.getButtonWidth()) - CFG.PADDING));
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i - CFG.PADDING, i6 - CFG.PADDING, (CFG.PADDING * 2) + i9, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
        int width2 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new Button_Advantage2(width2, i6, 0, 0, Game.lang.get(str), "-10%", Images.gold));
        arrayList.add(new Text_Desc2(Game.lang.get("AdditionalBuildingsInProvince"), Button_Advantage2.getButtonHeight() + width2 + CFG.PADDING, i6, (i9 - Button_Advantage2.getButtonWidth()) - CFG.PADDING));
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(width2 - CFG.PADDING, i6 - CFG.PADDING, (CFG.PADDING * 2) + i9, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new Button_Advantage2(width3, i6, 0, 0, Game.lang.get(str), "-10%", Images.gold));
        arrayList.add(new Text_Desc2(Game.lang.get("AdditionalBuildingsInProvince"), Button_Advantage2.getButtonHeight() + width3 + CFG.PADDING, i6, (i9 - Button_Advantage2.getButtonWidth()) - CFG.PADDING));
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(width3 - CFG.PADDING, i6 - CFG.PADDING, i9 + (CFG.PADDING * 2), Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
        int height2 = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height2, iMin)));
        initMenu(new AnonymousClass1(Game.lang.get("CivilizationAdvantages"), Game.lang.get("AdvantagePoints") + ": " + Game.getCiv(Game.player.iCivID).getAdvantagePoints(), false, false, Images.title928), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop928, Images.insideBot928);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        lTime2 = CFG.currentTimeMillis;
    }
}
