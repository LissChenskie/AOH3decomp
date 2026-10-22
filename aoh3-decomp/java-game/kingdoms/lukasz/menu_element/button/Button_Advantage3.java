package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Advantage3 extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int advantageID;
    public int iLevel;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public String sTextHover;

    public Button_Advantage3(int i, int i2, int i3, int i4, String str, String str2, int i5) {
        this.advantageID = i3;
        this.iLevel = i4;
        this.sTextHover = str;
        this.imageID = i5;
        float imageScale = getImageScale(i5) * 1.0f;
        this.iconWidth = (int) (ImageManager.getImage(i5).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i5).getHeight() * imageScale);
        init(str2, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.advantagesSmallOver).getWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.advantagesSmallOver).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.advantagesSmallOver).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(this.sTextHover + ": ", "" + getText(), this.imageID, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HTGgowNjn.jrwgGIZlLboHHOV), CFG.FONT_BOLD_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.advantages, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setShader(Renderer.shaderAlpha);
        try {
            AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantageID).ImageID[this.iLevel]).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.advantagesSmallMask).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.advantagesSmallMask).getWidth(), ImageManager.getImage(Images.advantagesSmallMask).getHeight());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        if (getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.advantagesSmallOver).getHeight()) - 2) - CFG.PADDING) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), CFG.PADDING);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, (((getPosY() + ImageManager.getImage(Images.advantagesSmallOver).getHeight()) - 2) - CFG.PADDING) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), CFG.PADDING);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        ImageManager.getImage(Images.advantagesSmallOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
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
