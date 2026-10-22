package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Disease;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonTerrain extends Button {
    public int boxH;
    public int boxW;
    public int boxW2;
    public int iDeathsHeight;
    public int iDeathsWidth;
    public int iNameHeight;
    public int iNameWidth;
    public int iProvinceID;
    public int lastValue = -997654;
    public String sDeaths;
    public String sName;
    public int terrainID2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonTerrain$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    public ButtonTerrain(int i, int i2, int i3) {
        this.iProvinceID = i;
        this.fontID = CFG.FONT_REGULAR_SMALL;
        this.terrainID2 = i % Game.terrainManager.terrainImages.get(Game.getProvince(i).getTerrainID()).size();
        init(Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).Name, this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.terrainFrame).getWidth(), ImageManager.getImage(Images.terrainFrame).getHeight(), true, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Terrain") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.terrainManager.terrains.get(Game.getProvince(this.iProvinceID).getTerrainID()).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        int terrainID = Game.getProvince(this.iProvinceID).getTerrainID();
        if (Game.terrainManager.terrains.get(terrainID).Defense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DefenseBonus") + ": ", CFG.FONT_REGULAR_SMALL));
            String str = "" + (Game.terrainManager.terrains.get(terrainID).Defense > 0 ? "+" : "") + Game.terrainManager.terrains.get(terrainID).Defense;
            if (Game.terrainManager.terrains.get(terrainID).Defense == 0) {
                color5 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color5 = Game.terrainManager.terrains.get(terrainID).Defense > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str, color5));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.terrainManager.terrains.get(terrainID).MovementSpeed != 1.0d) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MovementSpeed") + ": ", CFG.FONT_REGULAR_SMALL));
            String str2 = "" + (((double) Game.terrainManager.terrains.get(terrainID).MovementSpeed) > 1.0d ? "+" : "") + ((int) ((Game.terrainManager.terrains.get(terrainID).MovementSpeed - 1.0f) * 100.0f)) + "%";
            if (Game.terrainManager.terrains.get(terrainID).MovementSpeed == 1.0d) {
                color4 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color4 = ((double) Game.terrainManager.terrains.get(terrainID).MovementSpeed) > 1.0d ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, color4));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.movementSpeed, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.terrainManager.terrains.get(terrainID).PopulationGrowth != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PopulationGrowthModifier") + ": ", CFG.FONT_REGULAR_SMALL));
            String str3 = "" + (Game.terrainManager.terrains.get(terrainID).PopulationGrowth > 0 ? "+" : "") + Game.terrainManager.terrains.get(terrainID).PopulationGrowth + "%";
            if (Game.terrainManager.terrains.get(terrainID).PopulationGrowth == 0) {
                color3 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color3 = Game.terrainManager.terrains.get(terrainID).PopulationGrowth > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str3, color3));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.terrainManager.terrains.get(terrainID).IncreaseGrowthRateCost != 1.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseGrowthRateCost") + ": ", CFG.FONT_REGULAR_SMALL));
            String str4 = "" + ((int) (Game.terrainManager.terrains.get(terrainID).IncreaseGrowthRateCost * 100.0f)) + "%";
            if (Game.terrainManager.terrains.get(terrainID).IncreaseGrowthRateCost == 1.0f) {
                color2 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color2 = Game.terrainManager.terrains.get(terrainID).IncreaseGrowthRateCost < 1.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str4, color2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.terrainManager.terrains.get(terrainID).BuildCost != 1.0d) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildCostModifier") + ": ", CFG.FONT_REGULAR_SMALL));
            String str5 = (Game.terrainManager.terrains.get(terrainID).BuildCost > 0.0f ? "+" : "") + ((int) ((Game.terrainManager.terrains.get(terrainID).BuildCost - 1.0f) * 100.0f)) + "%";
            if (Game.terrainManager.terrains.get(terrainID).BuildCost == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = Game.terrainManager.terrains.get(terrainID).BuildCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str5, color));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        try {
            if (Game.getProvince(this.iProvinceID).provincePlague != null) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Plague") + ": ", CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Disease(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Deaths") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + Game.getProvince(this.iProvinceID).provincePlague.deaths), CFG.FONT_BOLD_SMALL, Game.getProvince(this.iProvinceID).provincePlague.deaths > 0 ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Day") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ((Game_Calendar.TURN_ID - Game.getProvince(this.iProvinceID).provincePlague.sinceTurnID) + 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalNumberOfAllDiseasesInProvince") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + Game.getProvinceData10(this.iProvinceID).n), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.disease, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalDeathsDueToDiseasesDuringTheGame") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + Game.getProvinceData10(this.iProvinceID).d), CFG.FONT_BOLD_SMALL, Game.getProvinceData10(this.iProvinceID).d > 0 ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DistanceFromCapital") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getDistanceFromAToB_Km(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), this.iProvinceID), 10) + " km", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Infrastructure") + ": ", CFG.FONT_BOLD_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(this.iProvinceID).getInfrastructure() + " / " + Game.getProvince(this.iProvinceID).iInfrastructureMax, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiseasesDeathRate") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(this.iProvinceID).getInfrastructure() <= 0 ? "" : "+") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL * 100.0f * Game.getProvince(this.iProvinceID).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(this.iProvinceID).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.disease, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Game.terrainManager.terrainImages.get(Game.getProvince(this.iProvinceID).getTerrainID()).get(this.terrainID2).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.terrainFrame).getWidth(), ImageManager.getImage(Images.terrainFrame).getHeight());
        if (InGame_ProvinceInfo.provinceIMG != null) {
            InGame_ProvinceInfo.provinceIMG.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.terrainFrame).getWidth(), ImageManager.getImage(Images.terrainFrame).getHeight());
        }
        try {
            if (Game.getProvince(this.iProvinceID).provincePlague != null) {
                if (this.lastValue != Game.getProvince(this.iProvinceID).provincePlague.deaths) {
                    this.sName = PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).sName;
                    this.sDeaths = Game.lang.get("Deaths") + ": " + CFG.getNumberWithSpaces("" + Game.getProvince(this.iProvinceID).provincePlague.deaths);
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sName);
                    this.iNameWidth = (int) Renderer.glyphLayout.width;
                    this.iNameHeight = (int) Renderer.glyphLayout.height;
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sDeaths);
                    this.iDeathsWidth = (int) Renderer.glyphLayout.width;
                    this.iDeathsHeight = (int) Renderer.glyphLayout.height;
                    this.boxW = PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getWidth() + (getPlaguePaddingInnerX() * 4) + Math.max(this.iNameWidth, this.iDeathsWidth);
                    this.boxW2 = PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getWidth() + (getPlaguePaddingInnerX() * 2);
                    this.boxH = (getPlaguePaddingInner() * 2) + Math.max(PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getHeight(), this.iDeathsHeight + this.iNameHeight + getPlaguePaddingInner());
                }
                spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
                Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getPlaguePadding() + i, getPosY() + getPlaguePadding() + i2, this.boxW, this.boxH, 1.0f);
                spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
                Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getPlaguePadding() + i, getPosY() + getPlaguePadding() + i2, this.boxW2, this.boxH, 1.0f);
                spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.25f));
                Images.gradientXY.draw(spriteBatch, getPosX() + getPlaguePadding() + i, getPosY() + (this.boxH / 2) + getPlaguePadding() + i2, this.boxW, CFG.PADDING * 2);
                Images.gradientXY.draw(spriteBatch, getPosX() + getPlaguePadding() + i, getPosY() + getPlaguePadding() + i2, this.boxW, CFG.PADDING * 2, false, true);
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.45f));
                Images.gradientFull.draw(spriteBatch, getPosX() + getPlaguePadding() + i, getPosY() + getPlaguePadding() + i2, this.boxW, 1);
                Images.gradientFull.draw(spriteBatch, getPosX() + getPlaguePadding() + i, ((getPosY() + this.boxH) - 1) + getPlaguePadding() + i2, this.boxW, 1);
                spriteBatch.setColor(Color.WHITE);
                PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).draw(spriteBatch, getPosX() + getPlaguePadding() + getPlaguePaddingInnerX() + i, (((getPosY() + getPlaguePadding()) + (this.boxH / 2)) - (PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getHeight() / 2)) + i2);
                Renderer.drawText(spriteBatch, this.fontID, this.sName, getPosX() + getPlaguePadding() + (getPlaguePaddingInnerX() * 3) + i + PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getWidth() + i, (((getPosY() + getPlaguePadding()) + (this.boxH / 2)) - (((this.iNameHeight + this.iDeathsHeight) + getPlaguePaddingInnerX()) / 2)) + i2, Colors.HOVER_IMPORTANT);
                Renderer.drawText(spriteBatch, this.fontID, this.sDeaths, getPosX() + getPlaguePadding() + (getPlaguePaddingInnerX() * 3) + i + PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(this.iProvinceID).provincePlague.id).iImageID).getWidth() + i, (((getPosY() + getPlaguePadding()) + (this.boxH / 2)) - (((this.iNameHeight + this.iDeathsHeight) + getPlaguePaddingInnerX()) / 2)) + this.iNameHeight + getPlaguePaddingInnerX() + i2, Colors.HOVER_IMPORTANT);
            } else {
                this.lastValue = -997654;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f));
        MenuManager.sparksAnimation.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.terrainFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.terrainFrame).getWidth(), ImageManager.getImage(Images.terrainFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.terrainFrame).getWidth(), ImageManager.getImage(Images.terrainFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, (((getPosX() + getWidth()) - getTextWidth()) - (CFG.PADDING * 3)) + i, (((getPosY() + getHeight()) - (CFG.PADDING * 3)) - getTextHeight()) + i2, getTextWidth() + (CFG.PADDING * 2), getTextHeight() + (CFG.PADDING * 2), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, getText(), (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - getTextWidth()) + i, (((getPosY() + getHeight()) - getTextHeight()) - (CFG.PADDING * 2)) + i2, Colors.HOVER_IMPORTANT);
    }

    public final int getPlaguePadding() {
        return CFG.PADDING;
    }

    public final int getPlaguePaddingInner() {
        return CFG.PADDING;
    }

    public final int getPlaguePaddingInnerX() {
        return CFG.PADDING + (CFG.PADDING / 2);
    }
}
