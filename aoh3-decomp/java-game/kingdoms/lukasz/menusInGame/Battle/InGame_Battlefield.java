package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.RomanNumber;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.battles.BattleRegiment;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon_Special;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Army;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Battle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Battlefield extends Menu {
    public static int boxH;
    public static ArmyDivision armyDivision = new ArmyDivision();
    public static List<BattleRegiment> firstLine = new ArrayList();
    public static List<BattleRegiment> secondLineReg = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_v2_TextLR {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Battlefield.armyDivision.civID, Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(InGame_Battlefield.armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonBattleRegimentEmpty {
        AnonymousClass10(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
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
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_Battlefield.armyDivision.civID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Battlefield.armyDivision.civID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(InGame_Battlefield.armyDivision.civID) + HTGgowNjn.mDuGbakAyK + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonBattleRegiment {
        AnonymousClass11(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Battlefield.this.getHover(InGame_Battlefield.firstLine.get(this.id));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonBattleRegimentEmpty {
        AnonymousClass12(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
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
            spriteBatch.setColor(Game.getCiv(InGame_Battlefield.armyDivision.civID).getRGB(0.25f));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonBattleRegimentEmpty {
        AnonymousClass13(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
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
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_Battlefield.armyDivision.civID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Battlefield.armyDivision.civID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(InGame_Battlefield.armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonBattleRegiment {
        AnonymousClass14(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Battlefield.this.getHover(InGame_Battlefield.secondLineReg.get(this.id));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$15, reason: invalid class name */
    class AnonymousClass15 extends Empty {
        AnonymousClass15(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonArmyNoGeneral2_Armies {
        AnonymousClass2(String str, int i, int i2, int i3, String str2, int i4, int i5) {
            super(str, i, i2, i3, str2, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            super.actionElement();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmyGeneral2_Armies {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10, int i11, String str3, int i12) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10, i11, str3, i12);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            super.actionElement();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonArmyIcon_Special {
        AnonymousClass4(int i, int i2, int i3, boolean z, String str, int i4) {
            super(i, i2, i3, z, str, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            this.checkbox = !this.checkbox;
            Game.player.actionPinArmy(this.armyKey);
            Game.menuManager.rebuildInGame_Right();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(lOow.BsIq), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.pin, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (!this.checkbox) {
                if (getIsHovered()) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
                } else {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
                }
            }
            super.drawText(spriteBatch, i, i2, z);
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.pin;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonArmyIcon_Special {
        AnonymousClass5(int i, int i2, int i3, boolean z, String str, int i4) {
            super(i, i2, i3, z, str, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, this.armyKey);
            if (armyPosFindArmy_FullCheck != null) {
                Game.mapCoords.centerToProvinceID(armyPosFindArmy_FullCheck.iProvinceID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CenterToProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.center, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.center;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonArmyBattle {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_Battle {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_Battle {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonBattleRegimentEmpty {
        AnonymousClass9(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
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
            spriteBatch.setColor(Game.getCiv(InGame_Battlefield.armyDivision.civID).getRGB(0.25f));
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

    /* JADX WARN: Code duplicated, block: B:100:0x0581  */
    /* JADX WARN: Code duplicated, block: B:103:0x0592  */
    /* JADX WARN: Code duplicated, block: B:105:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:110:0x063b  */
    /* JADX WARN: Code duplicated, block: B:112:0x0643  */
    /* JADX WARN: Code duplicated, block: B:113:0x0645  */
    /* JADX WARN: Code duplicated, block: B:116:0x0657  */
    /* JADX WARN: Code duplicated, block: B:117:0x0664  */
    /* JADX WARN: Code duplicated, block: B:121:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:123:0x071b  */
    /* JADX WARN: Code duplicated, block: B:172:0x0735 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0577  */
    /* JADX WARN: Code duplicated, block: B:99:0x057f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v10 */
    /* JADX WARN: Type inference failed for: r33v11 */
    /* JADX WARN: Type inference failed for: r33v12 */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r33v14 */
    /* JADX WARN: Type inference failed for: r33v15 */
    /* JADX WARN: Type inference failed for: r33v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v10 */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v15 */
    /* JADX WARN: Type inference failed for: r34v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v10 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v14 */
    /* JADX WARN: Type inference failed for: r35v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r39v0, types: [aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    public InGame_Battlefield() {
        ?? r35;
        ?? r34;
        ?? r33;
        int i;
        int i2;
        int width;
        ?? r36;
        ?? r37;
        ?? r38;
        ?? r12;
        int height;
        int i3;
        int width2;
        int i4;
        int height2;
        int width3;
        int i5;
        int size;
        int posY;
        int i6;
        int i7;
        ?? arrayList = new ArrayList();
        firstLine.clear();
        secondLineReg.clear();
        int width4 = ((ImageManager.getImage(Images.battleArmy0).getWidth() + 2) * GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) + (CFG.PADDING * 4);
        int height3 = ((ImageManager.getImage(Images.battleArmy0).getHeight() + 2) * 2) + (CFG.PADDING * 4);
        int i8 = (CFG.GAME_WIDTH / 2) - (width4 / 2);
        int i9 = (CFG.GAME_HEIGHT / 5) - (height3 / 2);
        int i10 = CFG.PADDING * 2;
        int i11 = CFG.PADDING;
        for (int i12 = 0; i12 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i12++) {
            firstLine.add(null);
            secondLineReg.add(null);
        }
        ?? arrayList2 = new ArrayList();
        ?? arrayList3 = new ArrayList();
        ?? arrayList4 = new ArrayList();
        for (int i13 = 0; i13 < armyDivision.iArmyRegimentSize; i13++) {
            int i14 = ArmyManager.lUnitsTypes.get(armyDivision.lArmyRegiment.get(i13).uID).Line;
            if (i14 == 0) {
                arrayList2.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i13), armyDivision.key));
            } else if (i14 != 1) {
                arrayList4.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i13), armyDivision.key));
            } else {
                arrayList3.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i13), armyDivision.key));
            }
        }
        int battleWidth = BattleManager.getBattleWidth(armyDivision.civID);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(armyDivision);
        int armyInFirstLine = Battle.getArmyInFirstLine(arrayList5);
        arrayList5.clear();
        int iMin = Math.min(battleWidth - ((int) (battleWidth * GameValues.battle.BATTLE_SIDES_RATIO)), armyInFirstLine);
        int i15 = 0;
        while (i15 < battleWidth && (arrayList2.size() > 0 || arrayList3.size() > 0)) {
            if (!(i15 >= iMin) && arrayList2.size() > 0) {
                i7 = i15 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i15], (BattleRegiment) arrayList2.get(0));
                arrayList2.remove(0);
            } else if (arrayList3.size() > 0) {
                i7 = i15 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i15], (BattleRegiment) arrayList3.get(0));
                arrayList3.remove(0);
            } else if (arrayList2.size() > 0) {
                i7 = i15 + 1;
                firstLine.set(BattleManager.FILL_ORDER[i15], (BattleRegiment) arrayList2.get(0));
                arrayList2.remove(0);
            }
            i15 = i7;
        }
        int i16 = 0;
        while (i16 < battleWidth && arrayList4.size() > 0) {
            if (arrayList4.size() > 0) {
                if (firstLine.get(BattleManager.FILL_ORDER[i16]) == null) {
                    firstLine.set(BattleManager.FILL_ORDER[i16], (BattleRegiment) arrayList4.get(0));
                } else {
                    secondLineReg.set(BattleManager.FILL_ORDER[i16], (BattleRegiment) arrayList4.get(0));
                    i16++;
                }
                arrayList4.remove(0);
            }
        }
        ImageManager.getImage(Images.battleWidth).getWidth();
        String str = "";
        int i17 = 1;
        arrayList.add(new AnonymousClass1(Game.lang.get("ArmyDeployment"), CFG.BUTTON_WIDTH / 4, 0, 0, width4, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), "" + Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(armyDivision.civID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH));
        int height4 = ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + 0 + CFG.PADDING;
        try {
            int buttonHeight = (ButtonArmyBattle.getButtonHeight() - CFG.PADDING) / 2;
            width = i10 + CFG.PADDING;
            try {
                try {
                    if (armyDivision.armyGeneral == null) {
                        arrayList.add(new AnonymousClass2(Game.lang.get(uNBYrZVGzy.NIbHHNTMgkuBd), Game.player.iCivID, width + 0, height4, armyDivision.key, armyDivision.civID, armyDivision.provinceID));
                        r35 = arrayList4;
                        r34 = arrayList3;
                        r33 = arrayList2;
                        arrayList2 = arrayList;
                        i = 0;
                        arrayList4 = arrayList4;
                        arrayList3 = arrayList3;
                        arrayList = arrayList;
                    } else {
                        String str2 = armyDivision.armyGeneral.n;
                        int i18 = armyDivision.civID;
                        int attack = armyDivision.armyGeneral.getAttack();
                        int defense = armyDivision.armyGeneral.getDefense();
                        int i19 = width + 0;
                        int i20 = armyDivision.armyGeneral.g;
                        int i21 = armyDivision.armyGeneral.d;
                        int i22 = armyDivision.armyGeneral.m;
                        int i23 = armyDivision.armyGeneral.y;
                        try {
                            String str3 = armyDivision.key;
                            r35 = arrayList4;
                            int i24 = i21;
                            r34 = arrayList3;
                            int i25 = i22;
                            r33 = arrayList2;
                            i = 0;
                            int i26 = armyDivision.civID;
                            i17 = armyDivision.provinceID;
                            try {
                                arrayList2 = arrayList;
                                try {
                                    arrayList2.add(new AnonymousClass3(str2, i18, attack, defense, i19, height4, i20, i24, i25, i23, str3, i26, i17, armyDivision.armyGeneral.sI, armyDivision.armyGeneral.getCombatExperience()));
                                    arrayList4 = i24;
                                    arrayList3 = i25;
                                    arrayList2 = arrayList2;
                                    arrayList = i26;
                                    r33 = r33;
                                    r34 = r34;
                                    r35 = r35;
                                } catch (Exception e) {
                                    e = e;
                                    i2 = 1;
                                    CFG.exceptionStack(e);
                                    r12 = arrayList2;
                                    r38 = r33;
                                    r37 = r34;
                                    r36 = r35;
                                    boxH = height4;
                                    int i27 = height4 + CFG.PADDING;
                                    int i28 = width4 - (i10 * 2);
                                    r12.add(new AnonymousClass7(Game.lang.get("Enemies") + ": " + Game.lang.get("SecondLine"), CFG.FONT_REGULAR_SMALL, -1, i10, i27, i28, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                                    int height5 = i27 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + CFG.PADDING;
                                    r12.add(new AnonymousClass8(Game.lang.get("Enemies") + ": " + Game.lang.get("FirstLine"), CFG.FONT_REGULAR_SMALL, -1, i10, height5, i28, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                                    height = height5 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + (CFG.PADDING * 2) + CFG.PADDING;
                                    i3 = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - (battleWidth / 2);
                                    width2 = width;
                                    i4 = i;
                                    while (i4 < firstLine.size()) {
                                        if (firstLine.get(i4) == null) {
                                            r12.add(new AnonymousClass11(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(firstLine.get(i4).aR.uID).Line), width2, height, i4, 0, ArmyManager.lArmy.get(firstLine.get(i4).aR.uID).get(firstLine.get(i4).aR.aID).AttackRange, false, true));
                                        } else if (i4 >= i3) {
                                            r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                        } else {
                                            r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                        }
                                        width2 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                                        i4++;
                                        i2 = 1;
                                    }
                                    height2 = height + ((MenuElement) r12.get(r12.size() - i2)).getHeight();
                                    width3 = i10;
                                    while (i5 < secondLineReg.size()) {
                                        if (secondLineReg.get(i5) == null) {
                                            r12.add(new AnonymousClass14(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(secondLineReg.get(i5).aR.uID).Line), width3, height2, i5, 0, ArmyManager.lArmy.get(secondLineReg.get(i5).aR.uID).get(secondLineReg.get(i5).aR.aID).AttackRange, true, true));
                                        } else if (i5 >= i3) {
                                            r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                        } else {
                                            r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                        }
                                        width3 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                                    }
                                    ((MenuElement) r12.get(r12.size() - 1)).getHeight();
                                    int i29 = CFG.PADDING;
                                    r38.clear();
                                    r37.clear();
                                    r36.clear();
                                    size = r12.size();
                                    posY = i;
                                    for (i6 = posY; i6 < size; i6++) {
                                        if (posY < ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 2)) {
                                            posY = ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 3);
                                        }
                                    }
                                    int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - i9) - (CFG.PADDING * 2));
                                    r12.add(new AnonymousClass15(0, 0, width4, Math.max(posY, iMin2)));
                                    ((MenuElement) r12.get(r12.size() - 1)).setClickable(true);
                                    initMenu(null, i8, i9, width4, iMin2, r12, true);
                                }
                            } catch (Exception e2) {
                                e = e2;
                                arrayList2 = arrayList;
                                i2 = 1;
                                CFG.exceptionStack(e);
                                r12 = arrayList2;
                                r38 = r33;
                                r37 = r34;
                                r36 = r35;
                                boxH = height4;
                                int i210 = height4 + CFG.PADDING;
                                int i211 = width4 - (i10 * 2);
                                r12.add(new AnonymousClass7(Game.lang.get("Enemies") + ": " + Game.lang.get("SecondLine"), CFG.FONT_REGULAR_SMALL, -1, i10, i210, i211, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                                int height6 = i210 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + CFG.PADDING;
                                r12.add(new AnonymousClass8(Game.lang.get("Enemies") + ": " + Game.lang.get("FirstLine"), CFG.FONT_REGULAR_SMALL, -1, i10, height6, i211, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                                height = height6 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + (CFG.PADDING * 2) + CFG.PADDING;
                                i3 = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - (battleWidth / 2);
                                width2 = width;
                                i4 = i;
                                while (i4 < firstLine.size()) {
                                    if (firstLine.get(i4) == null) {
                                        r12.add(new AnonymousClass11(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(firstLine.get(i4).aR.uID).Line), width2, height, i4, 0, ArmyManager.lArmy.get(firstLine.get(i4).aR.uID).get(firstLine.get(i4).aR.aID).AttackRange, false, true));
                                    } else if (i4 >= i3) {
                                        r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                    } else {
                                        r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                    }
                                    width2 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                                    i4++;
                                    i2 = 1;
                                }
                                height2 = height + ((MenuElement) r12.get(r12.size() - i2)).getHeight();
                                width3 = i10;
                                while (i5 < secondLineReg.size()) {
                                    if (secondLineReg.get(i5) == null) {
                                        r12.add(new AnonymousClass14(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(secondLineReg.get(i5).aR.uID).Line), width3, height2, i5, 0, ArmyManager.lArmy.get(secondLineReg.get(i5).aR.uID).get(secondLineReg.get(i5).aR.aID).AttackRange, true, true));
                                    } else if (i5 >= i3) {
                                        r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                    } else {
                                        r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                    }
                                    width3 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                                }
                                ((MenuElement) r12.get(r12.size() - 1)).getHeight();
                                int i212 = CFG.PADDING;
                                r38.clear();
                                r37.clear();
                                r36.clear();
                                size = r12.size();
                                posY = i;
                                while (i6 < size) {
                                    if (posY < ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 2)) {
                                        posY = ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 3);
                                    }
                                }
                                int iMin3 = Math.min(posY, (CFG.GAME_HEIGHT - i9) - (CFG.PADDING * 2));
                                r12.add(new AnonymousClass15(0, 0, width4, Math.max(posY, iMin3)));
                                ((MenuElement) r12.get(r12.size() - 1)).setClickable(true);
                                initMenu(null, i8, i9, width4, iMin3, r12, true);
                            }
                        } catch (Exception e3) {
                            e = e3;
                            r35 = arrayList4;
                            r34 = arrayList3;
                            r33 = arrayList2;
                            arrayList2 = arrayList;
                            i2 = 1;
                            i = 0;
                            CFG.exceptionStack(e);
                            r12 = arrayList2;
                            r38 = r33;
                            r37 = r34;
                            r36 = r35;
                            boxH = height4;
                            int i213 = height4 + CFG.PADDING;
                            int i214 = width4 - (i10 * 2);
                            r12.add(new AnonymousClass7(Game.lang.get("Enemies") + ": " + Game.lang.get("SecondLine"), CFG.FONT_REGULAR_SMALL, -1, i10, i213, i214, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                            int height7 = i213 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + CFG.PADDING;
                            r12.add(new AnonymousClass8(Game.lang.get("Enemies") + ": " + Game.lang.get("FirstLine"), CFG.FONT_REGULAR_SMALL, -1, i10, height7, i214, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                            height = height7 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + (CFG.PADDING * 2) + CFG.PADDING;
                            i3 = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - (battleWidth / 2);
                            width2 = width;
                            i4 = i;
                            while (i4 < firstLine.size()) {
                                if (firstLine.get(i4) == null) {
                                    r12.add(new AnonymousClass11(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(firstLine.get(i4).aR.uID).Line), width2, height, i4, 0, ArmyManager.lArmy.get(firstLine.get(i4).aR.uID).get(firstLine.get(i4).aR.aID).AttackRange, false, true));
                                } else if (i4 >= i3) {
                                    r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                } else {
                                    r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
                                }
                                width2 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                                i4++;
                                i2 = 1;
                            }
                            height2 = height + ((MenuElement) r12.get(r12.size() - i2)).getHeight();
                            width3 = i10;
                            while (i5 < secondLineReg.size()) {
                                if (secondLineReg.get(i5) == null) {
                                    r12.add(new AnonymousClass14(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(secondLineReg.get(i5).aR.uID).Line), width3, height2, i5, 0, ArmyManager.lArmy.get(secondLineReg.get(i5).aR.uID).get(secondLineReg.get(i5).aR.aID).AttackRange, true, true));
                                } else if (i5 >= i3) {
                                    r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                } else {
                                    r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
                                }
                                width3 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
                            }
                            ((MenuElement) r12.get(r12.size() - 1)).getHeight();
                            int i215 = CFG.PADDING;
                            r38.clear();
                            r37.clear();
                            r36.clear();
                            size = r12.size();
                            posY = i;
                            while (i6 < size) {
                                if (posY < ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 2)) {
                                    posY = ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 3);
                                }
                            }
                            int iMin4 = Math.min(posY, (CFG.GAME_HEIGHT - i9) - (CFG.PADDING * 2));
                            r12.add(new AnonymousClass15(0, 0, width4, Math.max(posY, iMin4)));
                            ((MenuElement) r12.get(r12.size() - 1)).setClickable(true);
                            initMenu(null, i8, i9, width4, iMin4, r12, true);
                        }
                    }
                    i2 = 1;
                    try {
                        width += ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getWidth() + CFG.PADDING;
                        if (armyDivision.civID == Game.player.iCivID) {
                            arrayList2.add(new AnonymousClass4(Images.pin, width, height4, Game.player.isPinned(armyDivision.key), armyDivision.key, buttonHeight));
                            arrayList2.add(new AnonymousClass5(Images.center, width, height4 + CFG.PADDING + buttonHeight, Game.player.isPinned(armyDivision.key), armyDivision.key, buttonHeight));
                            width += ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getWidth() + CFG.PADDING;
                        }
                        int i30 = i;
                        while (i30 < armyDivision.iArmyRegimentSize) {
                            int i31 = armyDivision.lArmyRegiment.get(i30).num;
                            int i32 = 1;
                            for (int i33 = i30 + 1; i33 < armyDivision.iArmyRegimentSize && armyDivision.lArmyRegiment.get(i30).uID == armyDivision.lArmyRegiment.get(i33).uID && armyDivision.lArmyRegiment.get(i30).aID == armyDivision.lArmyRegiment.get(i33).aID; i33++) {
                                i30++;
                                i32++;
                                i31 += armyDivision.lArmyRegiment.get(i30).num;
                            }
                            String str4 = str;
                            arrayList2.add(new AnonymousClass6(str4 + i31, i32, armyDivision.civID, width + 0, height4, armyDivision.lArmyRegiment.get(i30).uID, armyDivision.lArmyRegiment.get(i30).aID, false));
                            width += ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getWidth() + CFG.PADDING;
                            i30++;
                            str = str4;
                        }
                        height4 = ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getPosY() + ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getHeight() + i11;
                        width = i10;
                        r12 = arrayList2;
                        r38 = r33;
                        r37 = r34;
                        r36 = r35;
                    } catch (Exception e4) {
                        e = e4;
                        CFG.exceptionStack(e);
                        r12 = arrayList2;
                        r38 = r33;
                        r37 = r34;
                        r36 = r35;
                    }
                } catch (Exception e5) {
                    e = e5;
                    r35 = arrayList4;
                    r34 = arrayList3;
                    r33 = arrayList2;
                    arrayList2 = arrayList;
                    i2 = i17;
                }
            } catch (Exception e6) {
                e = e6;
                r35 = arrayList4;
                r34 = arrayList3;
                r33 = arrayList2;
                i = 0;
                arrayList2 = arrayList;
                i2 = 1;
            }
        } catch (Exception e7) {
            e = e7;
            r35 = arrayList4;
            r34 = arrayList3;
            r33 = arrayList2;
            i = 0;
            arrayList2 = arrayList;
            i2 = 1;
            width = i10;
        }
        boxH = height4;
        int i216 = height4 + CFG.PADDING;
        int i217 = width4 - (i10 * 2);
        r12.add(new AnonymousClass7(Game.lang.get("Enemies") + ": " + Game.lang.get("SecondLine"), CFG.FONT_REGULAR_SMALL, -1, i10, i216, i217, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        int height8 = i216 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + CFG.PADDING;
        r12.add(new AnonymousClass8(Game.lang.get("Enemies") + ": " + Game.lang.get("FirstLine"), CFG.FONT_REGULAR_SMALL, -1, i10, height8, i217, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        height = height8 + ((MenuElement) r12.get(r12.size() - i2)).getHeight() + (CFG.PADDING * 2) + CFG.PADDING;
        i3 = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - (battleWidth / 2);
        width2 = width;
        i4 = i;
        while (i4 < firstLine.size()) {
            if (firstLine.get(i4) == null) {
                r12.add(new AnonymousClass11(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(firstLine.get(i4).aR.uID).Line), width2, height, i4, 0, ArmyManager.lArmy.get(firstLine.get(i4).aR.uID).get(firstLine.get(i4).aR.aID).AttackRange, false, true));
            } else if (i4 >= i3 || i4 >= i3 + battleWidth) {
                r12.add(new AnonymousClass10(Images.battleArmy2, width2, height));
            } else {
                r12.add(new AnonymousClass9(Images.battleArmy2, width2, height));
            }
            width2 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
            i4++;
            i2 = 1;
        }
        height2 = height + ((MenuElement) r12.get(r12.size() - i2)).getHeight();
        width3 = i10;
        for (i5 = i; i5 < secondLineReg.size(); i5++) {
            if (secondLineReg.get(i5) == null) {
                r12.add(new AnonymousClass14(armyDivision.civID, InGame_Battle.getImageRegimentID(ArmyManager.lUnitsTypes.get(secondLineReg.get(i5).aR.uID).Line), width3, height2, i5, 0, ArmyManager.lArmy.get(secondLineReg.get(i5).aR.uID).get(secondLineReg.get(i5).aR.aID).AttackRange, true, true));
            } else if (i5 >= i3 || i5 >= i3 + battleWidth) {
                r12.add(new AnonymousClass13(Images.battleArmy2, width3, height2));
            } else {
                r12.add(new AnonymousClass12(Images.battleArmy2, width3, height2));
            }
            width3 += ((MenuElement) r12.get(r12.size() - 1)).getWidth();
        }
        ((MenuElement) r12.get(r12.size() - 1)).getHeight();
        int i218 = CFG.PADDING;
        r38.clear();
        r37.clear();
        r36.clear();
        size = r12.size();
        posY = i;
        while (i6 < size) {
            if (posY < ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 2)) {
                posY = ((MenuElement) r12.get(i6)).getPosY() + ((MenuElement) r12.get(i6)).getHeight() + (CFG.PADDING * 3);
            }
        }
        int iMin5 = Math.min(posY, (CFG.GAME_HEIGHT - i9) - (CFG.PADDING * 2));
        r12.add(new AnonymousClass15(0, 0, width4, Math.max(posY, iMin5)));
        ((MenuElement) r12.get(r12.size() - 1)).setClickable(true);
        initMenu(null, i8, i9, width4, iMin5, r12, true);
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
