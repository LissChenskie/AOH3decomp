package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReorganize;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ReorganizeUnits extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static ArmyDivision armyLeft = new ArmyDivision(0, 0, new ArrayList());
    public static ArmyDivision armyRight = new ArmyDivision(0, 0, new ArrayList());
    public static boolean restartAnimation = true;
    private long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReorganizeUnits.this.setVisible(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonArmy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReorganizeUnits.armyRight.addRegiment(InGame_ReorganizeUnits.armyLeft.lArmyRegiment.get(getCurrent()));
            InGame_ReorganizeUnits.armyLeft.removeRegiment(getCurrent());
            Game.menuManager.rebuildInGame_ReorganizeUnits();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID = Game.getProvince(InGame_ReorganizeUnits.armyLeft.provinceID).getArmyKeyID(InGame_ReorganizeUnits.armyLeft.key);
            if (armyKeyID < 0) {
                Game.menuManager.addToast_Error("ArmyNotFound");
                return;
            }
            if (InGame_ReorganizeUnits.armyLeft.iArmyRegimentSize <= 0 || InGame_ReorganizeUnits.armyRight.iArmyRegimentSize <= 0) {
                return;
            }
            Game.getProvince(InGame_ReorganizeUnits.armyLeft.provinceID).updateRegiment(armyKeyID, InGame_ReorganizeUnits.armyLeft.lArmyRegiment);
            Game.getProvince(InGame_ReorganizeUnits.armyLeft.provinceID).addArmy(new ArmyDivision(InGame_ReorganizeUnits.armyLeft.civID, InGame_ReorganizeUnits.armyLeft.provinceID, InGame_ReorganizeUnits.armyRight.lArmyRegiment));
            InGame_ReorganizeUnits.this.setVisible(false);
            if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                Game.menuManager.rebuildInGame_ProvinceArmy();
            }
            if (Game.menuManager.getVisibleInGame_Armies()) {
                Game.menuManager.rebuildInGame_Armies(false, false);
                Game.menuManager.setVisibleInGame_Armies(true);
                InGame_Armies.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return super.getClickable() && InGame_ReorganizeUnits.armyLeft.iArmyRegimentSize > 0 && InGame_ReorganizeUnits.armyRight.iArmyRegimentSize > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonArmy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReorganizeUnits.armyLeft.addRegiment(InGame_ReorganizeUnits.armyRight.lArmyRegiment.get(getCurrent()));
            InGame_ReorganizeUnits.armyRight.removeRegiment(getCurrent());
            Game.menuManager.rebuildInGame_ReorganizeUnits();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG_FlagCenter {
        AnonymousClass5(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_ReorganizeUnits.armyLeft.civID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ReorganizeUnits.this.lTime;
        }
    }

    public InGame_ReorganizeUnits() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 4;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i2 = CFG.PADDING * 2;
        int i3 = width / 4;
        int buttonWidth = i3 - (ButtonArmy.getButtonWidth() / 2);
        int i4 = 0;
        for (int i5 = 0; i5 < armyLeft.iArmyRegimentSize; i5++) {
            i4 += armyLeft.lArmyRegiment.get(i5).num;
        }
        int i6 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, i2, (i6 - CFG.PADDING) / 2, true));
        int height2 = i2 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        String str = "";
        int i7 = width / 2;
        arrayList.add(new ButtonReorganize(Game.lang.get("Army"), "" + i4, 0, height2, i7));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i8 = 0;
        while (i8 < armyLeft.iArmyRegimentSize) {
            arrayList.add(new AnonymousClass2(str + armyLeft.lArmyRegiment.get(i8).num, 1, armyLeft.civID, buttonWidth, height3, armyLeft.lArmyRegiment.get(i8).uID, armyLeft.lArmyRegiment.get(i8).aID, i8, -1));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + i2;
            i8++;
            str = str;
        }
        String str2 = str;
        int buttonWidth2 = (i7 + i3) - (ButtonArmy.getButtonWidth() / 2);
        int i9 = 0;
        for (int i10 = 0; i10 < armyRight.iArmyRegimentSize; i10++) {
            i9 += armyRight.lArmyRegiment.get(i10).num;
        }
        arrayList.add(new AnonymousClass3(Game.lang.get("Save"), CFG.FONT_REGULAR, -1, i + ((i6 - CFG.PADDING) / 2) + CFG.PADDING, i2, (i6 - CFG.PADDING) / 2, true));
        int height4 = i2 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new ButtonReorganize(Game.lang.get("NewArmy"), str2 + i9, i7, height4, i7));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        for (int i11 = 0; i11 < armyRight.iArmyRegimentSize; i11++) {
            arrayList.add(new AnonymousClass4(str2 + armyRight.lArmyRegiment.get(i11).num, 1, armyRight.civID, buttonWidth2, height5, armyRight.lArmyRegiment.get(i11).uID, armyRight.lArmyRegiment.get(i11).aID, i11, -1));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + i2;
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i12 = 0; i12 < size; i12++) {
            if (posY < arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING;
            }
        }
        int i13 = posY + i2;
        int iMin = Math.min(Math.max(ImageManager.getImage(Images.recruitArmyOver).getHeight(), i13), (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i13, iMin)));
        initMenu(new AnonymousClass5("", Game.getProvince(armyLeft.provinceID).getProvinceName(), false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
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
        int i3 = this.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - this.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
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
            this.lTime = CFG.currentTimeMillis;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("ReorganizeUnits"));
    }
}
