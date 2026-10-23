package aoc.kingdoms.lukasz.menusInGame.RecruitArmy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextArmies;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RecruitSameType extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int firstLineElemID;
    public static int firstLineUnits;
    public static int flankLineElemID;
    public static int flankLineUnits;
    public static long lTime;
    public static int supportLineElemID;
    public static int supportLineUnits;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitSameType$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        String key;

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                        return;
                    }
                    int armyKeyID = Game.getProvince(this.id).getArmyKeyID(this.key);
                    if (armyKeyID < 0) {
                        for (int i = 0; i < Game.getProvincesSize(); i++) {
                            int armyKeyID2 = Game.getProvince(i).getArmyKeyID(this.key, Game.player.iCivID);
                            if (armyKeyID2 >= 0) {
                                this.id = i;
                                armyKeyID = armyKeyID2;
                                break;
                            }
                        }
                    }
                    if (armyKeyID >= 0) {
                        InGame_Battlefield.armyDivision = Game.getProvince(this.id).getArmy(armyKeyID);
                        if (InGame_Battlefield.armyDivision != null) {
                            Game.menuManager.rebuildInGame_Battlefield();
                        } else {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(uiwPYaNhJS.FRfdxAaBjPoLA + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText2(String str) {
            this.key = str;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitSameType$2, reason: invalid class name */
    class AnonymousClass2 extends MenuTitleIMG_DoubleText {
        AnonymousClass2(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RecruitSameType.lTime;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InGame_RecruitSameType() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title1Red).getHeight();
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int iMax = CFG.PADDING;
        int iMax2 = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        firstLineUnits = 0;
        firstLineElemID = 0;
        flankLineUnits = 0;
        supportLineUnits = 0;
        Game.ArmyPos armyPosFindArmy = Game.findArmy(Game.player.iCivID, InGame_RecruitArmy.key);
        if (armyPosFindArmy != null) {
            int i4 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6) + iMax;
            int i5 = Images.boxTitleBORDERWIDTH;
            if (Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral == null) {
                arrayList.add(new ButtonArmyNoGeneral2_Armies(Game.lang.get("NoGeneral"), Game.player.iCivID, i2 + i5, i4, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).key, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).civID, armyPosFindArmy.iProvinceID));
            } else {
                arrayList.add(new ButtonArmyGeneral2_Armies(Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.n, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).civID, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.getAttack(), Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.getDefense(), i2 + i5, i4, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.g, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.d, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.m, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.y, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).key, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).civID, armyPosFindArmy.iProvinceID, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.sI, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).armyGeneral.getCombatExperience()));
            }
            int width2 = i2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i6 = 0;
            while (i6 < Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).iArmyRegimentSize) {
                int i7 = Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).num;
                int i8 = 1;
                for (int i9 = i6 + 1; i9 < Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).iArmyRegimentSize && Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).uID == Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i9).uID && Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).aID == Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i9).aID; i9++) {
                    i6++;
                    i8++;
                    i7 += Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).num;
                }
                if (ButtonArmyBattle.getButtonWidth() + width2 >= width - i2) {
                    break;
                }
                arrayList.add(new ButtonArmyBattle("" + i7, i8, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).civID, width2 + i5, i4, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).uID, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).lArmyRegiment.get(i6).aID, false));
                width2 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                i6++;
            }
            arrayList.get(arrayList.size() - 1).getPosY();
            arrayList.get(arrayList.size() - 1).getHeight();
            int i10 = CFG.PADDING;
            String provinceName = Game.getProvince(Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).iArmyOfProvinceID).getProvinceName();
            String numberWithSpaces = CFG.getNumberWithSpaces("" + Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).iArmy);
            int i11 = (width * 3) / 10;
            int i12 = i2 + CFG.PADDING + i11;
            int i13 = width - (i2 * 2);
            i = 0;
            arrayList.add(new TextArmies(provinceName, numberWithSpaces, i12, iMax, (Math.max(width2, i13) - i11) - CFG.PADDING, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).key, Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).civID, armyPosFindArmy.iProvinceID, i13));
            arrayList.add(new AnonymousClass1(Game.lang.get("ArmyDeployment"), Images.battleWidth, i2 + i5, iMax, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), ImageManager.getImage(Images.battleWidth).getWidth(), armyPosFindArmy.iProvinceID, true));
            arrayList.get(arrayList.size() - 1).setText2(Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(armyPosFindArmy.iID).key);
            int size = arrayList.size();
            int posY = 0;
            for (int i14 = 0; i14 < size; i14++) {
                if (posY < arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + CFG.PADDING) {
                    posY = arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + CFG.PADDING;
                }
            }
            iMax = posY;
        } else {
            i2 = i2;
            otherMenuPosX_2 = otherMenuPosX_2;
            height = height;
            width = width;
            iMax2 = iMax2;
            i = 0;
        }
        int size2 = arrayList.size();
        int i15 = width;
        List<MenuElement> recruitMenuElements = InGame_RecruitArmy.getRecruitMenuElements(iMax, i15, i2, CFG.PADDING, iMax2);
        int size3 = recruitMenuElements.size();
        for (int i16 = i; i16 < size3; i16++) {
            arrayList.add(recruitMenuElements.get(i16));
            iMax = Math.max(iMax, recruitMenuElements.get(i16).getPosY() + recruitMenuElements.get(i16).getHeight() + CFG.PADDING);
        }
        firstLineElemID += size2;
        flankLineElemID += size2;
        supportLineElemID += size2;
        int size4 = arrayList.size();
        int posY2 = i;
        for (int i17 = posY2; i17 < size4; i17++) {
            if (posY2 < arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2)) {
                posY2 = arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(i, i, i15, Math.max(posY2, iMin)));
        initMenu(new AnonymousClass2(Game.lang.get("RecruitAndAssignToTheArmy"), Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(Game.player.iCivID), false, false, Images.title1Red), otherMenuPosX_2, height, i15, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = i;
        updateLanguage();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop, Images.insideBot);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        if (Game.getCiv(Game.player.iCivID).diplomacy.isAtWar()) {
            spriteBatch.setColor(InGame_RecruitArmy.sparksColor);
            InGame_RecruitArmy.sparksAnimation.draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Images.sparkHeight, false, true);
            spriteBatch.setColor(Color.WHITE);
        }
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        try {
            firstLineUnits = 0;
            flankLineUnits = 0;
            supportLineUnits = 0;
            Game.ArmyPos armyPosFindArmy = Game.findArmy(Game.player.iCivID, InGame_RecruitArmy.key);
            if (armyPosFindArmy != null) {
                ArmyDivision army = Game.getProvince(armyPosFindArmy.iProvinceID).getArmy(InGame_RecruitArmy.key);
                for (int i = 0; i < army.iArmyRegimentSize; i++) {
                    if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i).uID).Line == 0) {
                        firstLineUnits++;
                    } else if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i).uID).Line == 1) {
                        flankLineUnits++;
                    } else {
                        supportLineUnits++;
                    }
                }
            }
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getArmyRecruitSize(); i2++) {
                for (int i3 = 0; i3 < Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i2).size(); i3++) {
                    if (InGame_RecruitArmy.key.equals(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i2).get(i3).toArmyKey)) {
                        if (ArmyManager.lUnitsTypes.get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i2).get(i3).unitID).Line == 0) {
                            firstLineUnits++;
                        } else if (ArmyManager.lUnitsTypes.get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i2).get(i3).unitID).Line == 1) {
                            flankLineUnits++;
                        } else {
                            supportLineUnits++;
                        }
                    }
                }
            }
            getMenuElement(firstLineElemID).setText(Game.lang.get("FirstLine") + ": " + firstLineUnits);
            getMenuElement(flankLineElemID).setText(Game.lang.get("Flank") + ": " + flankLineUnits);
            getMenuElement(supportLineElemID).setText(Game.lang.get("Support") + ": " + supportLineUnits);
        } catch (Exception unused) {
        }
    }
}
