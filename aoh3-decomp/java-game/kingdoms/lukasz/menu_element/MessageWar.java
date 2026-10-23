package aoc.kingdoms.lukasz.menu_element;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MessageWar extends Button {
    public static int warMaskY;
    private int iCivID;
    public String key;
    public int lastValue = -9415629;
    public Color colorText = Color.WHITE;

    public MessageWar(int i, int i2, boolean z, int i3, String str) {
        this.iCivID = 1;
        this.iCivID = i3;
        this.key = str;
        init("", CFG.FONT_BOLD_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.warBG).getWidth(), ImageManager.getImage(Images.warBG).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        getTextToDraw();
    }

    public static MenuElement_Hover getHoverWar(String str, int i) {
        if (str == null) {
            return null;
        }
        try {
            if (!WarManager.lWars.containsKey(str)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Attackers"), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(WarManager.lWars.get(str).lAggressors.get(0).iCivID).getCivName(), "", WarManager.lWars.get(str).lAggressors.get(0).iCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (WarManager.lWars.get(str).lAggressors.size() > 1) {
                for (int i2 = 1; i2 < WarManager.lWars.get(str).lAggressors.size() && i2 < 9; i2++) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(WarManager.lWars.get(str).lAggressors.get(i2).iCivID, 0, CFG.PADDING));
                }
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Defenders"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(WarManager.lWars.get(str).lDefenders.get(0).iCivID).getCivName(), "", WarManager.lWars.get(str).lDefenders.get(0).iCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (WarManager.lWars.get(str).lDefenders.size() > 1) {
                for (int i3 = 1; i3 < WarManager.lWars.get(str).lDefenders.size() && i3 < 9; i3++) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(WarManager.lWars.get(str).lDefenders.get(i3).iCivID, 0, CFG.PADDING));
                }
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float warScore_Side = WarManager.lWars.get(str).getWarScore_Side(i);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("WarScore") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Math.min(Math.max(WarManager.lWars.get(str).warScore * warScore_Side, -100.0f), 100.0f), 1) + "%", CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Math.abs(WarManager.lWars.get(str).warScore) >= 1.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("InFavorOf") + ": ", CFG.FONT_REGULAR));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv((WarManager.lWars.get(str).warScore > 0.0f ? WarManager.lWars.get(str).lAggressors.get(0) : WarManager.lWars.get(str).lDefenders.get(0)).iCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle((WarManager.lWars.get(str).warScore > 0.0f ? WarManager.lWars.get(str).lAggressors.get(0) : WarManager.lWars.get(str).lDefenders.get(0)).iCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("OccupiedProvinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(str).warScoreFromOccupiedProvinces * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WarScoreFromBattles") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(str).warScoreFromBattles * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TickingWarScore") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(str).tickingWarScore * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WarStarted") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game_Calendar.getDate_ByTurnID(WarManager.lWars.get(str).iWarTurnID), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Math.abs(WarManager.lWars.get(str).warScore) < GameValues.war.WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(CoLRpi.FVxaIZRpVnScw), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WhitePeace") + ": " + Game_Calendar.getDate_ByTurnID(WarManager.lWars.get(str).lastFight_TurnID + GameValues.war.WAR_AUTO_WHITE_PEACE_IF_NOTHING_HAPPENS_IN_WAR_DAYS) + ",  |" + Game.lang.get("WarScore") + "| < " + CFG.getPrecision2(GameValues.war.WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW, 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("WarOverview"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(this.key)) {
            Game.menuManager.setVisibleInGame_War(false);
            return;
        }
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.clearActiveArmy();
        Game.menuManager.showInGame_Battle_HideMenus();
        InGame_War.key = this.key;
        Game.menuManager.rebuildInGame_War();
        if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WAR_VIEW) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_WAR_VIEW);
        } else {
            Game.mapModes.updateWarView(InGame_War.key);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverWar(this.key, this.iCivID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(Images.warBG).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(this.iCivID).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.warMask).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.warBG).getWidth() / 2)) - (ImageManager.getImage(Images.warMask).getWidth() / 2)) + i, (((getPosY() + warMaskY) + (ImageManager.getImage(Images.warBG).getHeight() / 2)) - (ImageManager.getImage(Images.warMask).getHeight() / 2)) + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.warOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
            ImageManager.getImage(Images.warOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 1.0f));
        Images.gradientXY.draw(spriteBatch, getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + getHeight()) - this.iTextHeight) + i2, getWidth() - (CFG.PADDING * 4), (CFG.PADDING / 2) + this.iTextHeight, false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (this.iTextWidth / 2)) + i, ((getPosY() + getHeight()) - this.iTextHeight) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return getIsHovered() ? Colors.getColorTopStats3(z, getIsHovered()) : this.colorText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return SoundsManager.SOUND_CLICK_WAR;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        try {
            if (WarManager.lWars.containsKey(this.key) && this.lastValue != ((int) WarManager.lWars.get(this.key).warScore)) {
                boolean z = ((float) Math.abs(this.lastValue)) < GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE;
                int i = (int) WarManager.lWars.get(this.key).warScore;
                this.lastValue = i;
                int warScore_Side = i * WarManager.lWars.get(this.key).getWarScore_Side(this.iCivID);
                if (z && Math.abs(this.lastValue) >= GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE) {
                    Game.soundsManager.playSound(SoundsManager.SOUND_WAR_END);
                }
                if (warScore_Side == 0) {
                    this.colorText = Colors.COLOR_TOP_STATS3;
                } else if (warScore_Side < 0) {
                    this.colorText = Colors.HOVER_NEGATIVE;
                } else if (warScore_Side >= GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE) {
                    this.colorText = Colors.HOVER_GOLD;
                } else {
                    this.colorText = Colors.HOVER_POSITIVE;
                }
                setText((warScore_Side > 0 ? "+" : "") + Math.min(100, Math.max(-100, warScore_Side)) + "%");
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return super.getTextToDraw();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCivID;
        }
    }
}
