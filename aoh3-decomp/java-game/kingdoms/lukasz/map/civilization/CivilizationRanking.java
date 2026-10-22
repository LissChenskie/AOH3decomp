package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.textures.Images;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationRanking {
    public static float bestArmyAttackDefense = 0.0f;
    public static int numBronze = 1;
    public static int numGold = 1;
    public static int numSilver = 1;
    public static int rankingMaxCivs;

    public static class SortedElements {
        public MenuElement_HoverElement hoverElement;
        public float value;

        public SortedElements(MenuElement_HoverElement menuElement_HoverElement, float f) {
            this.hoverElement = menuElement_HoverElement;
            this.value = f;
        }
    }

    public static final void buildCivilizationRanking() {
        bestArmyAttackDefense = 0.0f;
        rankingMaxCivs = 0;
        for (int i = 1; i < Game.getCivsSize(); i++) {
            float unitsBest_AttackDefense = Game.getCiv(i).getUnitsBest_AttackDefense();
            if (bestArmyAttackDefense < unitsBest_AttackDefense) {
                bestArmyAttackDefense = unitsBest_AttackDefense;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            Game.getCiv(i2).iCivRankScoreArmy = 0.0f;
            if (Game.getCiv(i2).getNumOfProvinces() > 0) {
                arrayList.add(Integer.valueOf(i2));
                updateCivilizationRanking(i2);
                rankingMaxCivs++;
            } else {
                Game.getCiv(i2).iCivRankPosition = Game.getCivsSize();
            }
        }
        updateCivilizationRanking_Army();
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            Game.getCiv(i3).iCivRankScore += Game.getCiv(i3).iCivRankScoreArmy;
        }
        int size = ResourcesManager.worldResources_LargestProducer.size();
        for (int i4 = 0; i4 < size; i4++) {
            Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(i4).intValue()).iCivRankScore += GameValues.civRank.CIV_SCORE_PER_LARGEST_PRODUCER;
        }
        for (int i5 = 1; i5 < Game.getCivsSize(); i5++) {
            if (Game.getCiv(i5).getNumOfProvinces() > 0 && Game.getCiv(i5).getCivID() != Game.getCiv(i5).getPuppetOfCivID() && Game.getCiv(i5).getPuppetOfCivID() == Game.getCiv(Game.getCiv(i5).getPuppetOfCivID()).getPuppetOfCivID()) {
                Game.getCiv(Game.getCiv(i5).getPuppetOfCivID()).iCivRankScore += Game.getCiv(i5).iCivRankScore * GameValues.civRank.CIV_SCORE_VASSALS;
            }
        }
        int i6 = 1;
        while (arrayList.size() > 0) {
            int size2 = arrayList.size();
            int i7 = 0;
            for (int i8 = 1; i8 < size2; i8++) {
                if (Game.getCiv(((Integer) arrayList.get(i7)).intValue()).iCivRankScore < Game.getCiv(((Integer) arrayList.get(i8)).intValue()).iCivRankScore) {
                    i7 = i8;
                }
            }
            Game.getCiv(((Integer) arrayList.get(i7)).intValue()).iCivRankPosition = i6;
            arrayList.remove(i7);
            i6++;
        }
        int iMin = (int) Math.min(7.0d, Math.max(2.0d, Math.ceil(rankingMaxCivs * 0.07f)));
        numGold = iMin;
        int iMin2 = iMin + ((int) Math.min(8.0d, Math.max(2.0d, Math.ceil(rankingMaxCivs * 0.07f))));
        numSilver = iMin2;
        numBronze = iMin2 + Math.max(2, (int) (rankingMaxCivs * 0.55f));
    }

    public static MenuElement_Hover buildElementHover(int i, int i2) {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getCivilizationRank_Name(i2), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(getCivilizationRank_IMG(i2), CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (i2 == 0) {
            str = "1 - " + GameValues.civRank.CIV_RANK_PROVINCES[i2];
        } else {
            try {
                str = "" + (GameValues.civRank.CIV_RANK_PROVINCES[i2 - 1] + 1) + " - " + GameValues.civRank.CIV_RANK_PROVINCES[i2];
            } catch (Exception unused) {
                str = "" + (GameValues.civRank.CIV_RANK_PROVINCES[i2 - 1] + 1) + "+";
            }
        }
        String str2 = str;
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Required"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", str2, Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(i).getPuppetOfCivID() == i) {
            if (GameValues.civRank.CIV_BASE_INCOME[i2] != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", "+" + CFG.getPrecision2(GameValues.civRank.CIV_BASE_INCOME[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        } else if (GameValues.civRank.CIV_BASE_INCOME[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(Game_Ages.getVassal()) + ", " + Game.lang.get("Income") + ": ", "+" + CFG.getPrecision2(GameValues.civRank.CIV_BASE_INCOME_VASSAL[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_ARMY_MAINTENANCE[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_ARMY_MAINTENANCE[i2] * 100.0f, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_MANPOWER_MAX[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "+" + GameValues.civRank.CIV_RANK_MANPOWER_MAX[i2], Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_BUILDING_CONSTRUCTION_COST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_BUILDING_CONSTRUCTION_COST[i2] * 100.0f, 100) + "%", Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", (GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[i2] * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_ADVISOR_COST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorCost") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_ADVISOR_COST[i2] * 100.0f, 100) + "%", Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_GENERAL_COST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_GENERAL_COST[i2] * 100.0f, 100) + "%", Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_MONTHLY_LEGACY[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "+" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MONTHLY_LEGACY[i2], 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "+" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[i2], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_LOAN_INTEREST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Interest") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_LOAN_INTEREST[i2], 100) + "%", Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.civRank.CIV_RANK_WAR_SCORE_COST[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WarScoreCost") + ": ", (GameValues.civRank.CIV_RANK_WAR_SCORE_COST[i2] <= 0.0f ? "" : "+") + CFG.getPrecision2(GameValues.civRank.CIV_RANK_WAR_SCORE_COST[i2] * 100.0f, 100) + "%", Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (!Game.menuManager.getInGame()) {
            return new MenuElement_Hover(arrayList);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    public static int getCivilizationRank(int i) {
        if (i < GameValues.civRank.CIV_RANK_PROVINCES[0]) {
            return 0;
        }
        if (i < GameValues.civRank.CIV_RANK_PROVINCES[1]) {
            return 1;
        }
        if (i < GameValues.civRank.CIV_RANK_PROVINCES[2]) {
            return 2;
        }
        if (i < GameValues.civRank.CIV_RANK_PROVINCES[3]) {
            return 3;
        }
        return i < GameValues.civRank.CIV_RANK_PROVINCES[4] ? 4 : 5;
    }

    public static int getCivilizationRank_IMG(int i) {
        if (i == 0) {
            return Images.civRank_0;
        }
        if (i == 1) {
            return Images.civRank_1;
        }
        if (i == 2) {
            return Images.civRank_2;
        }
        if (i == 3) {
            return Images.civRank_3;
        }
        if (i != 4) {
            return i != 5 ? Images.civRank_5 : Images.civRank_5;
        }
        return Images.civRank_4;
    }

    public static String getCivilizationRank_Name(int i) {
        try {
            return Game.lang.get(GameValues.civRank.CIV_RANK_NAME[i]);
        } catch (Exception unused) {
            if (i == 1) {
                return Game.lang.get(ClXgFvsSKQc.bsuCwzJtQntaq);
            }
            if (i == 2) {
                return Game.lang.get("RegionalPower");
            }
            if (i == 3) {
                return Game.lang.get("MajorPower");
            }
            if (i != 4) {
                return i != 5 ? Game.lang.get("CityState") : Game.lang.get("Empire");
            }
            return Game.lang.get("GreatPower");
        }
    }

    public static final float getCivilizationRanking(int i) {
        return getCivilizationRanking_Rank(i) + getCivilizationRanking_Economy(i) + getCivilizationRanking_TaxEfficiency(i) + getCivilizationRanking_Technology(i) + getCivilizationRanking_Legacy(i) + getCivilizationRanking_LevelsUpgrades(i) + getCivilizationRanking_Buildings(i) + Game.getCiv(i).iCivRankScoreArmy;
    }

    public static final float getCivilizationRanking_Buildings(int i) {
        return Game.getCiv(i).getConstructedBuildings() * GameValues.civRank.CIV_SCORE_PER_BUILDING;
    }

    public static final float getCivilizationRanking_Economy(int i) {
        return Game.getCiv(i).getEconomyTotal_CivRank() * GameValues.civRank.CIV_SCORE_PER_ECONOMY;
    }

    public static final int getCivilizationRanking_IMG_STAR_CIVID(int i) {
        if (Game.getCiv(i).iCivRankPosition <= numGold) {
            return Images.rankGold;
        }
        if (Game.getCiv(i).iCivRankPosition <= numSilver) {
            return Images.rankSilver;
        }
        return Game.getCiv(i).iCivRankPosition <= numBronze ? Images.rankBronze : Images.rankBlack;
    }

    public static final float getCivilizationRanking_INFO(int i) {
        return getCivilizationRanking_Rank(i) + getCivilizationRanking_Economy(i) + getCivilizationRanking_TaxEfficiency(i) + getCivilizationRanking_Technology(i) + Game.getCiv(i).iCivRankScoreArmy + getCivilizationRanking_LargestProducer(i) + getCivilizationRanking_Legacy(i) + getCivilizationRanking_LevelsUpgrades(i) + getCivilizationRanking_Buildings(i) + getCivilizationRanking_Vassals(i);
    }

    public static final float getCivilizationRanking_LargestProducer(int i) {
        int size = ResourcesManager.worldResources_LargestProducer.size();
        float f = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            if (ResourcesManager.worldResources_LargestProducer.get(i2).intValue() == i) {
                f += GameValues.civRank.CIV_SCORE_PER_LARGEST_PRODUCER;
            }
        }
        return f;
    }

    public static final float getCivilizationRanking_Legacy(int i) {
        return Game.getCiv(i).getLegaciesUnlocked() * GameValues.civRank.CIV_SCORE_PER_LEGACY;
    }

    public static final float getCivilizationRanking_LevelsUpgrades(int i) {
        return (Game.getCiv(i).getCapitalLevel() + Game.getCiv(i).getMilitaryAcademyLevel() + Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() + Game.getCiv(i).getSupremeCourtLevel() + Game.getCiv(i).getNuclearReactorLevel()) * GameValues.civRank.CIV_SCORE_PER_LEVELS_UPGRADES;
    }

    public static final float getCivilizationRanking_Rank(int i) {
        return GameValues.civRank.CIV_SCORE_RANK[Game.getCiv(i).iCivRankID];
    }

    public static final float getCivilizationRanking_TaxEfficiency(int i) {
        return Game.getCiv(i).getTaxEfficiencyTotal_CivRank() * GameValues.civRank.CIV_SCORE_PER_TAX_EFFICIENCY;
    }

    public static final float getCivilizationRanking_Technology(int i) {
        return Game.getCiv(i).getResearchedTechnologies() * GameValues.civRank.CIV_SCORE_PER_TECHNOLOGY;
    }

    public static final float getCivilizationRanking_Vassals(int i) {
        float f = 0.0f;
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            if (Game.getCiv(i2).getNumOfProvinces() > 0 && i == Game.getCiv(i2).getPuppetOfCivID() && Game.getCiv(i2).getCivID() != Game.getCiv(i2).getPuppetOfCivID() && Game.getCiv(i2).getPuppetOfCivID() == Game.getCiv(Game.getCiv(i2).getPuppetOfCivID()).getPuppetOfCivID()) {
                f += Game.getCiv(i2).iCivRankScore * GameValues.civRank.CIV_SCORE_VASSALS;
            }
        }
        return f;
    }

    public static final float getDiplomacyPoints_RankStar(int i) {
        if (Game.getCiv(i).iCivRankPosition <= numGold) {
            return GameValues.diplomacy.DIPLOMACY_POINTS_RANK_GOLD;
        }
        if (Game.getCiv(i).iCivRankPosition <= numSilver) {
            return GameValues.diplomacy.DIPLOMACY_POINTS_RANK_SILVER;
        }
        return Game.getCiv(i).iCivRankPosition <= numBronze ? GameValues.diplomacy.DIPLOMACY_POINTS_RANK_BRONZE : GameValues.diplomacy.DIPLOMACY_POINTS_RANK_BLACK;
    }

    public static MenuElement_Hover getHover_CivilizationRanking(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i, Game.lang.get("CivilizationRank") + ": " + (Game.getCiv(i).iCivRankPosition > 0 ? Integer.valueOf(Game.getCiv(i).iCivRankPosition) : "---")));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float civilizationRanking_INFO = getCivilizationRanking_INFO(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Prestige") + ": ", "" + CFG.getPrecision2(civilizationRanking_INFO, 10), getCivilizationRanking_IMG_STAR_CIVID(i), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z2) {
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Graph(Game.lang.get("Prestige"), Graph.GraphType.PLAYER_PRESTIGE, false));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, !z2));
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList();
        float fMax = Math.max(0.1f, civilizationRanking_INFO);
        float civilizationRanking_Rank = getCivilizationRanking_Rank(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(getCivilizationRank_Name(Game.getCiv(i).iCivRankID) + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Rank, 10), CFG.FONT_BOLD, civilizationRanking_Rank <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(getCivilizationRank_IMG(Game.getCiv(i).iCivRankID), CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Rank / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Rank));
        arrayList2.clear();
        float civilizationRanking_TaxEfficiency = getCivilizationRanking_TaxEfficiency(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_TaxEfficiency, 10), CFG.FONT_BOLD, civilizationRanking_TaxEfficiency <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_TaxEfficiency / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_TaxEfficiency));
        arrayList2.clear();
        float civilizationRanking_Economy = getCivilizationRanking_Economy(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Economy, 10), CFG.FONT_BOLD, civilizationRanking_Economy <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Economy / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Economy));
        arrayList2.clear();
        float civilizationRanking_LargestProducer = getCivilizationRanking_LargestProducer(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LargestProducer") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_LargestProducer, 10), CFG.FONT_BOLD, civilizationRanking_LargestProducer <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_LargestProducer / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_LargestProducer));
        arrayList2.clear();
        float civilizationRanking_Technology = getCivilizationRanking_Technology(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Technology") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Technology, 10), CFG.FONT_BOLD, civilizationRanking_Technology <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Technology / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Technology));
        arrayList2.clear();
        float civilizationRanking_Legacy = getCivilizationRanking_Legacy(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationLegacy") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Legacy, 10), CFG.FONT_BOLD, civilizationRanking_Legacy <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Legacy / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Legacy));
        arrayList2.clear();
        float civilizationRanking_LevelsUpgrades = getCivilizationRanking_LevelsUpgrades(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CapitalCity") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_LevelsUpgrades, 10), CFG.FONT_BOLD, civilizationRanking_LevelsUpgrades <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_LevelsUpgrades / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_LevelsUpgrades));
        arrayList2.clear();
        float civilizationRanking_Buildings = getCivilizationRanking_Buildings(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Buildings") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Buildings, 10), CFG.FONT_BOLD, civilizationRanking_Buildings <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildings, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Buildings / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Buildings));
        arrayList2.clear();
        float f = Game.getCiv(i).iCivRankScoreArmy;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Army") + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f, 10), CFG.FONT_BOLD, f <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((f / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), f));
        arrayList2.clear();
        float civilizationRanking_Vassals = getCivilizationRanking_Vassals(i);
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getVassals()) + ": ", CFG.FONT_REGULAR, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civilizationRanking_Vassals, 10), CFG.FONT_BOLD, civilizationRanking_Vassals <= 0.0f ? Colors.HOVER_NEUTRAL : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((civilizationRanking_Vassals / fMax) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList3.add(new SortedElements(new MenuElement_HoverElement(arrayList2, !z2), civilizationRanking_Vassals));
        arrayList2.clear();
        while (!arrayList3.isEmpty()) {
            int i2 = 0;
            for (int size = arrayList3.size() - 1; size > 0; size--) {
                if (((SortedElements) arrayList3.get(i2)).value < ((SortedElements) arrayList3.get(size)).value) {
                    i2 = size;
                }
            }
            if (((SortedElements) arrayList3.get(i2)).value > 0.0f) {
                arrayList.add(((SortedElements) arrayList3.get(i2)).hoverElement);
            }
            arrayList3.remove(i2);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, !z2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(getDiplomacyPoints_RankStar(i), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2, !z2));
        arrayList2.clear();
        if (z && z2 && CFG.isDesktop()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("R", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rank, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (!z) {
            return new MenuElement_Hover(arrayList);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    public static MenuElement_Hover getHover_CivilizationRanking_Short(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CivilizationRank") + ": ", "" + Game.getCiv(i).iCivRankPosition, getCivilizationRanking_IMG_STAR_CIVID(i), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Prestige") + ": ", "" + CFG.getPrecision2(getCivilizationRanking_INFO(i), 10), getCivilizationRanking_IMG_STAR_CIVID(i), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static final void updateCivilizationRanking(int i) {
        Game.getCiv(i).iCivRankScore = getCivilizationRanking(i);
    }

    public static final void updateCivilizationRanking_Army() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            for (int armySize = Game.getProvince(i).getArmySize() - 1; armySize >= 0; armySize--) {
                Game.getCiv(Game.getProvince(i).getArmy(armySize).civID).iCivRankScoreArmy += Game.getProvince(i).getArmy(armySize).getCivilizationRanking_ArmyScore();
            }
        }
    }
}
