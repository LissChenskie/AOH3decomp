package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Advantage2 extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int advantageID;
    public boolean canUnlock;
    public boolean haveAdvantage;
    public int iLevel;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public String sTextHover;

    public Button_Advantage2(int i, int i2, int i3, int i4, String str, String str2, int i5) {
        this.haveAdvantage = false;
        this.canUnlock = false;
        this.advantageID = i3;
        this.iLevel = i4;
        this.sTextHover = str;
        this.imageID = i5;
        float imageScale = getImageScale(i5) * 1.0f;
        this.iconWidth = (int) (ImageManager.getImage(i5).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i5).getHeight() * imageScale);
        init(str2, CFG.FONT_BOLD_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.advantagesOver).getWidth(), getButtonHeight(), true, true, false, false);
        if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, i4)) {
            this.haveAdvantage = true;
        } else if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).canUnlockAdvantage(i3, i4)) {
            this.canUnlock = true;
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.advantagesOver).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.advantagesOver).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (InGame_CivilizationAdvantages.iActiveCivID == Game.player.iCivID) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UnlockAdvantage"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(this.sTextHover + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (InGame_CivilizationAdvantages.iActiveCivID == Game.player.iCivID) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (AdvantagesManager.advantages.get(this.advantageID).RequiredTechID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnlockedTechnologiesRequired") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(TechnologyTree.lTechnology.get(AdvantagesManager.advantages.get(this.advantageID).RequiredTechID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("1", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.advantagesOver).getWidth(), ImageManager.getImage(Images.advantagesOver).getHeight());
        }
        try {
            if (this.haveAdvantage) {
                AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantageID).ImageID[this.iLevel]).draw(spriteBatch, getPosX() + i, getPosY() + i2);
            } else {
                spriteBatch.setShader(Renderer.shaderBlackWhite);
                try {
                    AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantageID).ImageID[this.iLevel]).draw(spriteBatch, getPosX() + i, getPosY() + i2);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                spriteBatch.setShader(Renderer.shaderDefault);
            }
            if (getIsHovered() || z) {
                AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantageID).ImageID[this.iLevel]).draw(spriteBatch, getPosX() + i, getPosY() + i2);
            } else if (this.canUnlock) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
                AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantageID).ImageID[this.iLevel]).draw(spriteBatch, getPosX() + i, getPosY() + i2);
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.8f));
        Images.pix.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getBonusH()) + i2, getWidth(), getBonusH());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getBonusH()) + i2, getWidth(), getBonusH());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getBonusH()) + i2, getWidth(), getBonusH(), false, true);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getBonusH()) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.advantagesOver).getHeight()) - 2) - CFG.PADDING) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), CFG.PADDING);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, (((getPosY() + ImageManager.getImage(Images.advantagesOver).getHeight()) - 2) - CFG.PADDING) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), CFG.PADDING);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, ((getPosX() + (getWidth() / 2)) - (((this.iTextWidth + this.iconWidth) + CFG.PADDING) / 2)) + i, (((getPosY() + getHeight()) - (getBonusH() / 2)) - (this.iTextHeight / 2)) + i2, this.haveAdvantage ? getColor(z) : getColor2(z));
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - (((this.iTextWidth + this.iconWidth) + CFG.PADDING) / 2)) + this.iTextWidth + CFG.PADDING + i;
        int posY = (getPosY() + getHeight()) - (getBonusH() / 2);
        int i4 = this.iconHeight;
        image.draw(spriteBatch, posX, (posY - (i4 / 2)) + i2, this.iconWidth, i4);
        ImageManager.getImage(Images.advantagesOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    public int getBonusH() {
        return (CFG.PADDING * 2) + CFG.TEXT_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
        }
        return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
    }

    protected Color getColor2(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return -1;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        return this.sTextHover;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.advantageID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.iLevel;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
