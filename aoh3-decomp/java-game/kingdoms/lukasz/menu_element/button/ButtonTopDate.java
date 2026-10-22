package aoc.kingdoms.lukasz.menu_element.button;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Space;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonTopDate extends Button {
    public static int iMaxWidth;
    protected static final Color COLOR_SPEED = new Color(0.27450982f, 0.039215688f, 0.11764706f, 1.0f);
    public static long ANIMATION_TIME = 0;
    public static float ANIMATION_DURATION = 150.0f;

    public ButtonTopDate(String str, int i, int i2) {
        this.fontID = CFG.FONT_BOLD;
        setText(str);
        updateMaxWidth();
        init(str, this.fontID, this.iTextPositionX, 0, i, getTextWidth() + (getPaddingX() * 2) + ImageManager.getImage(Images.pause).getWidth() + (CFG.PADDING * 2), i2, true, true, false, false);
    }

    protected static final void draw_Speed(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Color color = COLOR_SPEED;
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.85f));
        Images.pix.draw(spriteBatch, i, i2, i3, i4);
        spriteBatch.setColor(color);
        int i5 = i4 / 2;
        Images.gradientXY.draw(spriteBatch, i, (i2 + i4) - i5, i3, i5, false, true);
        Images.gradientXY.draw(spriteBatch, i, i2, i3, i5, false, false);
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i, i2, CFG.PADDING, i4);
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, (i + i3) - CFG.PADDING, i2, CFG.PADDING, i4, true, false);
        spriteBatch.setColor(Color.WHITE);
    }

    public static Color getColorDate(boolean z, boolean z2, float f) {
        if (z) {
            return new Color(Colors.COLOR_TOP_STATS_ACTIVE.r, Colors.COLOR_TOP_STATS_ACTIVE.g, Colors.COLOR_TOP_STATS_ACTIVE.b, f);
        }
        return z2 ? new Color(Colors.COLOR_TOP_STATS_HOVER.r, Colors.COLOR_TOP_STATS_HOVER.g, Colors.COLOR_TOP_STATS_HOVER.b, f) : new Color(Colors.COLOR_TOP_STATS.r, Colors.COLOR_TOP_STATS.g, Colors.COLOR_TOP_STATS.b, f);
    }

    public static int getPaddingX() {
        return CFG.PADDING * 4;
    }

    public static int getPaddingY() {
        return CFG.PADDING;
    }

    public static final void updateMaxWidth() {
        for (int i = 0; i < 12; i++) {
            updateMaxWidth((Game.HOURS_PER_TURN < 24 ? "24:00, " : "") + "31 " + Game_Calendar.getMonthName(i) + " 2345");
        }
    }

    public static final void updateMaxWidth(String str) {
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), str);
        iMaxWidth = 0;
        iMaxWidth = Math.max(0, (int) Renderer.glyphLayout.width);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Game.gameThread.play) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToPauseTheGame"), Colors.HOVER_GOLD));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToUnpauseTheGame"), Colors.HOVER_GOLD));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(jkEBdieJhbh.hWLIBQmdZvXP) + ": ", "" + Game_Calendar.getCurrentDate(), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game_Calendar.TURN_ID != 1) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PlayingTime") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game_Calendar.getNumOfDates_ByTurnID(1), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).Name, Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.gameAges.getAge_TurnDays(Game_Calendar.CURRENT_AGEID) > 1) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TurnsX", 1) + " = ", Game.lang.get("XDays", Game.gameAges.getAge_TurnDays(Game_Calendar.CURRENT_AGEID)), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Regiment") + ", " + Game.lang.get("Manpower") + ": ", "" + CFG.getNumberWithSpaces("" + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (CFG.isDesktop()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Space());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("SPACE", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int width = ((int) ((getWidth() * 0.9f) - (CFG.PADDING * (Game.gameThread.playMaxSpeed - 1)))) / Game.gameThread.playMaxSpeed;
        int width2 = ((int) (((getWidth() * 0.9f) - (Game.gameThread.playMaxSpeed * width)) - (CFG.PADDING * (Game.gameThread.playMaxSpeed - 1)))) / 2;
        int posY = ((getPosY() + getHeight()) - CFG.PADDING) + i2;
        int i3 = CFG.PADDING;
        if (ANIMATION_TIME + ANIMATION_DURATION >= CFG.currentTimeMillis) {
            int iMax = Math.max(0, (ImageManager.getImage(Images.topStats).getHeight() / 3) - ((int) ((ImageManager.getImage(Images.topStats).getHeight() / 3) * ((CFG.currentTimeMillis - ANIMATION_TIME) / ANIMATION_DURATION))));
            posY -= iMax;
            i3 += iMax;
            if (CFG.currentTimeMillis - ANIMATION_TIME > ANIMATION_DURATION) {
                ANIMATION_TIME = 0L;
            }
        }
        for (int i4 = 0; i4 < Game.gameThread.playSpeed; i4++) {
            draw_Speed(spriteBatch, getPosX() + width2 + ((int) (getWidth() * 0.05f)) + ((CFG.PADDING + width) * i4) + i, posY, width, i3);
        }
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(getColor(z));
        ImageManager.getImage(Game.gameThread.play ? Images.pause : Images.play).draw(spriteBatch, (((getPosX() + getWidth()) - getPaddingX()) - ImageManager.getImage(Images.pause).getWidth()) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.pause).getHeight() / 2)) + i2);
        spriteBatch.setColor(Color.WHITE);
        setText(Game_Calendar.getCurrentDate());
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), (((((getPosX() + getWidth()) - getPaddingX()) - ImageManager.getImage(Images.pause).getWidth()) - (CFG.PADDING * 2)) - getTextWidth()) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return iMaxWidth + (getPaddingX() * 2) + ImageManager.getImage(Images.pause).getWidth() + (CFG.PADDING * 2);
    }
}
