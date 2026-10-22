package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonAdvisor extends Button {
    public Image advisorImage;
    public int iAdvisorType;
    public int iCivID;
    public int iHireModeID;
    public int imageID;

    public ButtonAdvisor(int i, int i2, String str, int i3, int i4, int i5, int i6, String str2) {
        this.iHireModeID = -1;
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.generalFrame).getWidth(), getButtonHeight(), true, true, false, false);
        this.iCivID = i4;
        this.imageID = i3;
        this.iHireModeID = i5;
        this.iAdvisorType = i6;
        if (str2 != null) {
            try {
                if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short() + str2 + ".png").exists()) {
                    this.advisorImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short() + str2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                } else if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short_H() + str2 + ".png").exists()) {
                    this.advisorImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short_H() + str2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (this.advisorImage == null) {
            if (FileManager.loadFile("game/advisors/" + AdvisorManager.getAdvisorsImgPath() + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/" + i3 + ".png").exists()) {
                this.advisorImage = new Image(ImageManager.loadTexture_RGB888("game/advisors/" + AdvisorManager.getAdvisorsImgPath() + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/" + i3 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                return;
            }
            try {
                this.advisorImage = new Image(ImageManager.loadTexture_RGB888("game/advisors/" + AdvisorManager.getAdvisorsImgPath() + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } catch (Exception e2) {
                this.advisorImage = new Image(ImageManager.loadTexture_RGB888("game/advisors/advisors/" + CFG.getRescouresPath_Short() + "noAdvisor.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                CFG.exceptionStack(e2);
            }
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.generalFrame).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.generalFrame).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.iHireModeID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("HireAdvisor") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            AdvisorManager advisorManager = Game.advisorManager;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(AdvisorManager.getAdvisorGroupName(this.iAdvisorType), CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + AdvisorManager.getRecruitGoldCost(Game.player.iCivID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + AdvisorManager.getRecruitCostLegacy(Game.player.iCivID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        if (AdvisorManager.getAdvisor(this.iAdvisorType).sName == null) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(AdvisorManager.getAdvisor(this.iAdvisorType).sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        AdvisorManager advisorManager2 = Game.advisorManager;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(AdvisorManager.getAdvisorGroupName(this.iAdvisorType), CFG.FONT_REGULAR_SMALL));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + AdvisorManager.getAdvisor(this.iAdvisorType).iLevel, Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Born") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + AdvisorManager.getAdvisor(this.iAdvisorType).iDayOfBirth + " " + Game_Calendar.getMonthName(AdvisorManager.getAdvisor(this.iAdvisorType).iMonthOfBirth) + " " + AdvisorManager.getAdvisor(this.iAdvisorType).iYearOfBirth, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - AdvisorManager.getAdvisor(this.iAdvisorType).iYearOfBirth)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (this.iCivID != Game.player.iCivID) {
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToFireAnAdvisor"), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void dispose() {
        Image image = this.advisorImage;
        if (image != null) {
            image.dispose();
            this.advisorImage = null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        }
        try {
            this.advisorImage.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        } catch (Exception unused) {
        }
        ImageManager.getImage(Images.generalFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iHireModeID;
    }
}
