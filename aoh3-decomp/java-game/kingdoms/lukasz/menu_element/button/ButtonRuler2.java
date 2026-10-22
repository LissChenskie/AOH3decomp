package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonRuler2 extends Button {
    public int iCivID;

    public ButtonRuler2(int i, int i2, int i3) {
        this.iCivID = i;
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.rulerFrame).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.rulerFrame).getWidth();
    }

    public static final MenuElement_Hover getHoverRuler(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i, Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).RulerTitle + ": " + Game.getCiv(i).ruler.Name));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Born") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(i).ruler.BornDay + " " + Game_Calendar.getMonthName(Game.getCiv(i).ruler.BornMonth) + " " + Game.getCiv(i).ruler.BornYear, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - Game.getCiv(i).ruler.BornYear)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(i).ruler.rulerBonuses.MonthlyIncome != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (Game.getCiv(i).ruler.rulerBonuses.MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.MonthlyIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.TaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", (Game.getCiv(i).ruler.rulerBonuses.TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.TaxEfficiency, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.ProductionEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", (Game.getCiv(i).ruler.rulerBonuses.ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.ProductionEfficiency, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.ProvinceMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", (Game.getCiv(i).ruler.rulerBonuses.ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.ProvinceMaintenance, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.MaxManpower != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (Game.getCiv(i).ruler.rulerBonuses.MaxManpower > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.MaxManpower, 1), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.IncreaseManpowerCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.RecruitmentTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitmentTime") + ": ", (Game.getCiv(i).ruler.rulerBonuses.RecruitmentTime > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.Research != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", (Game.getCiv(i).ruler.rulerBonuses.Research > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.Research, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.ResearchPoints != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", (Game.getCiv(i).ruler.rulerBonuses.ResearchPoints > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.Devastation != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Devastation") + ": ", (Game.getCiv(i).ruler.rulerBonuses.Devastation > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.Devastation * 100.0f, 100) + "%", Images.devastation, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.GeneralCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.GeneralCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.GeneralCost * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.ConstructionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.ConstructionCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.ConstructionCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(PxHJ.auUsqpzTCHcsuJ) + ": ", (Game.getCiv(i).ruler.rulerBonuses.AdministrationBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryBuildingsCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.MilitaryBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("EconomyBuildingsCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.EconomyBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.InvestInEconomyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.InvestInEconomyCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.IncreaseTaxEfficiencyCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.IncreaseGrowthRateCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.IncreaseGrowthRateCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.IncreaseGrowthRateCost * 100.0f, 100) + "%", Images.populationUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", (Game.getCiv(i).ruler.rulerBonuses.DevelopInfrastructureCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.ImproveRelationsModifier != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ImproveRelationsModifier") + ": ", (Game.getCiv(i).ruler.rulerBonuses.ImproveRelationsModifier > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.ImproveRelationsModifier, 100) + "%", Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.LoanInterest != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LoanInterest") + ": ", (Game.getCiv(i).ruler.rulerBonuses.LoanInterest > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.LoanInterest, 100) + "%", Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.MonthlyLegacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", (Game.getCiv(i).ruler.rulerBonuses.MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).ruler.rulerBonuses.MonthlyLegacy, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", (Game.getCiv(i).ruler.rulerBonuses.UnitsAttack > 0 ? "+" : "") + Game.getCiv(i).ruler.rulerBonuses.UnitsAttack, Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", (Game.getCiv(i).ruler.rulerBonuses.UnitsDefense > 0 ? "+" : "") + Game.getCiv(i).ruler.rulerBonuses.UnitsDefense, Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (Game.getCiv(i).ruler.rulerBonuses.GeneralAttack > 0 ? "+" : "") + Game.getCiv(i).ruler.rulerBonuses.GeneralAttack, Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(i).ruler.rulerBonuses.GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (Game.getCiv(i).ruler.rulerBonuses.GeneralDefense <= 0 ? "" : "+") + Game.getCiv(i).ruler.rulerBonuses.GeneralDefense, Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList, z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        if (Game.getCiv(this.iCivID).getCapitalProvinceID() >= 0) {
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverRuler(this.iCivID, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.rulerFrame).getWidth(), ImageManager.getImage(Images.rulerFrame).getHeight());
        }
        try {
            if (RulersManager.rulerIMG != null) {
                RulersManager.rulerIMG.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.rulerFrame).getWidth(), ImageManager.getImage(Images.rulerFrame).getHeight());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        ImageManager.getImage(Images.rulerFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }
}
