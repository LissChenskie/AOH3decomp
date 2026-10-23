package aoc.kingdoms.lukasz.menusInGame.RecruitArmy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.RomanNumber;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.battles.BattleRegiment;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Army;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Battle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RecruitArmy_NewArmy_Battlefield extends Menu {
    public static int boxH;
    public static ArmyDivision armyDivision = new ArmyDivision();
    public static List<BattleRegiment> firstLine = new ArrayList();
    public static List<BattleRegiment> secondLineReg = new ArrayList();
    public static boolean autoVisible = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_v2_TextLR {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID, Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("BattleWidthRefersToTheNumberOfUnitsThatCanBeDeployedInAFormationOnTheBattlefield"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$10, reason: invalid class name */
    class AnonymousClass10 extends Empty {
        AnonymousClass10(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Battle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ArmyComposition0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine3"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_Battle {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ArmyComposition0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine3"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonBattleRegimentEmpty {
        AnonymousClass4(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoUnits"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            spriteBatch.setColor(Game.getCiv(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID).getRGB(0.25f));
            Images.pix.draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, getIsHovered() ? 0.4f : 0.25f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
            spriteBatch.setColor(Color.WHITE);
            super.draw(spriteBatch, i, i2, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty
        public float getImageAlpha(boolean z) {
            return (getIsHovered() || z) ? 0.8f : 0.4f;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonBattleRegimentEmpty {
        AnonymousClass5(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NotAvailable"), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DeploymentPhase2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonBattleRegiment {
        AnonymousClass6(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy_NewArmy_Battlefield.this.getHover(InGame_RecruitArmy_NewArmy_Battlefield.firstLine.get(this.id));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonBattleRegimentEmpty {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoUnits"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            spriteBatch.setColor(Game.getCiv(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID).getRGB(0.25f));
            Images.pix.draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, getIsHovered() ? 0.4f : 0.25f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
            spriteBatch.setColor(Color.WHITE);
            super.draw(spriteBatch, i, i2, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty
        public float getImageAlpha(boolean z) {
            return (getIsHovered() || z) ? 0.8f : 0.4f;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonBattleRegimentEmpty {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NotAvailable"), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(InGame_RecruitArmy_NewArmy_Battlefield.armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(CaiJWNfqszJNZ.NvPtLxTfM), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonBattleRegiment {
        AnonymousClass9(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy_NewArmy_Battlefield.this.getHover(InGame_RecruitArmy_NewArmy_Battlefield.secondLineReg.get(this.id));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InGame_RecruitArmy_NewArmy_Battlefield() {
        int i;
        int i2;
        InGame_RecruitArmy_NewArmy_Battlefield inGame_RecruitArmy_NewArmy_Battlefield = this;
        ArrayList arrayList = new ArrayList();
        rebuildMenuArmy();
        firstLine.clear();
        secondLineReg.clear();
        int width = ((ImageManager.getImage(Images.battleArmy0).getWidth() + 2) * GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) + (CFG.PADDING * 4);
        ImageManager.getImage(Images.battleArmy0).getHeight();
        int i3 = CFG.PADDING;
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2() + ImageManager.getImage(Images.insideTop).getWidth() + (CFG.PADDING * 2);
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING * 2;
        int i5 = CFG.PADDING;
        for (int i6 = 0; i6 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i6++) {
            firstLine.add(null);
            secondLineReg.add(null);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i7 = 0; i7 < armyDivision.iArmyRegimentSize; i7++) {
            int i8 = ArmyManager.lUnitsTypes.get(armyDivision.lArmyRegiment.get(i7).uID).Line;
            if (i8 == 0) {
                arrayList2.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i7), armyDivision.key));
            } else if (i8 != 1) {
                arrayList4.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i7), armyDivision.key));
            } else {
                arrayList3.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i7), armyDivision.key));
            }
        }
        int battleWidth = BattleManager.getBattleWidth(armyDivision.civID);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(armyDivision);
        int armyInFirstLine = Battle.getArmyInFirstLine(arrayList5);
        arrayList5.clear();
        int iMin = Math.min(battleWidth - ((int) (battleWidth * GameValues.battle.BATTLE_SIDES_RATIO)), armyInFirstLine);
        int i9 = 0;
        while (i9 < battleWidth && (arrayList2.size() > 0 || arrayList3.size() > 0)) {
            if ((i9 >= iMin) != true && arrayList2.size() > 0) {
                i2 = i9 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i9], (BattleRegiment) arrayList2.get(0));
                arrayList2.remove(0);
            } else if (arrayList3.size() > 0) {
                i2 = i9 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i9], (BattleRegiment) arrayList3.get(0));
                arrayList3.remove(0);
            } else if (arrayList2.size() > 0) {
                i2 = i9 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i9], (BattleRegiment) arrayList2.get(0));
                arrayList2.remove(0);
            }
            i9 = i2;
        }
        int i10 = 0;
        while (i10 < battleWidth && arrayList4.size() > 0) {
            if (arrayList4.size() > 0) {
                if (firstLine.get(BattleManager.FILL_ORDER[i10]) == null) {
                    firstLine.set(BattleManager.FILL_ORDER[i10], (BattleRegiment) arrayList4.get(0));
                } else {
                    secondLineReg.set(BattleManager.FILL_ORDER[i10], (BattleRegiment) arrayList4.get(0));
                    i10++;
                }
                arrayList4.remove(0);
            }
        }
        ImageManager.getImage(Images.battleWidth).getWidth();
        arrayList.add(new AnonymousClass1(Game.lang.get("ArmyDeployment"), CFG.BUTTON_WIDTH / 4, 0, 0, width, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), "" + Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + 0 + CFG.PADDING;
        int i11 = width - (i4 * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Enemies") + ": " + Game.lang.get("SecondLine"), CFG.FONT_REGULAR_SMALL, -1, i4, height2, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Enemies") + ": " + Game.lang.get("FirstLine"), CFG.FONT_REGULAR_SMALL, -1, i4, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        int i12 = 1;
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i13 = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - (battleWidth / 2);
        int width2 = i4;
        int i14 = 0;
        while (i14 < firstLine.size()) {
            if (firstLine.get(i14) != null) {
                arrayList.add(new AnonymousClass6(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(firstLine.get(i14).aR.uID).Line), width2, height4, i14, 0, ArmyManager.lArmy.get(firstLine.get(i14).aR.uID).get(firstLine.get(i14).aR.aID).AttackRange, false, true));
            } else if (i14 < i13 || i14 >= i13 + battleWidth) {
                arrayList.add(inGame_RecruitArmy_NewArmy_Battlefield.new AnonymousClass5(Images.battleArmy2, width2, height4));
            } else {
                arrayList.add(inGame_RecruitArmy_NewArmy_Battlefield.new AnonymousClass4(Images.battleArmy2, width2, height4));
            }
            width2 += arrayList.get(arrayList.size() - 1).getWidth();
            i14++;
            i12 = 1;
            height4 = height4;
            i13 = i13;
        }
        int i15 = i13;
        int i16 = height4;
        int i17 = i12;
        int height5 = i16 + arrayList.get(arrayList.size() - i17).getHeight();
        int width3 = i4;
        int i18 = 0;
        while (i18 < secondLineReg.size()) {
            if (secondLineReg.get(i18) == null) {
                int i19 = i15;
                if (i18 < i19 || i18 >= i19 + battleWidth) {
                    arrayList.add(inGame_RecruitArmy_NewArmy_Battlefield.new AnonymousClass8(Images.battleArmy2, width3, height5));
                } else {
                    arrayList.add(inGame_RecruitArmy_NewArmy_Battlefield.new AnonymousClass7(Images.battleArmy2, width3, height5));
                }
                i = i19;
            } else {
                i = i15;
                arrayList.add(new AnonymousClass9(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(secondLineReg.get(i18).aR.uID).Line), width3, height5, i18, 0, ArmyManager.lArmy.get(secondLineReg.get(i18).aR.uID).get(secondLineReg.get(i18).aR.aID).AttackRange, true, true));
            }
            width3 += arrayList.get(arrayList.size() - i17).getWidth();
            i18++;
            i17 = i17;
            height5 = height5;
            i15 = i;
            inGame_RecruitArmy_NewArmy_Battlefield = this;
        }
        boolean z = i17;
        arrayList.get(arrayList.size() - (z ? 1 : 0)).getHeight();
        int i20 = CFG.PADDING;
        arrayList2.clear();
        arrayList3.clear();
        arrayList4.clear();
        int size = arrayList.size();
        int posY = 0;
        for (int i21 = 0; i21 < size; i21++) {
            if (posY < arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + (CFG.PADDING * 3);
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new AnonymousClass10(0, 0, width, Math.max(posY, iMin2)));
        arrayList.get(arrayList.size() - (z ? 1 : 0)).setClickable(z);
        initMenu(null, otherMenuPosX_2, height, width, iMin2, arrayList, autoVisible);
    }

    public static void hideMenu() {
        autoVisible = false;
        Game.menuManager.setVisibleInGame_RecruitArmy_Battlefield(false);
    }

    public static void hideShowMenu() {
        boolean z = !autoVisible;
        autoVisible = z;
        if (z) {
            Game.menuManager.rebuildInGame_RecruitArmy_NewArmy_Battlefield();
        } else {
            Game.menuManager.setVisibleInGame_RecruitArmy_Battlefield(autoVisible);
        }
    }

    public static void rebuildMenuArmy() {
        armyDivision = new ArmyDivision(Game.player.iCivID, InGame_RecruitArmy_NewArmy.createNewArmy);
    }

    public static void rebuildMenuIfVisible() {
        if (autoVisible) {
            Game.menuManager.rebuildInGame_RecruitArmy_NewArmy_Battlefield();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.85f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        beginClip(spriteBatch, i, i2, z);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.battleOver).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.battleOver).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.battleOver).getHeight() / 2)) + i2);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.7f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), boxH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.7f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), boxH, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + boxH) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth() - (CFG.PADDING * 2), CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
        drawMenu(spriteBatch, i, i2, z);
        endClip(spriteBatch, i, i2, z, status);
    }

    public MenuElement_Hover getHover(BattleRegiment battleRegiment) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(battleRegiment.c, RomanNumber.getRoman(battleRegiment.rn) + "" + Game.lang.get("Regiment")));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Army("" + battleRegiment.aR.num, battleRegiment.aR.uID, battleRegiment.aR.aID, battleRegiment.c));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AttackRange") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ArmyManager.lArmy.get(battleRegiment.aR.uID).get(battleRegiment.aR.aID).AttackRange, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SiegeAbility") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ArmyManager.lArmy.get(battleRegiment.aR.uID).get(battleRegiment.aR.aID).SiegeProgress, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }
}
