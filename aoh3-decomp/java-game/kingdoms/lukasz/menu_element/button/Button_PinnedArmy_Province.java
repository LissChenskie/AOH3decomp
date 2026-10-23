package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleArmy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_PinnedArmy_Province extends Button {
    public int civID;
    public Image generalImage;
    public int iActiveGeneralIMG_ID = -1;
    public int iArmyNum = -4894584;
    public int iLastTurnID = -975159;
    public int iProvinceID;
    public String key;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button_PinnedArmy_Province$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceInfo_Army();
        }
    }

    public Button_PinnedArmy_Province(int i, String str, int i2, int i3, int i4) {
        this.key = null;
        this.civID = i;
        init("", CFG.FONT_BOLD_SMALL, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.pinnedGeneralFrame).getWidth(), getButtonHeight(), true, true, false, false);
        this.key = str;
        this.iProvinceID = i4;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.pinnedGeneralFrame).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(this.civID, this.key);
        if (armyPosFindArmy_FullCheck == null) {
            Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"));
            return;
        }
        if (armyPosFindArmy_FullCheck.iProvinceID >= 0 && Game.activeArmySize == 1 && Game.activeArmy.get(0).key.equals(this.key)) {
            Game.mapCoords.centerToProvinceID(armyPosFindArmy_FullCheck.iProvinceID);
            return;
        }
        Game.setActiveArmy(armyPosFindArmy_FullCheck.iProvinceID, this.key);
        InGame_ProvinceArmy.iActiveID = 0;
        InGame_ProvinceArmy.sActiveKEY = this.key;
        Game.menuManager.rebuildInGame_ProvinceArmy();
        Game.menuManager.rebuildInGame_ProvinceArmy_HideMenus();
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.animationHover.resetAnimationData();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(this.civID, this.key);
        if (armyPosFindArmy_FullCheck != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.civID, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral == null ? Game.lang.get("NoGeneral") : Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.n));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getProvinceName(), IlLkpaQxs.hhEf, Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            while (i < Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize) {
                if (ArmyManager.lUnitsTypes.get(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID).Line < 2) {
                    int i2 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).num;
                    for (int i3 = i + 1; i3 < Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i3).uID && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).aID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i3).aID; i3++) {
                        i++;
                        i2 += Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).num;
                    }
                    int i4 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).civID;
                    arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy((!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i4 == Game.player.iCivID || DiplomacyManager.isAlly(i4, Game.player.iCivID)) ? "" + i2 : GameValues.fog.TEXT_UNKNOWN_MANPOWER, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).aID, i > 0 ? CFG.PADDING : 0));
                }
                i++;
            }
            int i5 = 0;
            while (i5 < Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize) {
                if (ArmyManager.lUnitsTypes.get(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).uID).Line >= 2) {
                    int i6 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).num;
                    for (int i7 = i5 + 1; i7 < Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).uID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i7).uID && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).aID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i7).aID; i7++) {
                        i5++;
                        i6 += Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).num;
                    }
                    int i8 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).civID;
                    arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy((!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i8 == Game.player.iCivID || DiplomacyManager.isAlly(i8, Game.player.iCivID)) ? "" + i6 : GameValues.fog.TEXT_UNKNOWN_MANPOWER, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).uID, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).aID, i5 > 0 ? CFG.PADDING : 0));
                }
                i5++;
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image;
        try {
            if (Game_Calendar.TURN_ID != this.iLastTurnID) {
                this.iLastTurnID = Game_Calendar.TURN_ID;
                Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(this.civID, this.key);
                if (armyPosFindArmy_FullCheck == null || armyPosFindArmy_FullCheck.iProvinceID != this.iProvinceID) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildInGame_ProvinceInfo_Army"));
                } else {
                    if (Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral == null) {
                        this.iActiveGeneralIMG_ID = -1;
                        Image image2 = this.generalImage;
                        if (image2 != null) {
                            image2.dispose();
                            this.generalImage = null;
                        }
                    } else if (this.iActiveGeneralIMG_ID != Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.g) {
                        this.iActiveGeneralIMG_ID = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.g;
                        Image image3 = this.generalImage;
                        if (image3 != null) {
                            image3.dispose();
                            this.generalImage = null;
                        }
                        if (Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.sI != null) {
                            if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short() + Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.sI + ".png").exists()) {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short() + Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.sI + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            } else if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short_H() + Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.sI + ".png").exists()) {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short_H() + Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.sI + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            }
                        }
                        if (this.generalImage == null) {
                            if (FileManager.loadFile("game/generals/" + GeneralManager.getGeneralsImgPath(this.civID) + CFG.getRescouresPath_Short() + Game.getCiv(this.civID).iGroupID + "/" + this.iActiveGeneralIMG_ID + ".png").exists()) {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(this.civID) + CFG.getRescouresPath_Short() + Game.getCiv(this.civID).iGroupID + "/" + this.iActiveGeneralIMG_ID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            } else {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(this.civID) + CFG.getRescouresPath_Short() + Game.getCiv(this.civID).iGroupID + "/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            }
                        }
                    }
                    if (this.iArmyNum != Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmy) {
                        this.iArmyNum = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmy;
                        int i3 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).civID;
                        setText((!Game.FOG_OF_WAR || !GameValues.fog.HIDE_ARMIES || i3 == Game.player.iCivID || DiplomacyManager.isAlly(i3, Game.player.iCivID)) ? Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).sArmy : GameValues.fog.TEXT_UNKNOWN_ARMIES);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setShader(Renderer.shaderAlpha);
        try {
            if (this.iActiveGeneralIMG_ID < 0 || (image = this.generalImage) == null) {
                Game.generalManager.noGeneral.getTexture().bind(1);
            } else {
                image.getTexture().bind(1);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.pinnedGeneralMask).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        if (getIsHovered() || z) {
            ImageManager.getImage(Images.pinnedGeneralFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        }
        ImageManager.getImage(Images.pinnedGeneralFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((((getPosY() + getHeight()) - this.iTextHeight) - CFG.PADDING) - (CFG.PADDING / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        try {
            if (Game.activeArmySize == 1 && Game.activeArmy.get(0).key.equals(this.key)) {
                return Colors.HOVER_GOLD;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return super.getColor(z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return Game.soundsManager.getSelectedArmy();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        return this.sText;
    }
}
