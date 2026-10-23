package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuilding_Special extends MenuElement {
    public static final Color COLOR_STATS = new Color(0.039215688f, 0.05882353f, 0.09803922f, 0.6f);
    public static float iconScale = 1.0f;
    public int building;
    public int buildingID;
    public boolean built;
    public Color colorBG;
    public Color colorMain;
    public Color colorOver;
    public int iConstructedHeight;
    public int iConstructedWidth;
    public int iconMaxW;
    public String sConstructed;
    public String sText;
    public int iTextWidth = 0;
    public int iTextHeight = 0;
    public List<InnerStat> innerStats = new ArrayList();

    public class InnerStat {
        public int iH;
        public int iTextW;
        public int iW;
        public int iX;
        public int iY;
        public int img;
        public int imgH;
        public int imgW;
        public String text;

        public InnerStat(String str, int i, int i2, int i3, int i4, int i5) {
            this.iX = i2;
            this.iY = i3;
            this.iW = i4;
            this.iH = i5;
            this.img = i;
            this.imgW = (int) (ImageManager.getImage(i).getWidth() * ButtonBuilding_Special.iconScale);
            this.imgH = (int) (ImageManager.getImage(i).getHeight() * ButtonBuilding_Special.iconScale);
            this.text = str;
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str);
            this.iTextW = (int) Renderer.glyphLayout.width;
        }

        protected void draw(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(ButtonBuilding_Special.this.colorBG.r, ButtonBuilding_Special.this.colorBG.g, ButtonBuilding_Special.this.colorBG.b, 0.25f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, ButtonBuilding_Special.this.getPosX() + this.iX + i, ButtonBuilding_Special.this.getPosY() + this.iY + i2, this.iW, this.iH, 1.0f);
            spriteBatch.setColor(new Color(ButtonBuilding_Special.this.colorBG.r, ButtonBuilding_Special.this.colorBG.g, ButtonBuilding_Special.this.colorBG.b, 0.2f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, ButtonBuilding_Special.this.getPosX() + this.iX + i, ButtonBuilding_Special.this.getPosY() + this.iY + i2, ButtonBuilding_Special.this.iconMaxW, this.iH, 1.0f);
            Image image = ImageManager.getImage(this.img);
            int posX = (((ButtonBuilding_Special.this.getPosX() + this.iX) + (ButtonBuilding_Special.this.iconMaxW / 2)) - (this.imgW / 2)) + i;
            int posY = ButtonBuilding_Special.this.getPosY() + this.iY + (this.iH / 2);
            int i3 = this.imgH;
            image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgW, i3);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.text, ((((ButtonBuilding_Special.this.getPosX() + this.iX) + ButtonBuilding_Special.this.iconMaxW) + ((this.iW - ButtonBuilding_Special.this.iconMaxW) / 2)) - (this.iTextW / 2)) + i, (((ButtonBuilding_Special.this.getPosY() + this.iY) + (this.iH / 2)) - (ButtonBuilding_Special.this.iTextHeight / 2)) + i2, Colors.getColorButtonHover(z, ButtonBuilding_Special.this.getIsHovered()));
        }
    }

    public ButtonBuilding_Special(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
        this.built = false;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.built = z;
        this.building = i;
        this.buildingID = i2;
        this.fontID = CFG.FONT_REGULAR;
        this.sConstructed = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str);
        this.iConstructedWidth = (int) Renderer.glyphLayout.width;
        this.iConstructedHeight = (int) Renderer.glyphLayout.height;
        iconScale = getImageScale(Images.gold);
        this.iconMaxW = ((int) (ImageManager.getImage(Images.gold).getWidth() * iconScale)) + (CFG.PADDING * 4);
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(getTopH());
        setText(BuildingsManager.buildings.get(i).Name[i2]);
        setClickable(z2);
        setVisible(true);
        int width = BuildingsManager.buildings.get(i).MaintenanceCost[i2] > 0.0f ? ((getWidth() - (getInnerPosX() + (CFG.PADDING * 2))) - (CFG.PADDING * 2)) / 3 : ((getWidth() - (getInnerPosX() + (CFG.PADDING * 2))) - CFG.PADDING) / 2;
        this.innerStats.add(new InnerStat("" + Game.getBuildingConstructionCost(Game.player.iCivID, -1, i, i2), Images.gold, getInnerPosX() + CFG.PADDING, getTitleHeight() + (CFG.PADDING * 2), width, getTopH() - (getTitleHeight() + (CFG.PADDING * 3))));
        this.innerStats.add(new InnerStat(Game.lang.get("XDays", Game.getBuildingConstructionTime(Game.player.iCivID, -1, i, i2)), Images.buildTime, getInnerPosX() + (CFG.PADDING * 2) + width, getTitleHeight() + (CFG.PADDING * 2), width, getTopH() - (getTitleHeight() + (CFG.PADDING * 3))));
        if (BuildingsManager.buildings.get(i).MaintenanceCost[i2] > 0.0f) {
            this.innerStats.add(new InnerStat("" + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaintenanceCost[i2], 1000), Images.goldNegative, getInnerPosX() + (CFG.PADDING * 3) + (width * 2), getTitleHeight() + (CFG.PADDING * 2), width, getTopH() - (getTitleHeight() + (CFG.PADDING * 3))));
        }
        if (z3) {
            this.colorBG = Colors.COLOR_GRADIENT_BG_BLUE;
            this.colorMain = Colors.COLOR_NOTIFICATION_BG;
            this.colorOver = Colors.COLOR_NOTIFICATION_OVER;
        } else {
            this.colorBG = Colors.COLOR_GRADIENT_BG;
            this.colorMain = Colors.COLOR_NOTIFICATION_BG_RED;
            this.colorOver = Colors.COLOR_NOTIFICATION_OVER_RED;
        }
        int i6 = 0;
        while (this.iTextWidth > i5 && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    private final float getImageScale(int i) {
        return Math.min(1.0f, (CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight()) * 1.15f);
    }

    public static int getPaddingIMG() {
        return CFG.PADDING + (CFG.PADDING / 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = ButtonBuilding.getHoverBuilding(this.building, this.buildingID, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawButtonBG(spriteBatch, i, i2, z);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        float f = 0.5f;
        spriteBatch.setColor(new Color(this.colorMain.r, this.colorMain.g, this.colorMain.b, (getIsHovered() || z) ? 0.5f : 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, (getIsHovered() || z) ? 1.0f : 0.75f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getButtonWidth(), getTopH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(this.colorOver.r, this.colorOver.g, this.colorOver.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(this.colorOver.r, this.colorOver.g, this.colorOver.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(this.colorOver.r, this.colorOver.g, this.colorOver.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(this.colorMain.r, this.colorMain.g, this.colorMain.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(this.colorOver.r, this.colorOver.g, this.colorOver.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(this.colorOver.r, this.colorOver.g, this.colorOver.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        float f2 = this.colorBG.r;
        float f3 = this.colorBG.g;
        float f4 = this.colorBG.b;
        if (!getIsHovered() && !z) {
            f = 0.3f;
        }
        spriteBatch.setColor(new Color(f2, f3, f4, f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getInnerWidth() - (CFG.PADDING * 2), getTitleHeight(), 1.0f);
        for (int i3 = 0; i3 < this.innerStats.size(); i3++) {
            this.innerStats.get(i3).draw(spriteBatch, i, i2, z);
        }
        spriteBatch.setColor(Color.WHITE);
        if (this.built || getIsHovered() || z) {
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
        } else {
            Renderer.setBlackWhite(spriteBatch);
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
            Renderer.setShaderDefault(spriteBatch);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Color.WHITE);
        if (BuildingsManager.buildings.get(this.building).RequiredResource >= 0) {
            ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).draw(spriteBatch, ((((getPosX() + getPaddingIMG()) + ImageManager.getImage(Images.buildingsFrame).getWidth()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getWidth()) - CFG.PADDING) + i, ((((getPosY() + getPaddingIMG()) + ImageManager.getImage(Images.buildingsFrame).getHeight()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getHeight()) - CFG.PADDING) + i2);
        }
        ImageManager.getImage(Images.buildingsFrame).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
    }

    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sConstructed, ((getWidth() - (CFG.PADDING * 3)) - this.iConstructedWidth) + i, (((getPosY() + CFG.PADDING) + (getTitleHeight() / 2)) - (this.iConstructedHeight / 2)) + i2, Colors.HOVER_RIGHT3);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), getPosX() + getInnerPosX() + (CFG.PADDING * 3) + i, (((getPosY() + CFG.PADDING) + (getTitleHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    public int getButtonWidth() {
        return ImageManager.getImage(Images.buildingsFrame).getWidth() + (getPaddingIMG() * 2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public int getInnerPosX() {
        return getButtonWidth();
    }

    public int getInnerWidth() {
        return getWidth() - getButtonWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getText() {
        return this.sText;
    }

    public int getTitleHeight() {
        return (getTopH() - CFG.PADDING) / 2;
    }

    public int getTopH() {
        return ImageManager.getImage(Images.buildingsFrame).getHeight() + (getPaddingIMG() * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.building;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.buildingID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), getText());
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
    }
}
