package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.ButtonLegacy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleLegacy;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Legacies extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int UNLOCK_LEGACY_ID;
    public static float bgAlpha;
    public static long bgTIME;
    public static long bgTIME_CHANGE;
    public static int iActiveCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Legacies$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonLegacy {
        AnonymousClass1(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Legacies.iActiveCivID == Game.player.iCivID) {
                if (this.currentLvl + 1 < LegacyManager.legacies.get(this.legacyID).CostLegacy.length) {
                    InGame_Legacies.UNLOCK_LEGACY_ID = getCurrent();
                    InGame_Legacies.unlockLegacy();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Max") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(LegacyManager.legacies.get(this.legacyID).Name), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                Game.menuManager.addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Legacies$2, reason: invalid class name */
    class AnonymousClass2 extends MenuTitleIMG_DoubleText {
        AnonymousClass2(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Legacies.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Legacies$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG_FlagCenter {
        AnonymousClass3(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Legacies.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Legacies.lTime;
        }
    }

    public InGame_Legacies() {
        InGame_Legacies inGame_Legacies;
        String str;
        String str2;
        String str3;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        int i2 = Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.title928).getWidth();
        int i3 = CFG.BUTTON_WIDTH;
        int i4 = Renderer.boxBGExtraY;
        int i5 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title928).getHeight();
        int i6 = Images.boxTitleBORDERWIDTH;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i7 = 0; i7 < LegacyManager.iLegacyGroupsSize; i7++) {
            arrayList2.add(0);
            arrayList3.add(0);
        }
        for (int i8 = 0; i8 < LegacyManager.iLegaciesSize; i8++) {
            arrayList2.set(LegacyManager.legacies.get(i8).GroupID, Integer.valueOf(((Integer) arrayList2.get(LegacyManager.legacies.get(i8).GroupID)).intValue() + LegacyManager.legacies.get(i8).CostLegacy.length));
        }
        for (int i9 = 0; i9 < Game.getCiv(iActiveCivID).getLegaciesSize(); i9++) {
            arrayList3.set(LegacyManager.legacies.get(Game.getCiv(iActiveCivID).getCivLegacy(i9).id).GroupID, Integer.valueOf(((Integer) arrayList3.get(LegacyManager.legacies.get(Game.getCiv(iActiveCivID).getCivLegacy(i9).id).GroupID)).intValue() + Game.getCiv(iActiveCivID).getCivLegacy(i9).lvl + 1));
        }
        int width2 = i6;
        String str4 = ": ";
        String str5 = "/";
        String str6 = "[";
        arrayList.add(new Text_TitleLegacy(LegacyManager.legacyGroups.get(0), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6), "[" + Game.lang.get("Unlocked") + ": " + arrayList3.get(0) + "/" + arrayList2.get(0) + "]"));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + 0;
        int i10 = LegacyManager.legacies.get(0).GroupID;
        int i11 = 0;
        while (i11 < LegacyManager.iLegaciesSize) {
            if (LegacyManager.legacies.get(i11).GroupID != i10) {
                int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
                width2 = Images.boxTitleBORDERWIDTH;
                i10 = LegacyManager.legacies.get(i11).GroupID;
                str3 = str6;
                str = str4;
                str2 = str5;
                arrayList.add(new Text_TitleLegacy(LegacyManager.legacyGroups.get(i10), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6), str3 + Game.lang.get("Unlocked") + str + arrayList3.get(i10) + str2 + arrayList2.get(i10) + "]"));
                height2 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                str = str4;
                str2 = str5;
                str3 = str6;
            }
            ArrayList arrayList4 = arrayList2;
            arrayList.add(new AnonymousClass1(width2, height2, i11, Game.getCiv(iActiveCivID).getLegacyLevel(i11)));
            width2 += arrayList.get(arrayList.size() - 1).getWidth();
            i11++;
            str6 = str3;
            str5 = str2;
            str4 = str;
            arrayList2 = arrayList4;
        }
        String str7 = str4;
        int size = arrayList.size();
        int posY = 0;
        for (int i12 = 0; i12 < size; i12++) {
            if (posY < arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        if (iActiveCivID == Game.player.iCivID) {
            inGame_Legacies = this;
            inGame_Legacies.initMenu(new AnonymousClass2(Game.lang.get("CivilizationLegacy"), Game.lang.get("Legacy") + str7 + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fLegacy, 1), false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, true, true);
        } else {
            inGame_Legacies = this;
            inGame_Legacies.initMenu(new AnonymousClass3(Game.lang.get("CivilizationLegacy"), Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, true, true);
        }
        inGame_Legacies.drawScrollPositionAlways = false;
        lTime = CFG.currentTimeMillis;
        bgTIME = System.currentTimeMillis();
        bgTIME_CHANGE = System.currentTimeMillis();
        bgAlpha = 0.0f;
    }

    public static final void unlockLegacy() {
        if (!Game.getCiv(Game.player.iCivID).unlockLegacy(UNLOCK_LEGACY_ID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy"), "", Images.legacy);
            return;
        }
        Game.menuManager.rebuildInGame_Legacies();
        Game.menuManager.setOrderOfMenu_InGameLegacies();
        lTime = 0L;
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.soundsManager.stopLegacySound();
        int legacyLevel = Game.getCiv(Game.player.iCivID).getLegacyLevel(UNLOCK_LEGACY_ID);
        if (legacyLevel == 0) {
            Game.soundsManager.playSound(SoundsManager.LEGACY_0);
        } else if (legacyLevel != 1) {
            Game.soundsManager.playSound(SoundsManager.LEGACY_2);
        } else {
            Game.soundsManager.playSound(SoundsManager.LEGACY_1);
        }
        Game.menuManager.rebuildInGameLegacies_Info(Game.lang.get(LegacyManager.legacies.get(UNLOCK_LEGACY_ID).Name), Game.lang.get("Unlocked") + " " + (Game.getCiv(Game.player.iCivID).getLegacyLevel(UNLOCK_LEGACY_ID) + 1) + "/" + LegacyManager.legacies.get(UNLOCK_LEGACY_ID).CostLegacy.length);
        SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.UNLOCK_LEGACY);
        Game.player.currSituation.buildPlayerLegaciesLVL();
        if (Game.menuManager.getVisibleInGame_CivBonuses()) {
            Game.menuManager.rebuildInGame_CivBonuses();
            Game.menuManager.setVisibleInGame_CivBonuses(true);
            InGame_CivBonuses.lTime = 0L;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop928, Images.insideBot928);
        super.draw(spriteBatch, i, i3, z, status);
    }

    public int getInnerTitleHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameLegacies();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
