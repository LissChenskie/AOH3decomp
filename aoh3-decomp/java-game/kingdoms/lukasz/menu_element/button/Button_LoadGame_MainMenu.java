package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_LoadGame_MainMenu extends Button {
    protected static final int ANIMATION_T = 1000;
    public static final int EXTRA_Y = 3;
    protected static int animationState;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    protected static long lTimeAnimation;
    public int iTextHeight2;
    public int iTextWidth2;
    public String sText2;

    public Button_LoadGame_MainMenu(String str, String str2, int i, int i2, int i3) {
        init(str, CFG.FONT_REGULAR, 0, i, i2, i3, getButtonHeight(), true, true, false, false);
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextWidth2 = (int) glyphLayout_Game.width;
        this.iTextHeight2 = (int) glyphLayout_Game.height;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagOverDefault).getHeight() + (getPaddingIMG() * 2);
    }

    protected static final Color getColorLine() {
        return colorLine;
    }

    public static int getPaddingIMG() {
        return CFG.PADDING * 2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LoadGame"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.save, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(this.sText, "", Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(this.sText2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        if ((z || getIsHovered()) && getClickable()) {
            Renderer.drawBox(spriteBatch, getButtonBG_Active(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(ButtonGame2.colorGradientHover);
        } else {
            Renderer.drawBox(spriteBatch, getButtonBG(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(ButtonGame2.colorGradient);
        }
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + 2 + i2, getWidth(), getHeight() - 4);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 3) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BG_RED.r, Colors.COLOR_GRADIENT_OVER_BG_RED.g, Colors.COLOR_GRADIENT_OVER_BG_RED.b, 0.4f));
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.4f));
        }
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + 3 + CFG.PADDING + i2, getInnerWidth() - (CFG.PADDING * 3), (getButtonHeight() - (CFG.PADDING * 3)) / 2, 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        drawImage(spriteBatch, i, i2, z);
    }

    protected void drawImage(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (MainMenu.flag != null) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            try {
                MainMenu.flag.getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.flagMaskDefault).draw(spriteBatch, getPosX() + getPaddingIMG() + i + ((ImageManager.getImage(Images.flagOverDefault).getWidth() - ImageManager.getImage(Images.flagMaskDefault).getWidth()) / 2), getPosY() + getPaddingIMG() + i2 + ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.flagMaskDefault).getHeight()) / 2), ImageManager.getImage(Images.flagMaskDefault).getWidth(), ImageManager.getImage(Images.flagMaskDefault).getHeight());
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.flagOverDefault).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, this.sText, getPosX() + getInnerPosX() + (CFG.PADDING * 3) + i, (((getPosY() + 3) + (getButtonHeight() / 4)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, getPosX() + getInnerPosX() + (CFG.PADDING * 3) + i, ((((getPosY() + (getButtonHeight() / 2)) + (getButtonHeight() / 4)) - (this.iTextHeight2 / 2)) - (CFG.PADDING / 2)) + i2, getColor(z));
    }

    public int getButtonBG() {
        return Images.buttonGame;
    }

    public int getButtonBG_Active() {
        return Images.buttonGameH;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public int getInnerPosX() {
        return (getPaddingIMG() * 2) + ImageManager.getImage(Images.flagOverDefault).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - getInnerPosX();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
