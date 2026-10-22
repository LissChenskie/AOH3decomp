package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleArmy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
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
public class Button_PinnedArmy extends Button {
    public Image generalImage;
    public int iActiveGeneralIMG_ID = -1;
    public int iArmyNum = -4894584;
    public int iLastTurnID = -975159;
    public int iProvinceID;
    public String key;

    public Button_PinnedArmy(String str, int i, int i2) {
        this.key = null;
        init("", CFG.FONT_BOLD_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.pinnedGeneralFrame).getWidth(), getButtonHeight(), true, true, false, false);
        this.key = str;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.pinnedGeneralFrame).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, this.key);
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
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, this.key);
        if (armyPosFindArmy_FullCheck != null) {
            if (armyPosFindArmy_FullCheck.iProvinceID >= 0 && Game.activeArmySize == 1 && Game.activeArmy.get(0).key.equals(this.key)) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CenterToProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.center, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral != null) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral.n, "", Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getProvinceName(), "", Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            while (true) {
                int i2 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize;
                str = ALZmnpZHj.HhPN;
                if (i >= i2) {
                    break;
                }
                if (ArmyManager.lUnitsTypes.get(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID).Line < 2) {
                    int i3 = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).num;
                    for (int i4 = i + 1; i4 < Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmyRegimentSize && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i4).uID && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).aID == Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i4).aID; i4++) {
                        i++;
                        i3 += Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).num;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy(str + i3, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).uID, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i).aID, i > 0 ? CFG.PADDING : 0));
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
                    arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy(str + i6, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).uID, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).lArmyRegiment.get(i5).aID, i5 > 0 ? CFG.PADDING : 0));
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
                Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, this.key);
                if (armyPosFindArmy_FullCheck != null) {
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
                            if (FileManager.loadFile("game/generals/" + GeneralManager.getGeneralsImgPath(Game.player.iCivID) + CFG.getRescouresPath_Short() + Game.getCiv(Game.player.iCivID).iGroupID + "/" + this.iActiveGeneralIMG_ID + ".png").exists()) {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(Game.player.iCivID) + CFG.getRescouresPath_Short() + Game.getCiv(Game.player.iCivID).iGroupID + "/" + this.iActiveGeneralIMG_ID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            } else {
                                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(Game.player.iCivID) + CFG.getRescouresPath_Short() + Game.getCiv(Game.player.iCivID).iGroupID + "/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                            }
                        }
                    }
                    if (this.iArmyNum != Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmy) {
                        this.iArmyNum = Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iArmy;
                        setText(Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).sArmy);
                    }
                } else {
                    Game.player.removePinArmy(this.key);
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
