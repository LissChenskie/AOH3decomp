package aoc.kingdoms.lukasz.menu_element.pieChart;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart extends MenuElement {
    protected long animationTimer;
    protected int iPieChartHeight;
    protected int iPieChartWidth;
    protected PieChart_Data pieChartData;

    public PieChart(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
        this.animationTimer = -1L;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        this.fontID = CFG.FONT_REGULAR;
        this.iPieChartWidth = i3;
        this.iPieChartHeight = i4;
        this.typeOfElement = MenuElement_Type.PIECHART;
        this.menuElementHover = menuElement_Hover;
        this.pieChartData = pieChart_Data;
        pieChart_Data.sortAndBuild_PieChartValues();
        this.animationTimer = CFG.currentTimeMillis;
    }

    protected float animationPerc() {
        return Math.min(1.0f, (CFG.currentTimeMillis - this.animationTimer) / 150.0f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawPieChart(spriteBatch, i, i2, z, z2, getPosX(), getPosY(), getWidth(), getHeight(), Renderer.pieChartRenderer.getWidth());
    }

    public void draw2(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, float f, Color color) {
        drawPieChart2(spriteBatch, i, i2, z, z2, getPosX(), getPosY(), getWidth(), getHeight(), Renderer.pieChartRenderer.getWidth(), f, color);
    }

    protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i3 + i;
        int i9 = i4 + i2;
        Renderer.pieChartRenderer.draw(spriteBatch, getPieChartBackground(), i8, i9, this.iPieChartWidth, this.iPieChartHeight, this.pieChartData, z || getIsHovered(), animationPerc());
        PieChart_Renderer.pieChart_Frame.draw(spriteBatch, i8, i9, this.iPieChartWidth, this.iPieChartHeight);
    }

    protected void drawPieChart2(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, float f, Color color) {
        int i8 = i3 + i;
        int i9 = i4 + i2;
        Renderer.pieChartRenderer.draw2(spriteBatch, PieChart_Renderer.pieChart_BG2, i8, i9, this.iPieChartWidth, this.iPieChartHeight, this.pieChartData, z || getIsHovered(), animationPerc(), f, color);
        PieChart_Renderer.pieChart_Frame.draw(spriteBatch, i8, i9, this.iPieChartWidth, this.iPieChartHeight);
    }

    public TextureRegion getPieChartBackground() {
        return PieChart_Renderer.pieChart_BG;
    }
}
