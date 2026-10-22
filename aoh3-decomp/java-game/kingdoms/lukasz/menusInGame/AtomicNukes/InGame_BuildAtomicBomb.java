package aoc.kingdoms.lukasz.menusInGame.AtomicNukes;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_AtomicBomb;
import aoc.kingdoms.lukasz.menu_element.button.Button_NuclearReactor;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BuildAtomicBomb extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_RulerTitle {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), Images.nuke);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 5) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeNuclearReactor();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverBuildAtomicBomb();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.iCurrent != ((int) Game.getAtomicBombCost(Game.player.iCivID))) {
                this.iCurrent = (int) Game.getAtomicBombCost(Game.player.iCivID);
                this.sText2 = CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100);
                Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_BuildAtomicBomb.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverBuildAtomicBomb();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Nukes.buildAtomicBomb();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverBuildAtomicBomb();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG {
        AnonymousClass7(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BuildAtomicBomb.lTime;
        }
    }

    public InGame_BuildAtomicBomb() {
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
        arrayList.add(new Button_AtomicBomb(i, i5));
        int width2 = i6 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 3);
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i5;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i7 = (width - width2) - i;
        int buttonHeight = (Button_NuclearReactor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new AnonymousClass1(Game.lang.get("AtomicBombs") + ": " + Game.getCiv(Game.player.iCivID).getNukes(), width2, i5, i7, buttonHeight));
        int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100), Images.gold, width2, height3, i7, buttonHeight, width3));
        arrayList.add(new AnonymousClass3(Game.lang.get(jkEBdieJhbh.wfFTAlPvZ) + ": ", "" + Game.lang.get("XDays", Game.getAtomicBombProductionTime(Game.player.iCivID)), Images.time, width2, height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i7, buttonHeight, width3));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i8 = CFG.PADDING;
        int i9 = width - (i * 2);
        arrayList.add(new AnonymousClass4(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height2, (((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, true));
        arrayList.add(new AnonymousClass5(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, CFG.PADDING + i + ((((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2), height2, ((i9 - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE));
        arrayList.add(new AnonymousClass6("+", CFG.FONT_REGULAR, -1, i + (CFG.PADDING * 2) + (((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2), height2, CFG.BUTTON_HEIGHT2, Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i10 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (posY < arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass7(Game.lang.get("BuildAnAtomicBomb"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        InGame_Nukes.buildAtomicBomb();
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
