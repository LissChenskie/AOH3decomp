package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BattleTactics extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_BattleTactics$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation_Value {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getBattleTacticsID() != getCurrent()) {
                Game.getCiv(Game.player.iCivID).setBattleTacticsID(getCurrent());
                if (Game.menuManager.getVisibleInGame_Court()) {
                    Game.menuManager.rebuildInGame_CourtSavePos();
                    Game.menuManager.setVisibleInGame_Court(true);
                    InGame_Court.lTime = 0L;
                }
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = Game.player.iCivID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("BattleTactics"), Game.lang.get(GameValues.battleTactics.BATTLE_TACTICS[Game.getCiv(Game.player.iCivID).getBattleTacticsID()]));
                InGame_Info.imgID = Images.infoCrown;
            }
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("UnitsAttack") + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()];
            int i = Images.attack;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color3 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color3, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str3 = Game.lang.get("UnitsDefense") + ": ";
            String str4 = (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] <= 0 ? "" : "+") + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()];
            int i4 = Images.defense;
            int i5 = CFG.FONT_REGULAR_SMALL;
            int i6 = CFG.FONT_BOLD_SMALL;
            Color color4 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] == 0) {
                color2 = Colors.HOVER_NEUTRAL;
            } else {
                color2 = GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i4, i5, i6, color4, color2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return getCurrent() == Game.getCiv(Game.player.iCivID).getBattleTacticsID() ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_BattleTactics$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon2_Value {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str = Game.lang.get(XjthpFh.hRn) + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()];
            int i = Images.attack;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color2 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (getIsHovered()) {
                return super.getColor(z);
            }
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] == 0) {
                return Colors.HOVER_NEUTRAL;
            }
            return GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_BattleTactics$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon2_Value {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str = Game.lang.get(ALZmnpZHj.nfOpYall) + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()];
            int i = Images.defense;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color2 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (getIsHovered()) {
                return super.getColor(z);
            }
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] == 0) {
                return Colors.HOVER_NEUTRAL;
            }
            return GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_BattleTactics$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG {
        AnonymousClass4(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BattleTactics.lTime;
        }
    }

    public InGame_BattleTactics() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int i5 = CFG.GAME_HEIGHT / 4;
        int height = CFG.PADDING;
        int i6 = Images.boxTitleBORDERWIDTH;
        int i7 = 0;
        while (i7 < GameValues.battleTactics.BATTLE_TACTICS.length) {
            arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.battleTactics.BATTLE_TACTICS[i7]), Images.battle, i, height, ((width - (i * 2)) - (CFG.BUTTON_HEIGHT2 * 2)) - (CFG.PADDING * 2), CFG.BUTTON_HEIGHT, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true, i7));
            int width2 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i;
            int i8 = i;
            arrayList.add(new AnonymousClass2((GameValues.battleTactics.BATTLE_TACTICS_ATTACK[i7] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[i7], Images.attack, width2, height, CFG.BUTTON_HEIGHT2, CFG.BUTTON_HEIGHT, i7));
            arrayList.add(new AnonymousClass3((GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[i7] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[i7], Images.defense, width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height, CFG.BUTTON_HEIGHT2, CFG.BUTTON_HEIGHT, i7));
            height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i7++;
            i = i8;
        }
        int iMin = Math.min(height, (CFG.GAME_HEIGHT - i5) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(height, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("BattleTactics"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
