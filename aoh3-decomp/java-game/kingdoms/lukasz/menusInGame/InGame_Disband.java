package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReorganize;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Disband extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static ArmyDivision armyLeft = new ArmyDivision(0, 0, new ArrayList());
    public static ArmyDivision armyRight = new ArmyDivision(0, 0, new ArrayList());
    public static long lTime = 0;
    public static boolean restartAnimation = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Disband.this.setVisible(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonReorganize {
        AnonymousClass2(String str, String str2, int i, int i2, int i3) {
            super(str, str2, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = InGame_Disband.armyLeft.iArmyRegimentSize - 1; i >= 0; i--) {
                InGame_Disband.armyRight.addRegiment(InGame_Disband.armyLeft.lArmyRegiment.get(i));
                InGame_Disband.armyLeft.removeRegiment(i);
            }
            Game.menuManager.rebuildInGame_DisbandUnits();
            InGame_Disband.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < InGame_Disband.armyLeft.iArmyRegimentSize; i2++) {
                i += InGame_Disband.armyLeft.lArmyRegiment.get(i2).num;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("DisbandUnits") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getManpowerRecoveryFromADisbandedArmy(Game.player.iCivID) * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_DISBAND, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Disband.armyRight.addRegiment(InGame_Disband.armyLeft.lArmyRegiment.get(getCurrent()));
            InGame_Disband.armyLeft.removeRegiment(getCurrent());
            Game.menuManager.rebuildInGame_DisbandUnits();
            InGame_Disband.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Disband.armyRight.iArmyRegimentSize > 0) {
                if (!Game.getProvince(InGame_Disband.armyLeft.provinceID).disbandRegiment(InGame_Disband.armyLeft.key, InGame_Disband.armyRight.lArmyRegiment)) {
                    Game.menuManager.addToast_Error("ArmyNotFound");
                } else if (InGame_Disband.armyLeft.key != null) {
                    Game.setActiveArmy(InGame_Disband.armyLeft.provinceID, InGame_Disband.armyLeft.key);
                } else {
                    Game.clearActiveArmy();
                }
                InGame_Disband.this.setVisible(false);
                if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                    Game.menuManager.rebuildInGame_ProvinceArmy();
                }
                if (Game.menuManager.getVisibleInGame_Generals()) {
                    Game.menuManager.rebuildInGame_Generals();
                    Game.menuManager.setVisibleInGame_Generals(true);
                    InGame_Generals.lTime = 0L;
                }
                if (Game.menuManager.getVisibleInGame_Armies()) {
                    Game.menuManager.rebuildInGame_Armies(false, false);
                    Game.menuManager.setVisibleInGame_Armies(true);
                    InGame_Armies.lTime = 0L;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < InGame_Disband.armyLeft.iArmyRegimentSize; i++) {
                int i2 = InGame_Disband.armyLeft.lArmyRegiment.get(i).num;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getManpowerRecoveryFromADisbandedArmy(Game.player.iCivID) * 100.0f, 10) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER_DISBAND, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return super.getClickable() && InGame_Disband.armyRight.iArmyRegimentSize > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonReorganize {
        AnonymousClass5(String str, String str2, int i, int i2, int i3) {
            super(str, str2, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = InGame_Disband.armyRight.iArmyRegimentSize - 1; i >= 0; i--) {
                InGame_Disband.armyLeft.addRegiment(InGame_Disband.armyRight.lArmyRegiment.get(i));
                InGame_Disband.armyRight.removeRegiment(i);
            }
            Game.menuManager.rebuildInGame_DisbandUnits();
            InGame_Disband.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < InGame_Disband.armyRight.iArmyRegimentSize; i2++) {
                i += InGame_Disband.armyRight.lArmyRegiment.get(i2).num;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cancel") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReorganize, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonArmy {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Disband.armyLeft.addRegiment(InGame_Disband.armyRight.lArmyRegiment.get(getCurrent()));
            InGame_Disband.armyRight.removeRegiment(getCurrent());
            Game.menuManager.rebuildInGame_DisbandUnits();
            InGame_Disband.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Disband$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG_FlagCenter {
        AnonymousClass7(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Disband.armyLeft.civID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Disband.lTime;
        }
    }

    public InGame_Disband() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 4;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING * 2;
        int i3 = width / 4;
        int buttonWidth = i3 - (ButtonArmy.getButtonWidth() / 2);
        int i4 = 0;
        for (int i5 = 0; i5 < armyLeft.iArmyRegimentSize; i5++) {
            i4 += armyLeft.lArmyRegiment.get(i5).num;
        }
        int i6 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, i2, (i6 - CFG.PADDING) / 2, true));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i2 + i2;
        int i7 = width / 2;
        arrayList.add(new AnonymousClass2(Game.lang.get("Army"), "" + i4, 0, height2, i7));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i8 = 0;
        while (i8 < armyLeft.iArmyRegimentSize) {
            int i9 = i8;
            arrayList.add(new AnonymousClass3("" + armyLeft.lArmyRegiment.get(i8).num, 1, armyLeft.civID, buttonWidth, height3, armyLeft.lArmyRegiment.get(i8).uID, armyLeft.lArmyRegiment.get(i8).aID, i9, -1));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + i2;
            i8 = i9 + 1;
        }
        int buttonWidth2 = (i7 + i3) - (ButtonArmy.getButtonWidth() / 2);
        int i10 = 0;
        for (int i11 = 0; i11 < armyRight.iArmyRegimentSize; i11++) {
            i10 += armyRight.lArmyRegiment.get(i11).num;
        }
        arrayList.add(new AnonymousClass4(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i + ((i6 - CFG.PADDING) / 2) + CFG.PADDING, i2, (i6 - CFG.PADDING) / 2, true));
        int height4 = arrayList.get(arrayList.size() - 1).getHeight() + i2 + i2;
        arrayList.add(new AnonymousClass5(Game.lang.get("Disband"), "" + i10, i7, height4, i7));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        for (int i12 = 0; i12 < armyRight.iArmyRegimentSize; i12++) {
            arrayList.add(new AnonymousClass6("" + armyRight.lArmyRegiment.get(i12).num, 1, armyRight.civID, buttonWidth2, height5, armyRight.lArmyRegiment.get(i12).uID, armyRight.lArmyRegiment.get(i12).aID, i12, -1));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + i2;
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i13 = 0; i13 < size; i13++) {
            if (posY < arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + CFG.PADDING;
            }
        }
        int i14 = posY + i2;
        int iMin = Math.min(Math.max(ImageManager.getImage(Images.recruitArmyOver).getHeight(), i14), (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i14, iMin)));
        initMenu(new AnonymousClass7("", Game.getProvince(armyLeft.provinceID).getProvinceName(), false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    public static void setArmyLeft(ArmyDivision armyDivision) {
        armyLeft = null;
        armyRight = null;
        ArrayList arrayList = new ArrayList();
        int size = armyDivision.lArmyRegiment.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(armyDivision.lArmyRegiment.get(i));
        }
        ArmyDivision armyDivision2 = new ArmyDivision(armyDivision.civID, armyDivision.provinceID, arrayList);
        armyLeft = armyDivision2;
        armyDivision2.key = armyDivision.key;
        armyRight = new ArmyDivision(armyDivision.civID, armyDivision.provinceID, new ArrayList());
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + (getWidth() / 2) + i3, getPosY() + i2, getWidth() / 2, getHeight());
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (getWidth() / 2)) + i3, getPosY() + i2, getWidth() / 2, getHeight(), true, false);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        if (restartAnimation) {
            lTime = CFG.currentTimeMillis;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("DisbandUnits"));
    }
}
