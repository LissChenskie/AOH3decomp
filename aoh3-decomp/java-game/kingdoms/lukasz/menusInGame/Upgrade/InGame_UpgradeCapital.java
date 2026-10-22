package aoc.kingdoms.lukasz.menusInGame.Upgrade;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_Capital;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_UpgradeCapital extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_UpgradeCapital.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Court_Government.getHoverCapitalCity();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_Government.upgradeCapital();
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iGovernmentID) {
                Game.menuManager.rebuildInGame_Government_SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Court_Government.getHoverCapitalCity();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG {
        AnonymousClass4(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_UpgradeCapital.lTime;
        }
    }

    public InGame_UpgradeCapital() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title500).getHeight();
        int i5 = CFG.PADDING;
        int i6 = Images.boxTitleBORDERWIDTH;
        arrayList.add(new Button_Capital(i, i5));
        int width2 = i6 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 3);
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i5;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i7 = (width - width2) - i;
        int buttonHeight = (Button_Capital.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new Text_StaticBG_RulerTitle(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), width2, i5, i7, buttonHeight));
        int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        String str = Game.lang.get("MonthlyIncomePerLevel") + ": ";
        String str2 = jkEBdieJhbh.djJntDFZLCwcdV;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(str, str2 + CFG.getPrecision2(GameValues.capital.CAPITAL_INCOME_PER_LVL, 100), Images.gold, width2, height3, i7, buttonHeight, width3));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumResearch") + ": ", str2 + CFG.getPrecision2(GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL, 100), Game_Calendar.IMG_TECHNOLOGY, width2, height4, i7, buttonHeight, width3));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i8 = width - (i * 2);
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProvincesMaintenance") + ": ", "" + CFG.getPrecision2(GameValues.capital.CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL * 100.0f, 100) + "%", Images.provinces, i, height5, i8, buttonHeight, width3));
        int height6 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(Game.getCapital_Cost(Game.player.iCivID), 100), Images.gold, i, height6, i8, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.gold).getWidth()));
        int height7 = arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + height6;
        arrayList.add(new AnonymousClass1(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height7, (((i8 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, true));
        arrayList.add(new AnonymousClass2(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, CFG.PADDING + i + ((((i8 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2), height7, ((i8 - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, true));
        arrayList.add(new AnonymousClass3("+", CFG.FONT_REGULAR, -1, i + (CFG.PADDING * 2) + (((i8 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2), height7, CFG.BUTTON_HEIGHT2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i9 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i10 = 0; i10 < size; i10++) {
            if (posY < arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("UpgradeCapitalCity"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        InGame_Court_Government.upgradeCapital();
        Game.menuManager.setVisibleInGame_PopUp(false);
        if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iGovernmentID) {
            Game.menuManager.rebuildInGame_Government_SavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
