package aoc.kingdoms.lukasz.menu_element.pieChart;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart_WithStats extends PieChart {
    protected static final int ANIMATION_TIME = 300;
    protected float TEXT_SCALE;
    public boolean enableHideStats;
    protected boolean hideAnimation;
    protected boolean isDescriptionActive;
    protected long lTime;
    protected boolean scrollable;
    protected int statsExtraWidth;
    protected int statsPosY;

    public PieChart_WithStats(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
        super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        this.TEXT_SCALE = 0.72f;
        this.lTime = 0L;
        this.isDescriptionActive = true;
        this.hideAnimation = false;
        this.scrollable = false;
        this.statsPosY = 0;
        this.statsExtraWidth = 0;
        this.enableHideStats = false;
        initPieChartStats();
    }

    public PieChart_WithStats(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover, float f) {
        super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        this.lTime = 0L;
        this.isDescriptionActive = true;
        this.hideAnimation = false;
        this.scrollable = false;
        this.statsPosY = 0;
        this.statsExtraWidth = 0;
        this.enableHideStats = false;
        this.TEXT_SCALE = f;
        initPieChartStats();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawPieChart(spriteBatch, i, i2, z, z2, getPosX(), getPosY(), getWidth_StatsExtraWidth(super.getWidth()), getHeight_StatsExtraHeight(), this.iPieChartWidth);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
    protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
        int i8;
        int i9 = i3 + i;
        Renderer.pieChartRenderer.draw(spriteBatch, getPieChartBackground(), i9, i4 + i2, this.iPieChartWidth, this.iPieChartHeight, this.pieChartData, z || getIsHovered(), animationPerc());
        if (this.isDescriptionActive || this.hideAnimation) {
            if (!Renderer.clipView_Start(spriteBatch, i9, (CFG.GAME_HEIGHT - i4) - i2, i5, -i6)) {
                return;
            }
            Renderer.setFontScale(this.TEXT_SCALE);
            int i10 = i2 + this.statsPosY;
            for (int i11 = 0; i11 < this.pieChartData.getPieChartValuesSize(); i11++) {
                try {
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.725f));
                    int i12 = i3 + i7;
                    Images.pix.draw(spriteBatch, CFG.PADDING + i12 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, CFG.COLOR_WIDTH, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.425f));
                    ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, CFG.PADDING + i12 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.3f));
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, CFG.PADDING + i12 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4);
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i12 + CFG.PADDING + i, ((((i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11)) + (CFG.PADDING * i11)) + i10) + ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)))) - (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4), (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4, false, true);
                    spriteBatch.setColor(Color.WHITE);
                } catch (IndexOutOfBoundsException unused) {
                    spriteBatch.setColor(new Color(Colors.COLOR_UNKNOWN.r, Colors.COLOR_UNKNOWN.g, Colors.COLOR_UNKNOWN.b, 0.725f));
                    int i13 = i3 + i7;
                    Images.pix.draw(spriteBatch, CFG.PADDING + i13 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, CFG.COLOR_WIDTH, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(Colors.COLOR_UNKNOWN.r, Colors.COLOR_UNKNOWN.g, Colors.COLOR_UNKNOWN.b, 0.45f));
                    ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, CFG.PADDING + i13 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(Colors.COLOR_UNKNOWN.r, Colors.COLOR_UNKNOWN.g, Colors.COLOR_UNKNOWN.b, 0.2f));
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, CFG.PADDING + i13 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4);
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i13 + CFG.PADDING + i, (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) - (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4)) + i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4, false, true);
                    spriteBatch.setColor(Color.WHITE);
                }
                Renderer.drawTextWithShadow(spriteBatch, this.fontID, "" + CFG.getPercentage(this.pieChartData.getPieChartValue(i11).getPercentage(), 5) + "%", i3 + i7 + CFG.PADDING + CFG.PADDING + CFG.COLOR_WIDTH + i, ((((i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11)) + (CFG.PADDING * i11)) + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 2)) - ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) / 2.0f))) + i10, Colors.COLOR_TEXT_PIE_CHART_STATS);
            }
            i8 = i10 - this.statsPosY;
            Renderer.resetFontScale();
            Renderer.clipView_End(spriteBatch);
        } else {
            i8 = i2;
        }
        PieChart_Renderer.pieChart_Frame.draw(spriteBatch, i9, i4 + i8, this.iPieChartWidth, this.iPieChartHeight);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getDescription() {
        return this.isDescriptionActive;
    }

    protected int getHeight_StatsExtraHeight() {
        return this.iPieChartHeight;
    }

    protected final int getMaxHeight() {
        return (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * this.pieChartData.getPieChartValuesSize()) + (CFG.PADDING * (this.pieChartData.getPieChartValuesSize() - 1));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getScrollPosY() {
        return this.statsPosY;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getScrollable() {
        return this.scrollable;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return getWidth_StatsExtraWidth(super.getWidth());
    }

    protected int getWidth_StatsExtraWidth(int i) {
        if (this.isDescriptionActive) {
            return this.lTime + 300 >= CFG.currentTimeMillis ? i + ((int) (this.statsExtraWidth * ((CFG.currentTimeMillis - this.lTime) / 300.0f))) : i + this.statsExtraWidth;
        }
        if (this.hideAnimation) {
            if (this.lTime + 300 >= CFG.currentTimeMillis) {
                int i2 = this.statsExtraWidth;
                return (i + i2) - ((int) (i2 * ((CFG.currentTimeMillis - this.lTime) / 300.0f)));
            }
            this.hideAnimation = false;
        }
        return i;
    }

    public void initPieChartStats() {
        this.typeOfElement = MenuElement_Type.PIECHART_WITH_STATS;
        updateScrollable_Y();
        float f = 0.0f;
        for (int i = 0; i < this.pieChartData.getPieChartValuesSize(); i++) {
            try {
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), "" + CFG.getPercentage(this.pieChartData.getPieChartValue(i).getPercentage(), 5) + lOow.eYNBpNd);
                if (f < Renderer.glyphLayout.width) {
                    f = Renderer.glyphLayout.width;
                }
            } catch (IllegalArgumentException unused) {
                this.statsExtraWidth = super.getWidth();
                return;
            } catch (IndexOutOfBoundsException unused2) {
                this.statsExtraWidth = super.getWidth();
                return;
            }
        }
        this.statsExtraWidth = ((int) (f * this.TEXT_SCALE)) + (CFG.PADDING * 4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void scrollByWheel(int i) {
        setScrollPosY(getScrollPosY() + i);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setDescription(boolean z) {
        if (this.enableHideStats) {
            this.isDescriptionActive = z;
            if (getVisible()) {
                this.hideAnimation = !this.isDescriptionActive;
                this.lTime = CFG.currentTimeMillis;
            } else {
                this.lTime = 0L;
            }
            this.animationTimer = CFG.currentTimeMillis - 37;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setScrollPosY(int i) {
        if (i > 0) {
            Game.menuManager.setUpdateSliderMenuPosY(true);
            i = 0;
        } else if (i < (-getMaxHeight()) + getHeight_StatsExtraHeight()) {
            i = (-getMaxHeight()) + getHeight_StatsExtraHeight();
            Game.menuManager.setUpdateSliderMenuPosY(true);
        }
        if (this.statsPosY != i) {
            this.statsPosY = i;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setScrollable(boolean z) {
        this.scrollable = z;
    }

    protected final void updateScrollable_Y() {
        if (getMaxHeight() > getHeight_StatsExtraHeight()) {
            this.scrollable = true;
        } else {
            this.scrollable = false;
            this.statsPosY = 0;
        }
    }
}
