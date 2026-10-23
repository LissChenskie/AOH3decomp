package aoc.kingdoms.lukasz.jakowski;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScrollManager {
    private static final int DEFAULT_SCROLL = 15;
    private static int iScroll = 15;
    private static long lScrollTime;

    protected static final boolean getIsScrollableX_MenuHovered(int i) {
        try {
            return Game.menuManager.getActiveMenu().get(i).getScrollableX();
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
            return false;
        }
    }

    protected static final boolean getIsScrollableY_MenuHovered(int i) {
        try {
            return Game.menuManager.getActiveMenu().get(i).getScrollableY();
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
            return false;
        }
    }

    protected static final boolean getIsScrollable_Hovered_MenuElement() {
        try {
            return Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).getScrollable();
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
            return false;
        }
    }

    protected static final void scrollHoveredMenuElement(int i) {
        try {
            Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).scrollByWheel(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected static final void scrollHoveredMenu_X(int i, int i2) {
        try {
            Game.menuManager.getActiveMenu().get(i).stopScrolling();
            Game.menuManager.getActiveMenu().get(i).updateMenuPosX(Game.menuManager.getActiveMenu().get(i).getNewMenuPosX() + i2);
            Game.hoverManager.actionMove_Hover(Touch.getMousePosX(), Touch.getMousePosY(), true);
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    protected static final void scrollHoveredMenu_Y(int i, int i2) {
        try {
            Game.menuManager.getActiveMenu().get(i).stopScrolling();
            Game.menuManager.getActiveMenu().get(i).updateMenuPosY(Game.menuManager.getActiveMenu().get(i).getNewMenuPosY() + i2);
            Game.hoverManager.actionMove_Hover(Touch.getMousePosX(), Touch.getMousePosY(), true);
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final boolean scrolled(int i) {
        try {
            int hoveredMenuID_Scroll = Game.hoverManager.getHoveredMenuID_Scroll(Touch.getMousePosX(), Touch.getMousePosY());
            if (getIsScrollable_Hovered_MenuElement()) {
                updateScroll();
                scrollHoveredMenuElement((-iScroll) * i);
            } else if (hoveredMenuID_Scroll >= 0) {
                if (getIsScrollableY_MenuHovered(hoveredMenuID_Scroll)) {
                    updateScroll();
                    scrollHoveredMenu_Y(hoveredMenuID_Scroll, (-iScroll) * i);
                } else if (getIsScrollableX_MenuHovered(hoveredMenuID_Scroll)) {
                    updateScroll();
                    scrollHoveredMenu_X(hoveredMenuID_Scroll, (-iScroll) * i);
                }
            } else if (Game.hoverManager.hoverActiveSliderMenuID < 0 && Game.hoverManager.hoverActiveMenuElementID < 0) {
                Game.mapTouchManager.Scroll(i);
            }
            Game.soundsManager.playHover();
            return true;
        } catch (ArithmeticException e) {
            CFG.exceptionStack(e);
            return true;
        } catch (IndexOutOfBoundsException e2) {
            CFG.exceptionStack(e2);
            return true;
        } catch (NullPointerException e3) {
            CFG.exceptionStack(e3);
            return true;
        } catch (StackOverflowError e4) {
            CFG.exceptionStack(e4);
            return true;
        }
    }

    protected static final void updateHoveredMenuElement_Hover(int i, int i2) {
        try {
            if (Game.hoverManager.hoverActiveSliderMenuID < 0 || Game.hoverManager.hoverActiveMenuElementID < 0) {
                return;
            }
            Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).updateHover(i, i2, Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuPosX(), Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuPosY());
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    protected static final void updateScroll() {
        if (lScrollTime + 50 <= CFG.currentTimeMillis) {
            lScrollTime = CFG.currentTimeMillis;
            iScroll = 15;
            return;
        }
        lScrollTime = CFG.currentTimeMillis;
        int i = iScroll;
        int i2 = i + ((int) (i * 1.2f));
        iScroll = i2;
        if (i2 > 75) {
            iScroll = 75;
        }
    }
}
