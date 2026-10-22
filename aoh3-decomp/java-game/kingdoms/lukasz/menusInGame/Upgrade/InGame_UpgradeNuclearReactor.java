package aoc.kingdoms.lukasz.menusInGame.Upgrade;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_NuclearReactor;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_UpgradeNuclearReactor extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeNuclearReactor$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeNuclearReactor$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_UpgradeNuclearReactor.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverNuclearReactor();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeNuclearReactor$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG {
        AnonymousClass3(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_UpgradeNuclearReactor.lTime;
        }
    }

    public InGame_UpgradeNuclearReactor() {
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
        arrayList.add(new Button_NuclearReactor(i, i5));
        int width2 = i6 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 3);
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i5;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i7 = (width - width2) - i;
        int buttonHeight = (Button_NuclearReactor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new Text_StaticBG_RulerTitle(Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), width2, i5, i7, buttonHeight));
        int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AtomicBombCost") + ": ", "" + CFG.getPrecision2(GameValues.atomic.NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL * 100.0f, 100) + "%", Images.nuke, width2, height3, i7, buttonHeight, width3));
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiencyPerLevel") + ": ", lJxd.PyOSLG + CFG.getPrecision2(GameValues.atomic.NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL, 100) + "%", Images.goods, width2, height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i7, buttonHeight, width3));
        int i8 = width - (i * 2);
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(Game.getNuclearReactor_Cost(Game.player.iCivID), 100), Images.gold, i, height2, i8, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.gold).getWidth()));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height4, (i8 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass2(Game.lang.get(aBEBOpwLZcQFCZ.HEJtvYfwUBoy), CFG.FONT_REGULAR, -1, i + CFG.PADDING + ((i8 - CFG.PADDING) / 2), height4, (i8 - CFG.PADDING) / 2, true));
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
        initMenu(new AnonymousClass3(Game.lang.get("UpgradeNuclearReactor"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        InGame_Nukes.upgradeNuclearReactor();
        Game.menuManager.setVisibleInGame_PopUp(false);
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
