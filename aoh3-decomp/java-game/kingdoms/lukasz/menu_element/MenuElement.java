package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement {
    private int iHeight;
    private int iPosX;
    private int iPosY;
    private int iWidth;
    public MenuElement_Hover menuElementHover;
    protected MenuElement_Type typeOfElement;
    private boolean isClickable = true;
    private boolean isVisible = true;
    private boolean isInView = false;
    private boolean isHovered = false;
    protected int iCurrent = 0;
    protected int fontID = 0;

    protected MenuElement() {
    }

    public void actionElement() {
    }

    public void actionElementPPM() {
    }

    public void actionElement_ExtraAction() {
    }

    public void buildElementHover() {
    }

    public boolean canBeHovered() {
        return true;
    }

    public void dispose() {
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2) {
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
    }

    public void drawMenuElementHover(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (this.menuElementHover != null) {
            if (CFG.isAndroid) {
                this.menuElementHover.drawAlwaysOver_Mobile(spriteBatch, Touch.getMousePosX(), Touch.getMousePosY() - Renderer.getHover_ExtraPosY());
            } else {
                this.menuElementHover.draw(spriteBatch, Touch.getMousePosX() + Renderer.getHover_ExtraPosX(), Touch.getMousePosY() + Renderer.getHover_ExtraPosY());
            }
        }
    }

    public boolean getCheckboxState() {
        return false;
    }

    public boolean getClickable() {
        return this.isClickable;
    }

    public int getCurrent() {
        return this.iCurrent;
    }

    public boolean getDescription() {
        return false;
    }

    public int getHeight() {
        return this.iHeight;
    }

    public boolean getInStatisticsMode() {
        return false;
    }

    public boolean getIsHovered() {
        return this.isHovered;
    }

    public final boolean getIsInView() {
        return this.isInView;
    }

    public boolean getMenuElement_Hover_IsNull() {
        return this.menuElementHover == null;
    }

    public boolean getMoveable() {
        return false;
    }

    public int getPosX() {
        return this.iPosX;
    }

    public int getPosY() {
        return this.iPosY;
    }

    public int getSFX() {
        return Game.soundsManager.getClickMain();
    }

    public int getSFX_Hovered() {
        return Game.soundsManager.getClickMain();
    }

    public int getScrollPosX() {
        return 0;
    }

    public int getScrollPosY() {
        return 0;
    }

    public boolean getScrollable() {
        return false;
    }

    public String getText() {
        return gpVDKipRURuzw.qJlCdKoFA;
    }

    public int getTextHeight() {
        return 0;
    }

    public int getTextPos() {
        return 0;
    }

    public String getTextToDraw() {
        return "";
    }

    public int getTextWidth() {
        return 0;
    }

    public final MenuElement_Type getTypeOfElement() {
        return this.typeOfElement;
    }

    public int getValue1() {
        return 0;
    }

    public int getValue2() {
        return 0;
    }

    public boolean getVisible() {
        return this.isVisible;
    }

    public int getWidth() {
        return this.iWidth;
    }

    public boolean playSFX_Hovered() {
        return true;
    }

    public void resetElementHover() {
        this.menuElementHover = null;
    }

    public void scrollByWheel(int i) {
    }

    public void scrollTheMenu() {
    }

    public void setCheckboxState(boolean z) {
    }

    public final void setClickable(boolean z) {
        this.isClickable = z;
    }

    public void setCurrent(int i) {
        this.iCurrent = i;
    }

    public void setDescription(boolean z) {
    }

    public final void setHeight(int i) {
        this.iHeight = i;
    }

    public void setInStatisticsMode(boolean z) {
    }

    public void setIsHovered(boolean z) {
        this.isHovered = z;
    }

    public final void setIsInView(boolean z) {
        this.isInView = z;
    }

    public void setMax(int i) {
    }

    public void setMin(int i) {
    }

    public final void setPosX(int i) {
        this.iPosX = i;
    }

    public final void setPosY(int i) {
        this.iPosY = i;
    }

    public void setScrollPosX(int i) {
    }

    public void setScrollPosY(int i) {
    }

    public void setScrollable(boolean z) {
    }

    public void setText(String str) {
    }

    public void setText2(String str) {
    }

    public void setTypeOfElement(MenuElement_Type menuElement_Type) {
    }

    public void setVisible(boolean z) {
        this.isVisible = z;
    }

    public void setWidth(int i) {
        this.iWidth = i;
    }

    public void stopScrolling() {
    }

    public void updateHover(int i, int i2, int i3, int i4) {
    }

    public void updateHovered() {
    }

    public void updateLanguage() {
    }

    public void updateSlider(int i) {
    }
}
