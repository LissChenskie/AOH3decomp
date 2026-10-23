package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
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
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonRuler extends Button {
    public int iCivID;

    public ButtonRuler(int i, int i2, int i3) {
        this.iCivID = i;
        init(Game.getCiv(i).ruler.Name, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
        int i4 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i4 = i4 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.rulerFrame).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.rulerFrame).getWidth();
    }

    public static int getTextHeightBG() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        if (Game.getCiv(this.iCivID).getCapitalProvinceID() >= 0) {
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, Game.ideologiesManager.getIdeology(Game.getCiv(this.iCivID).getIdeologyID()).RulerTitle + ": " + Game.getCiv(this.iCivID).ruler.Name));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Born") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(this.iCivID).ruler.BornDay + " " + Game_Calendar.getMonthName(Game.getCiv(this.iCivID).ruler.BornMonth) + " " + Game.getCiv(this.iCivID).ruler.BornYear, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - Game.getCiv(this.iCivID).ruler.BornYear)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyIncome != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.TaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.TaxEfficiency, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.ProductionEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.ProductionEfficiency, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.ProvinceMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.ProvinceMaintenance, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.MaxManpower != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.MaxManpower > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.MaxManpower, 1), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseManpowerCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.RecruitmentTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitmentTime") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.RecruitmentTime > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.Research != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.Research > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.Research, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.ResearchPoints != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.ResearchPoints > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.Devastation != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(LBhZogys.QmqZngBFzua) + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.Devastation > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.Devastation * 100.0f, 100) + "%", Images.devastation, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralCost * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.ConstructionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(MQYGMkZOAcS.ACdNkm) + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.ConstructionCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.ConstructionCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdministrationBuildingsCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.AdministrationBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryBuildingsCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.MilitaryBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("EconomyBuildingsCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.EconomyBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.InvestInEconomyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.InvestInEconomyCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseTaxEfficiencyCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseGrowthRateCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseGrowthRateCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.IncreaseGrowthRateCost * 100.0f, 100) + "%", Images.populationUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.DevelopInfrastructureCost > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.ImproveRelationsModifier != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ImproveRelationsModifier") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.ImproveRelationsModifier > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.ImproveRelationsModifier, 100) + "%", Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.LoanInterest != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LoanInterest") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.LoanInterest > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.LoanInterest, 100) + "%", Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyLegacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iCivID).ruler.rulerBonuses.MonthlyLegacy, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsAttack > 0 ? "+" : "") + Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsAttack, Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsDefense > 0 ? "+" : "") + Game.getCiv(this.iCivID).ruler.rulerBonuses.UnitsDefense, Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralAttack > 0 ? "+" : "") + Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralAttack, Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralDefense <= 0 ? "" : "+") + Game.getCiv(this.iCivID).ruler.rulerBonuses.GeneralDefense, Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (!Game.menuManager.getInGame()) {
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.rulerFrame).getWidth(), ImageManager.getImage(Images.rulerFrame).getHeight());
        }
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(TextIcon2.getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), getTextHeightBG());
        spriteBatch.setColor(TextIcon2.getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
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
        Renderer.drawText(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + ImageManager.getImage(Images.rulerFrame).getHeight()) + (getTextHeightBG() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
