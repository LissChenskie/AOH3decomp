package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ReligionTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon2_Religion extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iProvinceID;
    private int imgHeight;
    private int imgWidth;
    public int religionID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Religion$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    public TextIcon2_Religion(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        this.imgWidth = 0;
        this.imgHeight = 0;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.religionID = i;
        this.iProvinceID = i6;
        this.imgWidth = (int) (Game.religionManager.religionImages.get(i).getWidth() * getImageScale());
        this.imgHeight = (int) (Game.religionManager.religionImages.get(i).getHeight() * getImageScale());
        int i7 = 0;
        while (this.iTextWidth > getWidth() - CFG.PADDING && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static Color getColor_gradientFull() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.45f);
    }

    public static Color getColor_gradientXY() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.7f);
    }

    private final float getImageScale() {
        return ImageManager.getImage(Images.gold).getHeight() / Game.religionManager.religionImages.get(this.religionID).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Religion") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ReligionTitle(this.religionID, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(this.iProvinceID).getReligion() != Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (Game.getProvince(this.iProvinceID).religionConversion != null) {
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        }
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH());
        spriteBatch.setColor(getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        try {
            if (Game.getProvince(this.iProvinceID).religionConversion != null) {
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
                Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, (int) (getWidth() * (1.0f - (Game.getProvince(this.iProvinceID).religionConversion.daysLeft / Game.getProvince(this.iProvinceID).religionConversion.investTime))), getTextH(), getWidth());
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        Image image = Game.religionManager.religionImages.get(this.religionID);
        int posX = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
        int posY = getPosY() + ((getHeight() - getTextH()) / 2);
        int i4 = this.imgHeight;
        image.draw(spriteBatch, posX, (posY - (i4 / 2)) + i2, this.imgWidth, i4);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - CFG.PADDING) - getTextHeight()) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getReligionID() == Game.getProvince(this.iProvinceID).getReligion()) {
            return Colors.getColorButtonHover(z, getIsHovered());
        }
        if (z) {
            return Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
        return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
    }

    public int getTextH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.religionID != Game.getProvince(this.iProvinceID).getReligion()) {
            setText("" + Game.religionManager.getReligion(Game.getProvince(this.iProvinceID).getReligion()).Name);
            this.religionID = Game.getProvince(this.iProvinceID).getReligion();
            this.imgWidth = (int) (Game.religionManager.religionImages.get(this.religionID).getWidth() * getImageScale());
            this.imgHeight = (int) (Game.religionManager.religionImages.get(this.religionID).getHeight() * getImageScale());
        }
        return super.getTextToDraw();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
