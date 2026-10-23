package aoc.kingdoms.lukasz.menusInGame.RecruitArmy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.MercenariesManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RecruitMercenaries extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int activeArmyID;
    public static long lTime;
    public static List<MercenariesManager.MercenaryArmy> mercenaryArmies;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            Game.menuManager.setVisibleInGame_Armies(false);
            InGame_RecruitArmy.actionCreateNewArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CreateNewArmy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("V", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, !CFG.isDesktop());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            Game.menuManager.setVisibleInGame_Armies(false);
            InGame.action3();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitRegiments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmyNoGeneral2_Armies {
        AnonymousClass3(String str, int i, int i2, int i3, String str2, int i4, int i5) {
            super(str, i, i2, i3, str2, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoGeneral"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            spriteBatch.setShader(Renderer.shaderAlpha);
            if (this.iCivID >= 0) {
                Game.getCiv(this.iCivID).getFlag().getTexture().bind(1);
            } else {
                ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
            }
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - ImageManager.getImage(Images.flagRect2Mask).getHeight()) + i2, ImageManager.getImage(Images.flagRect2Mask).getWidth(), ImageManager.getImage(Images.flagRect2Mask).getHeight());
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.flagRect2).draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - ImageManager.getImage(Images.flagRect2Mask).getHeight()) + i2, ImageManager.getImage(Images.flagRect2Mask).getWidth(), ImageManager.getImage(Images.flagRect2Mask).getHeight());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        int id;

        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost, 1), Images.gold);
                return;
            }
            int i = InGame_RecruitMercenaries.activeArmyID;
            int i2 = this.id;
            boolean z = i == i2;
            InGame_RecruitMercenaries.activeArmyID = i2;
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
                if (z) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
            } else {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("HireMercenaries"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mercenaries, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(uNBYrZVGzy.PnTkNaADaiHuj), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        int id;

        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost, 1), Images.gold);
                return;
            }
            int i = InGame_RecruitMercenaries.activeArmyID;
            int i2 = this.id;
            boolean z = i == i2;
            InGame_RecruitMercenaries.activeArmyID = i2;
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
                if (z) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
            } else {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("HireMercenaries"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mercenaries, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + InGame_RecruitMercenaries.mercenaryArmies.get(this.id).iCost), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ArmyWillBeRecruitedInstantly"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RecruitMercenaries.lTime;
        }
    }

    public InGame_RecruitMercenaries() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title1Red).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        activeArmyID = -1;
        Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        List<MercenariesManager.MercenaryArmy> list = mercenaryArmies;
        if (list != null) {
            list.clear();
        }
        mercenaryArmies = MercenariesManager.getMercenaryArmies(Game.player.iCivID);
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i3 = width - (i * 2);
        int i4 = ((i3 - CFG.PADDING) * 3) / 5;
        int i5 = ((i3 - CFG.PADDING) * 2) / 5;
        int i6 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int width3 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth();
        int i7 = 5;
        arrayList.add(new AnonymousClass1(Game.lang.get("CreateNewArmy"), Game_Calendar.IMG_MANPOWER, CFG.PADDING + i + i5, i2, i4, i6, width3, 0, true));
        arrayList.add(new AnonymousClass2(Game.lang.get(fTNtCctcBZcqKK.FthFwTpMWPn), Game_Calendar.IMG_MANPOWER, i, i2, i5, i6, width3, 0));
        int i8 = i;
        int height2 = i2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i9 = 0;
        while (i9 < mercenaryArmies.size()) {
            if (mercenaryArmies.get(i9).iUnitID.size() > 0) {
                int i10 = CFG.TEXT_HEIGHT + (CFG.PADDING * i7) + height2;
                int i11 = Images.boxTitleBORDERWIDTH;
                int iNextInt = Game.oR.nextInt(Game.getCivsSize() - 1) + 1;
                for (int i12 = 0; i12 < i7 && DiplomacyManager.isAtWar(Game.player.iCivID, iNextInt); i12++) {
                    iNextInt = Game.oR.nextInt(Game.getCivsSize() - 1) + 1;
                }
                arrayList.add(new AnonymousClass3(Game.lang.get("NoGeneral"), Game.player.iCivID, i8 + i11, i10, "", DiplomacyManager.isAtWar(Game.player.iCivID, iNextInt) ? 0 : iNextInt, -1));
                int width4 = i8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                int size = mercenaryArmies.get(i9).iUnitID.size();
                int i13 = 0;
                while (i13 < size) {
                    int i14 = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
                    int i15 = 1;
                    for (int i16 = i13 + 1; i16 < size && mercenaryArmies.get(i9).iUnitID.get(i13) == mercenaryArmies.get(i9).iUnitID.get(i16) && mercenaryArmies.get(i9).iArmyID.get(i13) == mercenaryArmies.get(i9).iArmyID.get(i16); i16++) {
                        i13++;
                        i15++;
                        i14 += Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
                    }
                    if (ButtonArmyBattle.getButtonWidth() + width4 >= width - i) {
                        break;
                    }
                    arrayList.add(new ButtonArmyBattle("" + i14, i15, Game.player.iCivID, width4 + i11, i10, mercenaryArmies.get(i9).iUnitID.get(i13).intValue(), mercenaryArmies.get(i9).iArmyID.get(i13).intValue(), false));
                    width4 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    i13++;
                }
                arrayList.get(arrayList.size() - 1).getPosY();
                arrayList.get(arrayList.size() - 1).getHeight();
                int i17 = CFG.PADDING;
                arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Mercenaries"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), CFG.getNumberWithSpaces("" + (mercenaryArmies.get(i9).iArmyID.size() * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE))));
                int size2 = arrayList.size();
                int posY = 0;
                for (int i18 = 0; i18 < size2; i18++) {
                    if (posY < arrayList.get(i18).getPosY() + arrayList.get(i18).getHeight() + CFG.PADDING) {
                        posY = arrayList.get(i18).getPosY() + arrayList.get(i18).getHeight() + CFG.PADDING;
                    }
                }
                int i19 = posY;
                arrayList.add(new AnonymousClass4(Game.lang.get("HireMercenaries"), "", Images.mercenaries, i, posY, (i3 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width2));
                arrayList.get(arrayList.size() - 1).setCurrent(i9);
                arrayList.add(new AnonymousClass5(Game.lang.get("Cost") + ": ", CFG.getNumberWithSpaces("" + mercenaryArmies.get(i9).iCost), Images.gold, CFG.PADDING + i + ((i3 - CFG.PADDING) / 2), i19, (i3 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width2));
                arrayList.get(arrayList.size() - 1).setCurrent(i9);
                i8 = i;
                height2 = i19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            i9++;
            width = width;
            i7 = 5;
        }
        int i20 = width;
        int size3 = arrayList.size();
        int posY2 = 0;
        for (int i21 = 0; i21 < size3; i21++) {
            if (posY2 < arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING) {
                posY2 = arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i20, Math.max(posY2, iMin)));
        initMenu(new AnonymousClass6(Game.lang.get("RecruitMercenaries"), false, false, Images.title500), otherMenuPosX_2, height, i20, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static final void confirm(int i) {
        if (MercenariesManager.recruitMercenaries(Game.player.iCivID, i, mercenaryArmies.get(activeArmyID))) {
            Game.menuManager.addToastGold(Game.lang.get(LBhZogys.PSqbbdbhBRsKBb), Images.v);
            Game.menuManager.setVisibleInGame_Armies(false);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
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
        if (z || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }
}
