package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu {
    private int iHeight;
    private int iMaxSliderPositionX;
    protected int iMaxSliderPositionY;
    private int iMenuElementsSize;
    private int iMenuPosX;
    private int iMenuPosY;
    private int iNewMenuPositionX;
    private int iNewMenuPositionY;
    private int iPosX;
    private int iPosY;
    private int iWidth;
    public MenuClose menuClose;
    private List<MenuElement> menuElements = new ArrayList();
    private boolean visible = true;
    private MenuTitle menuTitle = null;
    private boolean lockHoverOverMenuBackground = false;
    private boolean closeable = false;
    private boolean scrollableX = false;
    private boolean scrollableY = false;
    private boolean scrollModeY = false;
    private int iScrollPosY = -1;
    private int iScrollPosY2 = -1;
    private float fScrollNewMenuPosY = 0.0f;
    private boolean scrollModeX = false;
    private int iScrollPosX = -1;
    private int iScrollPosX2 = -1;
    private float fScrollNewMenuPosX = 0.0f;
    public final float SCROLL_MENU_UPDATE = 0.97f;
    public boolean drawScrollPositionAlways = true;
    public boolean drawScrollPositionAlways2 = true;
    public int scrollExtraPosX = 0;
    private final Color COLOR_SCROLL_POSITION = new Color(0.039215688f, 0.039215688f, 0.078431375f, 0.4f);
    private final Color COLOR_SCROLL_POSITION_INVIEW = new Color(0.50980395f, 0.42352942f, 0.23529412f, 0.2f);
    private final Color COLOR_SCROLL_POSITION_INVIEW_ACTIVE = new Color(0.50980395f, 0.47058824f, 0.27450982f, 0.6f);

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.Menu$1, reason: invalid class name */
    class AnonymousClass1 implements MenuClose {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu.Menu.MenuClose
        public int getCloseMenu_Height() {
            return ImageManager.getImage(Images.btn_close).getHeight();
        }

        @Override // aoc.kingdoms.lukasz.menu.Menu.MenuClose
        public int getCloseMenu_PosX() {
            return (Menu.this.getPosX() + Menu.this.getWidth()) - getCloseMenu_Width();
        }

        @Override // aoc.kingdoms.lukasz.menu.Menu.MenuClose
        public int getCloseMenu_PosY() {
            return Menu.this.menuTitle != null ? Menu.this.getPosY() - Menu.this.menuTitle.getHeight() : Menu.this.getPosY();
        }

        @Override // aoc.kingdoms.lukasz.menu.Menu.MenuClose
        public int getCloseMenu_Width() {
            return ImageManager.getImage(Images.btn_close).getWidth();
        }
    }

    interface MenuClose {
        int getCloseMenu_Height();

        int getCloseMenu_PosX();

        int getCloseMenu_PosY();

        int getCloseMenu_Width();
    }

    private void drawView(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        beginClip(spriteBatch, i, i2, z);
        drawMenu(spriteBatch, i, i2, z);
        endClip(spriteBatch, i, i2, z, status);
    }

    private final boolean getMenuElementIsInView_X(int i) {
        return (this.menuElements.get(i).getPosX() + getMenuPosX() >= getPosX() && this.menuElements.get(i).getPosX() + getMenuPosX() < getPosX() + getWidth()) || ((this.menuElements.get(i).getPosX() + this.menuElements.get(i).getWidth()) + getMenuPosX() > getPosX() && (this.menuElements.get(i).getPosX() + this.menuElements.get(i).getWidth()) + getMenuPosX() <= getPosX() + getWidth()) || (getPosX() > this.menuElements.get(i).getPosX() + getMenuPosX() && getPosX() < (this.menuElements.get(i).getPosX() + this.menuElements.get(i).getWidth()) + getMenuPosX());
    }

    private final boolean getMenuElementIsInView_Y(int i) {
        return (this.menuElements.get(i).getPosY() + getMenuPosY() > getPosY() && this.menuElements.get(i).getPosY() + getMenuPosY() < getPosY() + getHeight()) || ((this.menuElements.get(i).getPosY() + this.menuElements.get(i).getHeight()) + getMenuPosY() > getPosY() && (this.menuElements.get(i).getPosY() + this.menuElements.get(i).getHeight()) + getMenuPosY() < getPosY() + getHeight()) || (this.menuElements.get(i).getPosY() + getMenuPosY() <= getPosY() && (this.menuElements.get(i).getPosY() + this.menuElements.get(i).getHeight()) + getMenuPosY() >= getPosY() + getHeight());
    }

    private final void resetScrollINFO() {
        this.iScrollPosX2 = -1;
        this.iScrollPosX = -1;
        this.iScrollPosY2 = -1;
        this.iScrollPosY = -1;
    }

    public void actionCloseMenu() {
        setVisible(false);
        actionCloseMenu_Sound();
    }

    public void actionCloseMenu_Sound() {
        Game.soundsManager.playSound(Game.soundsManager.getClickMain());
    }

    public void actionElement(int i) {
        try {
            getMenuElement(i).actionElement();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void actionElementPPM(int i) {
        try {
            getMenuElement(i).actionElementPPM();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void beginClip(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawBackgroundMode(spriteBatch, z);
        Renderer.clipView_Start(spriteBatch, getPosX() + i, (CFG.GAME_HEIGHT - getPosY()) - i2, getWidth(), -getHeight());
    }

    public void closeMenu() {
    }

    public void disableButtons() {
    }

    public void dispose() {
        for (int i = 0; i < getMenuElementsSize(); i++) {
            getMenuElement(i).dispose();
        }
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawView(spriteBatch, i, i2, z, status);
    }

    public final void drawBackgroundMode(SpriteBatch spriteBatch, boolean z) {
        if (z) {
            if (Game.menuManager.getMenuResizeMode() || Game.menuManager.getMoveMenu_ByTitleMode()) {
                spriteBatch.setColor(new Color(0.1f, 0.1f, 0.1f, 0.05f));
                ImageManager.getImage(Images.patt).draw2(spriteBatch, 0, -ImageManager.getImage(Images.patt).getHeight(), CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                spriteBatch.setColor(Color.WHITE);
            }
        }
    }

    public void drawCloseButton(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (Game.menuManager.getCloseMenuMode() && z) {
            ImageManager.getImage(Images.btnh_close).draw(spriteBatch, this.menuClose.getCloseMenu_PosX() + i, this.menuClose.getCloseMenu_PosY() + i2);
        } else {
            if (!z2) {
                ImageManager.getImage(Images.btn_close).draw(spriteBatch, this.menuClose.getCloseMenu_PosX() + i, this.menuClose.getCloseMenu_PosY() + i2);
                return;
            }
            spriteBatch.setColor(new Color(1.0f, 0.0f, 0.0f, 0.425f));
            ImageManager.getImage(Images.btnh_close).draw(spriteBatch, this.menuClose.getCloseMenu_PosX() + i, this.menuClose.getCloseMenu_PosY() + i2);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    public void drawHover(SpriteBatch spriteBatch, int i, int i2, int i3) {
        try {
            getMenuElement(i3).drawMenuElementHover(spriteBatch, getMenuPosX() + i, getMenuPosY() + i2, getMenuElementIsActive(true, Game.menuManager.getActiveMenuElementID()));
        } catch (Exception unused) {
        }
    }

    public void drawMenu(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawMenuElements(spriteBatch, i, i2, z);
        drawMenu_Scroll(spriteBatch, i, i2, z);
    }

    public final void drawMenuBorder(SpriteBatch spriteBatch) {
        spriteBatch.setColor(0.196f, 0.196f, 0.196f, 1.0f);
        Images.pix.draw(spriteBatch, getPosX(), getPosY(), 1, getHeight());
        Images.pix.draw(spriteBatch, (getPosX() + getWidth()) - 1, getPosY(), 1, getHeight());
        Images.pix.draw(spriteBatch, getPosX(), getPosY(), getWidth(), -1);
        Images.pix.draw(spriteBatch, getPosX(), (getPosY() + getHeight()) - 1, getWidth(), -1);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawMenuElements(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            for (int i3 = this.iMenuElementsSize - 1; i3 >= 0; i3--) {
                try {
                    if (this.menuElements.get(i3).getVisible() && this.menuElements.get(i3).getIsInView()) {
                        this.menuElements.get(i3).draw(spriteBatch, getMenuPosX() + i, getMenuPosY() + i2, getMenuElementIsActive(z, i3), this.scrollableY);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void drawMenuResizeRect(SpriteBatch spriteBatch) {
        spriteBatch.setColor(0.196f, 0.196f, 0.196f, 0.95f);
        if (Game.menuManager.getMenuResizeLEFT()) {
            Images.pix.draw(spriteBatch, getPosX(), (getPosY() + getHeight()) - (CFG.PADDING * CFG.PADDING), CFG.PADDING * CFG.PADDING, CFG.PADDING * CFG.PADDING);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.35f));
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, getPosX(), (getPosY() + getHeight()) - ImageManager.getImage(Images.pickerEdge).getHeight(), ImageManager.getImage(Images.pickerEdge).getWidth(), ImageManager.getImage(Images.pickerEdge).getHeight(), true, false);
        } else {
            Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - 1) - (CFG.PADDING * CFG.PADDING), (getPosY() + getHeight()) - (CFG.PADDING * CFG.PADDING), CFG.PADDING * CFG.PADDING, CFG.PADDING * CFG.PADDING);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.35f));
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, (getPosX() + getWidth()) - ImageManager.getImage(Images.pickerEdge).getWidth(), (getPosY() + getHeight()) - ImageManager.getImage(Images.pickerEdge).getHeight(), ImageManager.getImage(Images.pickerEdge).getWidth(), ImageManager.getImage(Images.pickerEdge).getHeight(), false, false);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public void drawMenu_Scroll(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawScrollPositionX(spriteBatch, i, i2, z);
        drawScrollPositionY(spriteBatch, i, i2, z);
    }

    public void drawScrollPositionX(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            if ((this.drawScrollPositionAlways || z) && this.scrollableX && getWidth() < this.iMaxSliderPositionX) {
                if (Game.menuManager.getMenu_MoveInnerElements()) {
                    spriteBatch.setColor(this.COLOR_SCROLL_POSITION_INVIEW_ACTIVE);
                } else {
                    spriteBatch.setColor(this.COLOR_SCROLL_POSITION_INVIEW);
                }
                ImageManager.getImage(Images.scroll_position_active).draw2(spriteBatch, getPosX() + (((getWidth() - ((((getWidth() * 100) / this.iMaxSliderPositionX) * getWidth()) / 100)) * (getPosX() - getMenuPosX())) / (this.iMaxSliderPositionX - getWidth())) + i, ((((getPosY() + getHeight()) - (CFG.PADDING * 2)) + 1) - (((((getWidth() * 100) / this.iMaxSliderPositionX) * getWidth()) / 100) - ImageManager.getImage(Images.scroll_position_active).getHeight())) + i2, ImageManager.getImage(Images.scroll_position_active).getWidth(), ((((getWidth() * 100) / this.iMaxSliderPositionX) * getWidth()) / 100) - ImageManager.getImage(Images.scroll_position_active).getHeight(), -90.0f, false, true);
                ImageManager.getImage(Images.scroll_position_active).draw2(spriteBatch, (((getPosX() + (((getWidth() - ((((getWidth() * 100) / this.iMaxSliderPositionX) * getWidth()) / 100)) * (getPosX() - getMenuPosX())) / (this.iMaxSliderPositionX - getWidth()))) + ((((getWidth() * 100) / this.iMaxSliderPositionX) * getWidth()) / 100)) - ImageManager.getImage(Images.scroll_position_active).getHeight()) + i, ((((getPosY() + getHeight()) - (CFG.PADDING * 2)) + 1) - ImageManager.getImage(Images.scroll_position_active).getHeight()) + i2, ImageManager.getImage(Images.scroll_position_active).getWidth(), ImageManager.getImage(Images.scroll_position_active).getHeight(), -90.0f);
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception unused) {
        }
    }

    public void drawScrollPositionY(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            if (this.drawScrollPositionAlways2 && this.scrollableY && getHeight() < this.iMaxSliderPositionY) {
                if (Game.menuManager.getMenu_MoveInnerElements()) {
                    spriteBatch.setColor(this.COLOR_SCROLL_POSITION_INVIEW_ACTIVE);
                } else {
                    spriteBatch.setColor(this.COLOR_SCROLL_POSITION_INVIEW);
                }
                ImageManager.getImage(Images.scroll_position_active).draw2(spriteBatch, (((((getPosX() + this.scrollExtraPosX) + getWidth()) - Images.boxTitleBORDERWIDTH) - Images.boxTitleBORDERWIDTH) - 1) + i, getPosY() + (((getHeight() - ((((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100)) * (getPosY() - getMenuPosY())) / (this.iMaxSliderPositionY - getHeight())) + i2, Images.boxTitleBORDERWIDTH, ((((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100) - ImageManager.getImage(Images.scroll_position_active).getHeight());
                ImageManager.getImage(Images.scroll_position_active).draw(spriteBatch, (((((getPosX() + this.scrollExtraPosX) + getWidth()) - Images.boxTitleBORDERWIDTH) - Images.boxTitleBORDERWIDTH) - 1) + i, (((getPosY() + (((getHeight() - ((((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100)) * (getPosY() - getMenuPosY())) / (this.iMaxSliderPositionY - getHeight()))) + ((((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100)) - ImageManager.getImage(Images.scroll_position_active).getHeight()) + i2, Images.boxTitleBORDERWIDTH, ImageManager.getImage(Images.scroll_position_active).getHeight(), false, true);
                ImageManager.getImage(Images.gradientXYVertical).draw2(spriteBatch, (((((getPosX() + this.scrollExtraPosX) + getWidth()) - Images.boxTitleBORDERWIDTH) - Images.boxTitleBORDERWIDTH) - 1) + i, getPosY() + (((getHeight() - ((((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100)) * (getPosY() - getMenuPosY())) / (this.iMaxSliderPositionY - getHeight())) + i2, Images.boxTitleBORDERWIDTH, (((getHeight() * 100) / this.iMaxSliderPositionY) * getHeight()) / 100, true, false);
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void drawTitle(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        MenuTitle menuTitle = this.menuTitle;
        if (menuTitle != null) {
            menuTitle.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), status);
        }
        if (z) {
            if (Game.menuManager.getMenuResizeMode()) {
                drawMenuBorder(spriteBatch);
                drawMenuResizeRect(spriteBatch);
            } else if (Game.menuManager.getMoveMenu_ByTitleMode()) {
                drawMenuBorder(spriteBatch);
            }
        }
    }

    public void endClip(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.clipView_End(spriteBatch);
        drawTitle(spriteBatch, i, i2, z, status);
        if (getCloseable()) {
            drawCloseButton(spriteBatch, i, i2, z, status == Status.CLOSE_HOVERED);
        }
    }

    public void extraAction() {
    }

    public final boolean getCloseable() {
        return this.closeable;
    }

    public int getHeight() {
        return this.iHeight;
    }

    public final boolean getLockHoverOverMenuBackground() {
        return this.lockHoverOverMenuBackground;
    }

    public final MenuElement getMenuElement(int i) {
        return this.menuElements.get(i);
    }

    public boolean getMenuElementIsActive(boolean z, int i) {
        return z && i == Game.menuManager.getActiveMenuElementID();
    }

    public final int getMenuElementsSize() {
        return this.iMenuElementsSize;
    }

    public int getMenuPosX() {
        return this.iMenuPosX;
    }

    public int getMenuPosY() {
        return this.iMenuPosY;
    }

    public final int getMinHeight() {
        return CFG.PADDING + CFG.BUTTON_HEIGHT;
    }

    public final int getMinWidth() {
        try {
            return CFG.BUTTON_HEIGHT;
        } catch (Exception unused) {
            return CFG.BUTTON_HEIGHT;
        }
    }

    public final boolean getMoveable() {
        MenuTitle menuTitle = this.menuTitle;
        if (menuTitle == null) {
            return false;
        }
        return menuTitle.getMoveable();
    }

    public final int getNewMenuPosX() {
        return this.iNewMenuPositionX;
    }

    public final int getNewMenuPosY() {
        return this.iNewMenuPositionY;
    }

    public int getPosX() {
        return this.iPosX;
    }

    public int getPosY() {
        return this.iPosY;
    }

    public final boolean getResizable() {
        MenuTitle menuTitle = this.menuTitle;
        if (menuTitle == null) {
            return false;
        }
        return menuTitle.getResizable();
    }

    public final boolean getScrollModeY() {
        return this.scrollModeY;
    }

    public final int getScrollPosY() {
        return this.iScrollPosY;
    }

    public final boolean getScrollableX() {
        return this.scrollableX;
    }

    public final boolean getScrollableY() {
        return this.scrollableY;
    }

    public final MenuTitle getTitle() {
        return this.menuTitle;
    }

    public boolean getVisible() {
        return this.visible;
    }

    public int getWidth() {
        return this.iWidth;
    }

    public void initCloseMenu() {
        this.menuClose = new AnonymousClass1();
    }

    protected final void initMenu(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list) {
        initMenu(menuTitle, i, i2, i3, i4, list, true, false, false, false);
    }

    protected final void initMenu(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z) {
        initMenu(menuTitle, i, i2, i3, i4, list, z, false, false, false);
    }

    protected final void initMenu(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z, boolean z2) {
        initMenu(menuTitle, i, i2, i3, i4, list, z, false, z2, false);
    }

    protected final void initMenu(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z, boolean z2, boolean z3, boolean z4) {
        this.iNewMenuPositionX = i;
        this.iMenuPosX = i;
        this.iPosX = i;
        this.iNewMenuPositionY = i2;
        this.iMenuPosY = i2;
        this.iPosY = i2;
        this.iWidth = i3;
        this.iHeight = i4;
        this.closeable = z3;
        this.visible = z;
        this.lockHoverOverMenuBackground = z4;
        this.menuTitle = menuTitle;
        this.iMenuElementsSize = list.size();
        if (z2) {
            int posY = 0;
            for (int i5 = 0; i5 < this.iMenuElementsSize; i5++) {
                if (list.get(i5).getPosY() + list.get(i5).getHeight() > posY) {
                    posY = list.get(i5).getPosY() + list.get(i5).getHeight();
                }
            }
            list.get(0).setPosY(CFG.PADDING + posY);
            if (posY > (i4 - CFG.PADDING) - list.get(0).getHeight()) {
                list.get(0).setPosY(posY + CFG.PADDING);
            } else {
                list.get(0).setPosY(i4 - list.get(0).getHeight());
            }
        }
        this.menuElements = list;
        if (z3) {
            initCloseMenu();
        }
        updateScrollable();
        updateMenuElements_IsInView();
        updateLanguage();
    }

    protected final void initMenuWithBackButton(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list) {
        initMenu(menuTitle, i, i2, i3, i4, list, true, true, false, false);
    }

    protected final void initMenuWithBackButton(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z) {
        initMenu(menuTitle, i, i2, i3, i4, list, true, true, z, false);
    }

    protected final void initMenuWithBackButton(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z, boolean z2) {
        initMenu(menuTitle, i, i2, i3, i4, list, z, true, z2, false);
    }

    protected final void initMenuWithBackButton(MenuTitle menuTitle, int i, int i2, int i3, int i4, List<MenuElement> list, boolean z, boolean z2, boolean z3) {
        initMenu(menuTitle, i, i2, i3, i4, list, z, true, z2, z3);
    }

    public void onBackPressed() {
    }

    public void onHovered() {
    }

    public void onMenuPressed() {
    }

    public final void scrollTheMenu() {
        int i;
        int i2;
        int i3;
        int i4;
        if (this.scrollableY && (i3 = this.iScrollPosY) > 0 && (i4 = this.iScrollPosY2) > 0 && Math.abs(i3 - i4) > CFG.DENSITY * 3.0f) {
            this.fScrollNewMenuPosY = (this.iScrollPosY - this.iScrollPosY2) * 1.45f;
            this.scrollModeY = true;
        }
        if (this.scrollableX && (i = this.iScrollPosX) > 0 && (i2 = this.iScrollPosX2) > 0 && Math.abs(i - i2) > 3) {
            this.fScrollNewMenuPosX = (this.iScrollPosX - this.iScrollPosX2) * 1.45f;
            this.scrollModeX = true;
        }
        resetScrollINFO();
    }

    public void setHeight(int i) {
        this.iHeight = i;
        if (i < getMinHeight()) {
            this.iHeight = getMinHeight();
        }
        int posY = i + getPosY();
        MenuTitle menuTitle = this.menuTitle;
        if (posY + (menuTitle != null ? menuTitle.getHeight() : 0) >= CFG.GAME_HEIGHT) {
            int i2 = CFG.GAME_HEIGHT;
            int posY2 = getPosY();
            MenuTitle menuTitle2 = this.menuTitle;
            this.iHeight = i2 - (posY2 + (menuTitle2 != null ? menuTitle2.getHeight() : 0));
        }
        updateScrollable();
    }

    public final void setMenuElement(int i, MenuElement menuElement) {
        this.menuElements.set(i, null);
        this.menuElements.set(i, menuElement);
    }

    public final void setMenuPosX(int i) {
        updateMenuPosX(i);
    }

    public final void setMenuPosY(int i) {
        updateMenuPosY(i);
    }

    public void setPosX(int i) {
        this.iPosX = i;
        this.iMenuPosX = i;
        updateMenuPosX(i);
    }

    public final void setPosX_Force(int i) {
        this.iPosX = i;
        this.iMenuPosX = i;
        this.iNewMenuPositionX = i;
        Game.menuManager.setUpdateSliderMenuPosX(false);
    }

    public void setPosX_Just(int i) {
        this.iPosX = i;
    }

    public void setPosY(int i) {
        this.iPosY = i;
        this.iMenuPosY = i;
        updateMenuPosY(i);
    }

    public void setPosY_Just(int i) {
        this.iPosY = i;
    }

    public final void setScrollPosX(int i) {
        this.iScrollPosX2 = this.iScrollPosX;
        this.iScrollPosX = i;
    }

    public final void setScrollPosY(int i) {
        this.iScrollPosY2 = this.iScrollPosY;
        this.iScrollPosY = i;
    }

    public void setVisible(boolean z) {
        this.visible = z;
    }

    public boolean setWidth(int i) {
        if (i >= CFG.GAME_WIDTH) {
            this.iWidth = CFG.GAME_WIDTH;
            return true;
        }
        if (i < getMinWidth()) {
            this.iWidth = getMinWidth();
            return false;
        }
        this.iWidth = i;
        return true;
    }

    public boolean setWidth_Resize(int i) {
        if (i >= CFG.GAME_WIDTH) {
            setPosX(getPosX() + (this.iWidth - i));
            this.iWidth = CFG.GAME_WIDTH;
            return true;
        }
        if (i >= getMinWidth()) {
            setPosX(getPosX() + (this.iWidth - i));
            this.iWidth = i;
            return true;
        }
        int minWidth = getMinWidth();
        setPosX(getPosX() + (this.iWidth - minWidth));
        this.iWidth = minWidth;
        return false;
    }

    public final void stopScrolling() {
        resetScrollINFO();
        this.scrollModeX = false;
        this.scrollModeY = false;
    }

    public void update() {
        int i;
        boolean z = false;
        if (this.scrollModeY) {
            if (Math.abs(this.fScrollNewMenuPosY) > 1.0f) {
                updateMenuPosY(this.iMenuPosY + ((int) this.fScrollNewMenuPosY));
                this.fScrollNewMenuPosY *= 0.97f;
            } else {
                this.scrollModeY = false;
            }
        }
        if (this.scrollModeX) {
            if (Math.abs(this.fScrollNewMenuPosX) > 1.0f) {
                updateMenuPosX(this.iMenuPosX + ((int) this.fScrollNewMenuPosX));
                this.fScrollNewMenuPosX *= 0.97f;
            } else {
                this.scrollModeX = false;
            }
        }
        boolean z2 = true;
        if (this.scrollableX && (i = this.iNewMenuPositionX) != this.iMenuPosX) {
            this.iMenuPosX = i;
            z = true;
        }
        int i2 = this.iNewMenuPositionY;
        if (i2 != this.iMenuPosY) {
            this.iMenuPosY = i2;
        } else {
            z2 = z;
        }
        if (z2) {
            updateMenuElements_IsInView();
        }
    }

    public final int updateButtonWidth(int i, int i2, int i3) {
        if (getMenuElement(i).getTextWidth() + (CFG.PADDING * 4) > i3) {
            getMenuElement(i).setWidth(getMenuElement(i).getTextWidth() + (CFG.PADDING * 4));
        } else {
            getMenuElement(i).setWidth(i3);
        }
        getMenuElement(i).setPosX(i2);
        updateScrollable();
        return getMenuElement(i).getWidth();
    }

    public void updateLanguage() {
        for (int i = 0; i < getMenuElementsSize(); i++) {
            try {
                getMenuElement(i).updateLanguage();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public void updateMenuElements_IsInView() {
        for (int i = 0; i < this.iMenuElementsSize; i++) {
            this.menuElements.get(i).setIsInView(getMenuElementIsInView_Y(i) && getMenuElementIsInView_X(i));
        }
    }

    public void updateMenuElements_IsInView_X() {
        for (int i = 0; i < this.iMenuElementsSize; i++) {
            this.menuElements.get(i).setIsInView(getMenuElementIsInView_X(i));
        }
    }

    public final void updateMenuPosX(int i) {
        try {
            if (i > getPosX()) {
                this.iNewMenuPositionX = getPosX();
                Game.menuManager.setUpdateSliderMenuPosX(true);
            } else if (i < (getWidth() + getPosX()) - this.iMaxSliderPositionX) {
                this.iNewMenuPositionX = (getWidth() + getPosX()) - this.iMaxSliderPositionX;
                Game.menuManager.setUpdateSliderMenuPosX(true);
            } else {
                this.iNewMenuPositionX = i;
            }
        } catch (Exception unused) {
        }
    }

    public final void updateMenuPosY(int i) {
        try {
            if (!this.scrollableY) {
                this.iNewMenuPositionY = getPosY();
                Game.menuManager.setUpdateSliderMenuPosY(false);
                this.scrollModeY = false;
            } else if (i > getPosY()) {
                this.iNewMenuPositionY = getPosY();
                Game.menuManager.setUpdateSliderMenuPosY(true);
                this.scrollModeY = false;
            } else {
                if (i >= (getHeight() + getPosY()) - this.iMaxSliderPositionY) {
                    this.iNewMenuPositionY = i;
                    return;
                }
                this.iNewMenuPositionY = (getHeight() + getPosY()) - this.iMaxSliderPositionY;
                Game.menuManager.setUpdateSliderMenuPosY(true);
                this.scrollModeY = false;
            }
        } catch (Exception unused) {
        }
    }

    public final void updateScrollable() {
        this.iMaxSliderPositionX = 0;
        this.iMaxSliderPositionY = 0;
        for (int i = 0; i < this.iMenuElementsSize; i++) {
            if (this.menuElements.get(i).getPosY() + this.menuElements.get(i).getHeight() > this.iMaxSliderPositionY) {
                this.iMaxSliderPositionY = this.menuElements.get(i).getPosY() + this.menuElements.get(i).getHeight();
            }
            if (this.menuElements.get(i).getPosX() + this.menuElements.get(i).getWidth() > this.iMaxSliderPositionX) {
                this.iMaxSliderPositionX = this.menuElements.get(i).getPosX() + this.menuElements.get(i).getWidth();
            }
        }
        this.scrollableX = this.iMaxSliderPositionX > getWidth();
        boolean z = this.iMaxSliderPositionY > this.iHeight;
        this.scrollableY = z;
        if (z) {
            updateMenuPosY(this.iPosY);
        }
        if (this.scrollableX) {
            updateMenuPosX(this.iPosX);
        }
    }

    public final void updatedButtonsWidth(int i, int i2) {
        for (int i3 = 0; i3 < getMenuElementsSize(); i3++) {
            i += updateButtonWidth(i3, i, i2) + CFG.PADDING;
        }
        updateScrollable();
    }

    public final void updatedButtonsWidthFromToID(int i, int i2, int i3, int i4) {
        while (i < i2) {
            i3 += updateButtonWidth(i, i3, i4) + CFG.PADDING;
            i++;
        }
        updateScrollable();
    }

    public final void updatedButtonsWidth_Padding(int i, int i2, int i3) {
        for (int i4 = 0; i4 < getMenuElementsSize(); i4++) {
            i += updateButtonWidth(i4, i, i2) + i3;
        }
        updateScrollable();
    }
}
