package aoc.kingdoms.lukasz.menu_element.pieChart;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart_WithStatsImages extends PieChart_WithStats {
    public PieChart_WithStatsImages(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
        super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
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
            float statsImageHeight = (CFG.TEXT_HEIGHT * this.TEXT_SCALE) / getStatsImageHeight();
            for (int i11 = 0; i11 < this.pieChartData.getPieChartValuesSize(); i11++) {
                try {
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.725f));
                    int i12 = i3 + i7;
                    Images.pix.draw(spriteBatch, i12 + CFG.PADDING + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, CFG.COLOR_WIDTH, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.425f));
                    ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i12 + CFG.PADDING + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(this.pieChartData.getPieChartValue_ColorR(i11), this.pieChartData.getPieChartValue_ColorG(i11), this.pieChartData.getPieChartValue_ColorB(i11), 0.3f));
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i12 + CFG.PADDING + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4);
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i12 + CFG.PADDING + i, ((((i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11)) + (CFG.PADDING * i11)) + i10) + ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)))) - (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4), (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4, false, true);
                    spriteBatch.setColor(Color.WHITE);
                    getStatImage(this.pieChartData.getPieChartValue(i11).getDataID()).draw(spriteBatch, i12 + (CFG.PADDING * 2) + CFG.COLOR_WIDTH + i, ((((i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11)) + (CFG.PADDING * i11)) + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 2)) - ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) / 2.0f))) + i10, (int) (getStatsImageWidth() * statsImageHeight), (int) (getStatsImageHeight() * statsImageHeight));
                } catch (IndexOutOfBoundsException unused) {
                    spriteBatch.setColor(new Color(Colors.COLOR_UNKNOWN.r, Colors.COLOR_UNKNOWN.g, Colors.COLOR_UNKNOWN.b, 0.45f));
                    int i13 = i3 + i7;
                    ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, CFG.PADDING + i13 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, (int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2)));
                    spriteBatch.setColor(new Color(Colors.COLOR_UNKNOWN.r, Colors.COLOR_UNKNOWN.g, Colors.COLOR_UNKNOWN.b, 0.2f));
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, CFG.PADDING + i13 + i, i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4);
                    ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i13 + CFG.PADDING + i, (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) - (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4)) + i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11) + (CFG.PADDING * i11) + i10, (CFG.COLOR_WIDTH + i5) - i7, ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 4, false, true);
                    spriteBatch.setColor(Color.WHITE);
                }
                Renderer.drawTextWithShadow(spriteBatch, this.fontID, "" + CFG.getPercentage(this.pieChartData.getPieChartValue(i11).getPercentage(), 5) + "%", i3 + i7 + ((int) (getStatsImageWidth() * statsImageHeight)) + (CFG.PADDING * 3) + CFG.COLOR_WIDTH + i, ((((i4 + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) * i11)) + (CFG.PADDING * i11)) + (((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) + (CFG.PADDING * 2))) / 2)) - ((int) ((CFG.TEXT_HEIGHT * this.TEXT_SCALE) / 2.0f))) + i10, Colors.COLOR_TEXT_PIE_CHART_STATS);
            }
            i8 = i10 - this.statsPosY;
            Renderer.resetFontScale();
            Renderer.clipView_End(spriteBatch);
        } else {
            i8 = i2;
        }
        PieChart_Renderer.pieChart_Frame.draw(spriteBatch, i9, i4 + i8, this.iPieChartWidth, this.iPieChartHeight);
    }

    public Image getStatImage(int i) {
        return ImageManager.getImage(Images.time);
    }

    public int getStatsImageHeight() {
        return getStatImage(0).getHeight();
    }

    public int getStatsImageWidth() {
        return getStatImage(0).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats
    public void initPieChartStats() {
        this.typeOfElement = MenuElement_Type.PIECHART_WITH_STATS;
        updateScrollable_Y();
        float f = 0.0f;
        for (int i = 0; i < this.pieChartData.getPieChartValuesSize(); i++) {
            try {
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), "" + CFG.getPercentage(this.pieChartData.getPieChartValue(i).getPercentage(), 5) + "%");
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
        this.statsExtraWidth = ((int) (f * this.TEXT_SCALE)) + (CFG.PADDING * 4) + ((int) ((getStatsImageWidth() * (CFG.TEXT_HEIGHT * this.TEXT_SCALE)) / getStatsImageHeight()));
    }
}
