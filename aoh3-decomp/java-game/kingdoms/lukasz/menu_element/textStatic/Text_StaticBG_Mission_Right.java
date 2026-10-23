package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Title;
import aoc.kingdoms.lukasz.menusInGame.InGame_Event;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_Mission_Right extends Text_StaticBG_Mission {
    public static final int ANIMATION_T = 2000;
    public static int animationState;
    public static long lTimeAnimation;
    public int iLastTurnID;
    public int iRespondTurnID;
    public int iText2Width;
    public String sText2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission_Right$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == this.id) {
                Game.menuManager.setVisibleInGame_Event(false);
            }
        }
    }

    public Text_StaticBG_Mission_Right(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        super(str, i, i2, i3, i4, i5, i6, i7, i8);
        this.iLastTurnID = -65151;
        this.sText2 = "";
        this.iText2Width = 0;
        this.iRespondTurnID = i9;
        this.sText2 = Game.lang.get("DaysX", GameValues.events.EVENT_TIME_TO_RESPOND);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i), this.sText2);
        this.iText2Width = (int) Renderer.glyphLayout.width;
        int i10 = 0;
        while (this.iTextWidth > ((getWidth() - (this.textPosition.getTextPosition() * 2)) - (CFG.PADDING * 2)) - this.iText2Width && getText().length() > 5 && (i10 = i10 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.missions, "", getText(), Colors.HOVER_GOLD, Game.lang.get("Event"), "", Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClickToView"), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission, aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        super.draw(spriteBatch, i, i2, z, z2);
        int i3 = animationState;
        if (i3 >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 2000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                spriteBatch.setColor(new Color(ButtonGame.getColorLine().r, ButtonGame.getColorLine().g, ButtonGame.getColorLine().b, Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 2000.0f, 1.0f) * 0.35f));
                Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
                if (lTimeAnimation < CFG.currentTimeMillis - 2000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 2000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                spriteBatch.setColor(new Color(ButtonGame.getColorLine().r, ButtonGame.getColorLine().g, ButtonGame.getColorLine().b, 0.35f - (Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 2000.0f, 1.0f) * 0.35f)));
                Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
                if (lTimeAnimation < CFG.currentTimeMillis - 2000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        try {
            if (Game_Calendar.TURN_ID != this.iLastTurnID) {
                this.iLastTurnID = Game_Calendar.TURN_ID;
                this.sText2 = Game.lang.get("DaysX", this.iRespondTurnID - Game_Calendar.TURN_ID);
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText2);
                this.iText2Width = (int) Renderer.glyphLayout.width;
                if (this.iRespondTurnID - Game_Calendar.TURN_ID <= 0) {
                    Game.addSimpleTask(new AnonymousClass1("RebuildInGameRight", getCurrent()));
                }
            }
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText2, (((getPosX() + getWidth()) - this.textPosition.getTextPosition()) - this.iText2Width) + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, Colors.getColorTopStats(z, getIsHovered()));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission
    public void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 1.0f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }
}
