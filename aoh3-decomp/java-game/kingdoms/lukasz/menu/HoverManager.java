package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class HoverManager {
    public static int HOVER_MOBILE_TIME_VISIBLE = 25000;
    protected static long hoverMobileTime;
    public static long hoverTime;
    public int hoverActiveSliderMenuID = -1;
    public int hoverActiveMenuElementID = -1;
    public int hoverActiveMenuTitleID = -1;
    public boolean hoverActiveMenuTitleCloseHovered = false;
    public List<Image> lHoverLoadedTemporaryImages = new ArrayList();

    public final boolean actionMove_Hover(int i, int i2, boolean z) {
        if (Game.menuManager.getInGame() && InGame.ONLY_MAP_MODE) {
            return false;
        }
        try {
            if (Game.menuManager.dialogMenu.getVisible()) {
                resetHoverActive_Menu();
                return true;
            }
            this.hoverActiveMenuTitleID = -1;
            this.hoverActiveMenuTitleCloseHovered = false;
            if (this.hoverActiveSliderMenuID >= 0 && this.hoverActiveMenuElementID >= 0) {
                try {
                    if (!Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getVisible() || Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getTypeOfElement() == MenuElement_Type.TRANSPARENT_BACKGROUND) {
                        resetHoverActive_Menu();
                    } else if (Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getClickable() && i >= Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getPosX() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosX() && i <= Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getPosX() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosX() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getWidth() && i2 >= Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getPosY() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosY() && i2 <= Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getPosY() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getHeight() + Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosY()) {
                        return true;
                    }
                } catch (Exception unused) {
                    resetHoverActive_Menu();
                }
            }
            for (int i3 = 0; i3 < Game.menuManager.getActiveMenu().size(); i3++) {
                try {
                    if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getVisible()) {
                        if (i >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() && i <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getWidth() && i2 >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() && i2 <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getHeight()) {
                            for (int i4 = 0; i4 < Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElementsSize(); i4++) {
                                if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getVisible() && Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).canBeHovered() && i >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuPosX() && i <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getWidth() && i2 >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getPosY() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuPosY() && i2 <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getPosY() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuElement(i4).getHeight() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getMenuPosY()) {
                                    if (this.hoverActiveSliderMenuID != Game.menuManager.getActiveOrder(i3) || this.hoverActiveMenuElementID != i4) {
                                        if (this.hoverActiveMenuElementID < 0 || this.hoverActiveSliderMenuID < 0) {
                                            MenuElement_Hover.resetAnimation();
                                        } else {
                                            resetHoverActive_Menu();
                                        }
                                        this.hoverActiveSliderMenuID = Game.menuManager.getActiveOrder(i3);
                                        this.hoverActiveMenuElementID = i4;
                                        hoverTime = CFG.currentTimeMillis;
                                        Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).setIsHovered(true);
                                        Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).buildElementHover();
                                        updateHoveredFlag();
                                        if (Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).playSFX_Hovered()) {
                                            Game.soundsManager.playHover();
                                        }
                                    }
                                    return true;
                                }
                            }
                            if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getLockHoverOverMenuBackground()) {
                                resetHoverActive_Menu();
                                return true;
                            }
                        } else if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getTitle() != null && i >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() && i <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getWidth() && i2 >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() - Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getTitle().getHeight() && i2 <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY()) {
                            if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getCloseable() && i >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_PosX() && i <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_PosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_Width() && i2 >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_PosY() && i2 <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_PosY() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).menuClose.getCloseMenu_Height()) {
                                this.hoverActiveMenuTitleCloseHovered = true;
                            }
                            resetHoverActive_Menu();
                            this.hoverActiveMenuTitleID = Game.menuManager.getActiveOrder(i3);
                            return true;
                        }
                    }
                } catch (IndexOutOfBoundsException e) {
                    CFG.exceptionStack(e);
                }
            }
            resetHoverActive_Menu();
        } catch (GdxRuntimeException e2) {
            CFG.exceptionStack(e2);
        } catch (NullPointerException e3) {
            CFG.exceptionStack(e3);
        }
        return false;
    }

    public final int getHoveredMenuID_Scroll(int i, int i2) {
        for (int i3 = 0; i3 < Game.menuManager.getActiveMenu().size(); i3++) {
            try {
                if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getVisible()) {
                    if (i < Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() || i > Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getWidth() || i2 < Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() || i2 > Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getHeight()) {
                        if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getTitle() != null && i >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() && i <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosX() + Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getWidth() && i2 >= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY() - Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getTitle().getHeight() && i2 <= Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getPosY()) {
                            return -1;
                        }
                    } else if (Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getScrollableX() || Game.menuManager.getActiveMenu().get(Game.menuManager.getActiveOrder(i3)).getScrollableY()) {
                        return Game.menuManager.getActiveOrder(i3);
                    }
                }
            } catch (IndexOutOfBoundsException e) {
                CFG.exceptionStack(e);
            }
        }
        return -1;
    }

    protected final boolean getMenuElementHover_IsInView() {
        try {
            return Game.hoverManager.hoverActiveSliderMenuID >= 0 && Game.hoverManager.hoverActiveMenuElementID >= 0 && !Game.menuManager.getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).getMenuElement_Hover_IsNull();
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
            return false;
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
            return false;
        }
    }

    protected final boolean isSomethingHovered() {
        try {
            return this.hoverActiveMenuElementID >= 0 && this.hoverActiveSliderMenuID >= 0 && Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).menuElementHover != null;
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
            return false;
        }
    }

    public final int loadHoverLoadedTemporaryImage(String str) {
        try {
            this.lHoverLoadedTemporaryImages.add(new Image(ImageManager.loadTexture(str)));
            return Math.max(0, this.lHoverLoadedTemporaryImages.size() - 1);
        } catch (GdxRuntimeException unused) {
            this.lHoverLoadedTemporaryImages.add(new Image(ImageManager.loadTexture(CFG.FILE_IMAGE_NOT_FOUND)));
            return Math.max(0, this.lHoverLoadedTemporaryImages.size() - 1);
        }
    }

    public final void rebuildHoverAfterRebuildMenu() {
        try {
            if (this.hoverActiveSliderMenuID < 0 || this.hoverActiveMenuElementID < 0) {
                return;
            }
            Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).setIsHovered(true);
            Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).buildElementHover();
        } catch (Exception unused) {
        }
    }

    public final void resetHoverActive_Menu() {
        try {
            if (this.hoverActiveSliderMenuID >= 0 && this.hoverActiveMenuElementID >= 0) {
                Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).setIsHovered(false);
                Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).resetElementHover();
                this.hoverActiveSliderMenuID = -1;
                this.hoverActiveMenuElementID = -1;
                this.hoverActiveMenuTitleID = -1;
                updateHoveredFlag();
                for (int size = this.lHoverLoadedTemporaryImages.size() - 1; size >= 0; size--) {
                    this.lHoverLoadedTemporaryImages.get(size).dispose();
                    this.lHoverLoadedTemporaryImages.remove(size);
                }
                return;
            }
        } catch (Exception unused) {
        }
        this.hoverActiveSliderMenuID = -1;
        this.hoverActiveMenuElementID = -1;
        this.hoverActiveMenuTitleID = -1;
    }

    public final void resetHoverActive_Menu_Force() {
        this.hoverActiveSliderMenuID = -1;
        this.hoverActiveMenuElementID = -1;
        this.hoverActiveMenuTitleID = -1;
        updateHoveredFlag();
        try {
            for (int size = this.lHoverLoadedTemporaryImages.size() - 1; size >= 0; size--) {
                this.lHoverLoadedTemporaryImages.get(size).dispose();
                this.lHoverLoadedTemporaryImages.remove(size);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void udpateMobile() {
        if (CFG.isAndroid && getMenuElementHover_IsInView() && hoverMobileTime < CFG.currentTimeMillis - ((long) HOVER_MOBILE_TIME_VISIBLE)) {
            resetHoverActive_Menu();
        }
    }

    protected final void updateElementHover_Animation() {
        if (MenuElement_Hover.ANIMATION_ALPHA < 1.0f) {
            MenuElement_Hover.ANIMATION_ALPHA += (CFG.currentTimeMillis - MenuElement_Hover.ANIMATION_TIME) / MenuElement_Hover.ANIMATION_INTERVAL;
            MenuElement_Hover.ANIMATION_PADDING = (CFG.PADDING * 2) - ((CFG.PADDING * 2) * (MenuElement_Hover.ANIMATION_ALPHA * 1.65f));
            if (MenuElement_Hover.ANIMATION_PADDING < 0.0f) {
                MenuElement_Hover.ANIMATION_PADDING = 0.0f;
            }
            if (MenuElement_Hover.ANIMATION_ALPHA > 1.0f) {
                MenuElement_Hover.ANIMATION_ALPHA = 1.0f;
            }
        }
    }

    public final void updateHoveredElement() {
        if (this.hoverActiveSliderMenuID < 0 || this.hoverActiveMenuElementID < 0) {
            return;
        }
        try {
            if (!Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getVisible() || Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getTypeOfElement() == MenuElement_Type.TRANSPARENT_BACKGROUND) {
                return;
            }
            Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).updateHovered();
        } catch (Exception unused) {
        }
    }

    public final void updateHoveredFlag() {
        try {
            if (this.hoverActiveSliderMenuID < 0 || this.hoverActiveMenuElementID < 0 || Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).getTypeOfElement() != MenuElement_Type.BUTTON_FLAG) {
                ProvinceDraw.drawProvincesCiv_HoveredFlagID = 0;
            }
        } catch (Exception e) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = 0;
            CFG.exceptionStack(e);
        }
    }

    public final void updateHoveredMenuElement_Hover(int i, int i2) {
        try {
            if (this.hoverActiveSliderMenuID < 0 || this.hoverActiveMenuElementID < 0) {
                return;
            }
            Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuElement(this.hoverActiveMenuElementID).updateHover(i, i2, Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosX(), Game.menuManager.getActiveMenu().get(this.hoverActiveSliderMenuID).getMenuPosY());
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }
}
