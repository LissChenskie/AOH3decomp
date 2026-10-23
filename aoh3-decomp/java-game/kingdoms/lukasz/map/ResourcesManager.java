package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ResourcesManager {
    public static List<Resources> lResources = new ArrayList();
    public static int iResourcesSize = 0;
    public static List<Image> resourceImages = new ArrayList();
    public static List<Float> priceChangePerc = new ArrayList();
    public static List<PriceChange> priceChanges = new ArrayList();
    public static float maxPrice = 0.01f;
    public static List<Boolean> uniqueGoods = new ArrayList();
    public static List<Integer> worldResourcesProduced = new ArrayList();
    public static List<Integer> worldResources_LargestProducer = new ArrayList();
    public static List<Integer> worldResources_LargestProducer_Amount = new ArrayList();
    public static int lastUpdateYear = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.ResourcesManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Goods() && InGame_Goods.inGoods) {
                Game.menuManager.rebuildInGame_Goods(true);
                Game.menuManager.setVisibleInGame_Goods(true);
                InGame_Goods.lTime = 0L;
            }
        }
    }

    public static class ConfigResourcesData {
        public String Age_of_History;
        public ArrayList Resources;
    }

    public static class PriceChange {
        public int expiresTurnID;
        public float priceChange;
        public int resourceID;

        public PriceChange(int i, float f, int i2) {
            this.resourceID = i;
            this.priceChange = f;
            this.expiresTurnID = i2;
        }
    }

    public static class Resources {
        public float AdministrationBuildingsCost;
        public float AggressiveExpansion;
        public float ArmyMaintenance;
        public float ArmyMovementSpeed;
        public int BattleWidth;
        public float[] Color;
        public float ConstructionCost;
        public float ConstructionTime;
        public float CoreCost;
        public float EconomyBuildingsCost;
        public int GeneralAttack;
        public int GeneralDefense;
        public int GroupID;
        public float GrowthRate;
        public int ID;
        public int ImageID;
        public float ImproveRelationsModifier;
        public float IncomeFromVassals;
        public float IncomeProduction;
        public float IncreaseManpowerCost;
        public float InvestInEconomyCost;
        public float LoanInterest;
        public float ManpowerRecoverySpeed;
        public float MaxManpower;
        public float MaxMorale;
        public float MilitaryBuildingsCost;
        public float MonthlyIncome;
        public float MonthlyLegacy;
        public String Name;
        public float Price;
        public float ProductionEfficiency;
        public float ProvinceMaintenance;
        public float RecruitArmyCost;
        public float RecruitArmyFirstLineCost;
        public float RecruitArmySecondLineCost;
        public float RecruitmentTime;
        public int RegimentsLimit;
        public int RequiredTechID;
        public float ResearchPoints;
        public float RevolutionaryRisk;
        public float SiegeEffectiveness;
        public float TaxEfficiency;
        public float TechnologyCost;
        public int UnitsAttack;
        public int UnitsDefense;
        public int uniqueBuildingID = -1;
    }

    public static int getLargestGoodsProducedByCiv(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < iResourcesSize; i2++) {
            arrayList.add(Float.valueOf(0.0f));
        }
        int resourceID = -1;
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID() >= 0) {
                arrayList.set(Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID(), Float.valueOf(((Float) arrayList.get(Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID())).floatValue() + getProducedGoods(Game.getCiv(i).getProvinceID(i3))));
                resourceID = Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID();
            }
        }
        if (resourceID >= 0) {
            for (int i4 = 0; i4 < iResourcesSize; i4++) {
                if (((Float) arrayList.get(resourceID)).floatValue() < ((Float) arrayList.get(i4)).floatValue()) {
                    resourceID = i4;
                }
            }
        }
        arrayList.clear();
        return resourceID;
    }

    public static float getMonthlyIncome(int i) {
        return getMonthlyIncome(i, Game.getProvince(i).getResourceID());
    }

    public static float getMonthlyIncome(int i, int i2) {
        return getMonthlyIncome(i, i2, getProductionEfficiency(i));
    }

    public static float getMonthlyIncome(int i, int i2, float f) {
        if (i2 < 0) {
            return 0.0f;
        }
        if (lResources.get(i2).RequiredTechID < 0 || Game.getCiv(Game.getProvince(i).getCivID()).getTechResearched(lResources.get(i2).RequiredTechID)) {
            return getPrice(i2) * f * Math.max(0.01f, ((((1.0f - Game.getProvince(i).getDevastation()) + (Game.getProvince(i).getReligion() == Game.getCiv(Game.getProvince(i).getCivID()).getReligionID() ? 0.0f : GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION)) + (Game.getProvince(i).haveACore ? 0.0f : GameValues.core.BASE_INCOME_NON_CORE)) - Game.getCiv(Game.getProvince(i).getCivID()).getCorruption()) + ((Game.getCiv(Game.getProvince(i).getCivID()).civBonuses.IncomeProduction + Game.getProvince(i).provBonuses.IncomeProduction) / 100.0f));
        }
        return 0.0f;
    }

    public static float getPrice(int i) {
        return lResources.get(i).Price * priceChangePerc.get(i).floatValue();
    }

    public static float getPrice_Default(int i) {
        return lResources.get(i).Price;
    }

    public static float getProducedGoods(int i) {
        if (Game.getProvince(i).getResourceID() < 0) {
            return 0.0f;
        }
        if (lResources.get(Game.getProvince(i).getResourceID()).RequiredTechID < 0 || Game.getCiv(Game.getProvince(i).getCivID()).getTechResearched(lResources.get(Game.getProvince(i).getResourceID()).RequiredTechID)) {
            return Math.max(0.0f, (GameValues.production.BASE_PRODUCTION + (GameValues.production.GOODS_PRODUCED_PER_ECONOMY * Game.getProvince(i).getEconomyWithBonuses() * getProductionEfficiency(i))) * ((Game.getCiv(Game.getProvince(i).getCivID()).getWarWeariness() * GameValues.warWeariness.WW_GOODS_PRODUCTION_PER_POINT) + 1.0f));
        }
        return 0.0f;
    }

    public static float getProducedGoods_ResourceCiv(int i, int i2) {
        Civilization civ = Game.getCiv(i);
        float producedGoods = 0.0f;
        for (int i3 = 0; i3 < civ.getNumOfProvinces(); i3++) {
            if (Game.getProvince(civ.getProvinceID(i3)).getResourceID() == i2) {
                producedGoods += getProducedGoods(civ.getProvinceID(i3));
            }
        }
        return (int) producedGoods;
    }

    public static float getProductionEfficiency(int i) {
        return (GameValues.production.BASE_PRODUCTION_EFFICIENCY + getProductionEfficiency_FromEconomy(i)) * Math.max(0.01f, ((Game.getProvince(i).provBonuses.ProductionEfficiency + Game.getCiv(Game.getProvince(i).getCivID()).civBonuses.ProductionEfficiency) / 100.0f) + 1.0f + (GameValues.infrastructure.INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL * Game.getProvince(i).getInfrastructure()));
    }

    public static float getProductionEfficiency_FromEconomy(float f) {
        return f * GameValues.production.PRODUCTION_EFFICIENCY_PER_ECONOMY;
    }

    public static float getProductionEfficiency_FromEconomy(int i) {
        return Game.getProvince(i).getEconomyWithBonuses() * GameValues.production.PRODUCTION_EFFICIENCY_PER_ECONOMY;
    }

    public static String getResourceGroupName(int i) {
        if (i == 0) {
            return Game.lang.get("Food");
        }
        if (i == 1) {
            return Game.lang.get("Commodities");
        }
        if (i == 2) {
            return Game.lang.get("LuxuryCommodities");
        }
        if (i != 3) {
            return i != 4 ? Game.lang.get("Commodities") : Game.lang.get(fTNtCctcBZcqKK.TBBjdveechMS);
        }
        return Game.lang.get("Luxury");
    }

    public static String getResourceName(int i) {
        return i >= 0 ? lResources.get(i).Name : Game.lang.get("None");
    }

    public static boolean hasResource(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID() == i2) {
                return true;
            }
        }
        return false;
    }

    public static final void initUniqueCivsGoods() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).iUniqueResources = 0;
        }
        updateUniqueCivsGoods();
    }

    public static final void loadResources() {
        try {
            String string = FileManager.loadFile(ClXgFvsSKQc.gVEKnVh).readString();
            Json json = new Json();
            json.setElementType(ConfigResourcesData.class, "Resources", Resources.class);
            Iterator it = ((ConfigResourcesData) json.fromJson(ConfigResourcesData.class, string)).Resources.iterator();
            int i = 0;
            while (it.hasNext()) {
                lResources.add((Resources) it.next());
                lResources.get(i).Name = Game.lang.get(lResources.get(i).Name);
                lResources.get(i).Color[0] = lResources.get(i).Color[0] / 255.0f;
                lResources.get(i).Color[1] = lResources.get(i).Color[1] / 255.0f;
                lResources.get(i).Color[2] = lResources.get(i).Color[2] / 255.0f;
                worldResourcesProduced.add(0);
                priceChangePerc.add(Float.valueOf(1.0f));
                maxPrice = Math.max(maxPrice, lResources.get(i).Price);
                i++;
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iResourcesSize = lResources.size();
        for (int i2 = 0; i2 < iResourcesSize; i2++) {
            uniqueGoods.add(false);
        }
        loadResourcesImages();
        for (int i3 = 0; i3 < iResourcesSize; i3++) {
            for (int i4 = BuildingsManager.buildingsResourceStartID; i4 < BuildingsManager.buildingsResourceSize; i4++) {
                if (BuildingsManager.buildings.get(i4).RequiredResource == i3) {
                    lResources.get(i3).uniqueBuildingID = i4;
                    break;
                }
            }
        }
    }

    public static final void loadResourcesImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/resources/resourcesImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/resources/resourcesImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                resourceImages.add(new Image(ImageManager.loadTexture("game/resources/resourcesImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                resourceImages.add(new Image(ImageManager.loadTexture("game/resources/resourcesImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final void resetPriceChangePerc() {
        for (int i = 0; i < lResources.size(); i++) {
            priceChangePerc.set(i, Float.valueOf(1.0f));
        }
        priceChanges.clear();
    }

    public static final void setPriceChangePerc(int i, float f, int i2) {
        float fMax = Math.max(0.01f, priceChangePerc.get(i).floatValue() + f);
        float fFloatValue = fMax - priceChangePerc.get(i).floatValue();
        if (Math.abs(fFloatValue) >= 0.01f) {
            priceChangePerc.set(i, Float.valueOf(fMax));
            priceChanges.add(new PriceChange(i, fFloatValue, i2));
            updateIncomeOfCivsWithResource(i);
        }
    }

    private static final void updateCivBonuses(int i, int i2, int i3) {
        if (lResources.get(i).MonthlyIncome != 0.0f) {
            Game.getCiv(i2).civBonuses.MonthlyIncome += lResources.get(i).MonthlyIncome * i3;
        }
        if (lResources.get(i).TaxEfficiency != 0.0f) {
            Game.getCiv(i2).civBonuses.TaxEfficiency += lResources.get(i).TaxEfficiency * i3;
        }
        if (lResources.get(i).IncomeProduction != 0.0f) {
            Game.getCiv(i2).civBonuses.IncomeProduction += lResources.get(i).IncomeProduction * i3;
        }
        if (lResources.get(i).ProductionEfficiency != 0.0f) {
            Game.getCiv(i2).civBonuses.ProductionEfficiency += lResources.get(i).ProductionEfficiency * i3;
        }
        if (lResources.get(i).ProvinceMaintenance != 0.0f) {
            Game.getCiv(i2).civBonuses.ProvinceMaintenance += lResources.get(i).ProvinceMaintenance * i3;
        }
        if (lResources.get(i).GrowthRate != 0.0f) {
            Game.getCiv(i2).civBonuses.GrowthRate += lResources.get(i).GrowthRate * i3;
            Game.getCiv(i2).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i2);
        }
        if (lResources.get(i).MonthlyLegacy != 0.0f) {
            Game.gameThread.addCivUpdateLegacyPerMonth(i2);
        }
        float f = i3;
        Game.getCiv(i2).civBonuses.MonthlyLegacy += lResources.get(i).MonthlyLegacy * f;
        if (lResources.get(i).MaxManpower != 0.0f) {
            Game.gameThreadTurns.addCivUpdateMaxManpower(i2);
        }
        if (lResources.get(i).MaxManpower != 0.0f) {
            Game.getCiv(i2).civBonuses.MaxManpower += lResources.get(i).MaxManpower * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i2);
        }
        if (lResources.get(i).ManpowerRecoverySpeed != 0.0f) {
            Game.getCiv(i2).civBonuses.ManpowerRecoverySpeed += lResources.get(i).ManpowerRecoverySpeed * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i2);
        }
        if (lResources.get(i).ArmyMaintenance != 0.0f) {
            Game.getCiv(i2).civBonuses.ArmyMaintenance += lResources.get(i).ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i2);
        }
        if (lResources.get(i).RecruitmentTime != 0.0f) {
            Game.getCiv(i2).civBonuses.RecruitmentTime += lResources.get(i).RecruitmentTime * f;
        }
        if (lResources.get(i).RecruitArmyCost != 0.0f) {
            Game.getCiv(i2).civBonuses.RecruitArmyCost += lResources.get(i).RecruitArmyCost * f;
        }
        if (lResources.get(i).RecruitArmyFirstLineCost != 0.0f) {
            Game.getCiv(i2).civBonuses.RecruitArmyFirstLineCost += lResources.get(i).RecruitArmyFirstLineCost * f;
        }
        if (lResources.get(i).RecruitArmySecondLineCost != 0.0f) {
            Game.getCiv(i2).civBonuses.RecruitArmySecondLineCost += lResources.get(i).RecruitArmySecondLineCost * f;
        }
        if (lResources.get(i).ResearchPoints != 0.0f) {
            Game.gameThread.addCivUpdateResearchPerMonth(i2);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i2);
        }
        if (lResources.get(i).ResearchPoints != 0.0f) {
            Game.getCiv(i2).civBonuses.ResearchPoints += lResources.get(i).ResearchPoints * f;
        }
        if (lResources.get(i).TechnologyCost != 0.0f) {
            Game.getCiv(i2).civBonuses.TechnologyCost += lResources.get(i).TechnologyCost * f;
        }
        if (lResources.get(i).ConstructionCost != 0.0f) {
            Game.getCiv(i2).civBonuses.ConstructionCost += lResources.get(i).ConstructionCost * f;
        }
        if (lResources.get(i).AdministrationBuildingsCost != 0.0f) {
            Game.getCiv(i2).civBonuses.AdministrationBuildingsCost += lResources.get(i).AdministrationBuildingsCost * f;
        }
        if (lResources.get(i).MilitaryBuildingsCost != 0.0f) {
            Game.getCiv(i2).civBonuses.MilitaryBuildingsCost += lResources.get(i).MilitaryBuildingsCost * f;
        }
        if (lResources.get(i).EconomyBuildingsCost != 0.0f) {
            Game.getCiv(i2).civBonuses.EconomyBuildingsCost += lResources.get(i).EconomyBuildingsCost * f;
        }
        if (lResources.get(i).ConstructionTime != 0.0f) {
            Game.getCiv(i2).civBonuses.ConstructionTime += lResources.get(i).ConstructionTime * f;
        }
        if (lResources.get(i).InvestInEconomyCost != 0.0f) {
            Game.getCiv(i2).civBonuses.InvestInEconomyCost += lResources.get(i).InvestInEconomyCost * f;
        }
        if (lResources.get(i).IncreaseManpowerCost != 0.0f) {
            Game.getCiv(i2).civBonuses.IncreaseManpowerCost += lResources.get(i).IncreaseManpowerCost * f;
        }
        if (lResources.get(i).GeneralAttack != 0) {
            Game.getCiv(i2).civBonuses.GeneralAttack += lResources.get(i).GeneralAttack * i3;
        }
        if (lResources.get(i).GeneralDefense != 0) {
            Game.getCiv(i2).civBonuses.GeneralDefense += lResources.get(i).GeneralDefense * i3;
        }
        if (lResources.get(i).UnitsAttack != 0) {
            Game.getCiv(i2).civBonuses.UnitsAttack += lResources.get(i).UnitsAttack * i3;
        }
        if (lResources.get(i).UnitsDefense != 0) {
            Game.getCiv(i2).civBonuses.UnitsDefense += lResources.get(i).UnitsDefense * i3;
        }
        if (lResources.get(i).GeneralDefense != 0) {
            Game.getCiv(i2).civBonuses.MaxMorale += lResources.get(i).GeneralDefense * i3;
        }
        if (lResources.get(i).ArmyMovementSpeed != 0.0f) {
            Game.getCiv(i2).civBonuses.ArmyMovementSpeed += lResources.get(i).ArmyMovementSpeed * f;
        }
        if (lResources.get(i).SiegeEffectiveness != 0.0f) {
            Game.getCiv(i2).civBonuses.SiegeEffectiveness += lResources.get(i).SiegeEffectiveness * f;
        }
        if (lResources.get(i).ImproveRelationsModifier != 0.0f) {
            Game.getCiv(i2).civBonuses.ImproveRelationsModifier += lResources.get(i).ImproveRelationsModifier * f;
        }
        if (lResources.get(i).IncomeFromVassals != 0.0f) {
            Game.getCiv(i2).civBonuses.IncomeFromVassals += lResources.get(i).IncomeFromVassals * f;
        }
        if (lResources.get(i).LoanInterest != 0.0f) {
            Game.getCiv(i2).civBonuses.LoanInterest += lResources.get(i).LoanInterest * f;
        }
        if (lResources.get(i).AggressiveExpansion != 0.0f) {
            Game.getCiv(i2).civBonuses.AggressiveExpansion += lResources.get(i).AggressiveExpansion * f;
        }
        if (lResources.get(i).RevolutionaryRisk != 0.0f) {
            Game.getCiv(i2).civBonuses.RevolutionaryRisk += lResources.get(i).RevolutionaryRisk * f;
        }
        if (lResources.get(i).CoreCost != 0.0f) {
            Game.getCiv(i2).civBonuses.CoreCost += lResources.get(i).CoreCost * f;
        }
        if (lResources.get(i).BattleWidth != 0) {
            Game.getCiv(i2).civBonuses.BattleWidth += lResources.get(i).BattleWidth * i3;
        }
        if (lResources.get(i).RegimentsLimit != 0) {
            Game.getCiv(i2).civBonuses.RegimentsLimit += lResources.get(i).RegimentsLimit * i3;
        }
        Game.getCiv(i2).updateProvincesIncomeAndExpenses();
    }

    public static void updateIncomeOfCivsWithResource(int i) {
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            for (int i3 = 0; i3 < Game.getCiv(i2).getNumOfProvinces(); i3++) {
                if (Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getResourceID() == i) {
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(i2);
                    break;
                }
            }
        }
    }

    public static final void updatePriceChanges() {
        try {
            if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_CHANGE_PRICE_EXPIRED == 0) {
                for (int size = priceChanges.size() - 1; size >= 0; size--) {
                    if (priceChanges.get(size).expiresTurnID <= Game_Calendar.TURN_ID) {
                        if (updatePriceChanges_NumOfPriceChanges(priceChanges.get(size).resourceID) == 1) {
                            priceChangePerc.set(priceChanges.get(size).resourceID, Float.valueOf(1.0f));
                        } else {
                            priceChangePerc.set(priceChanges.get(size).resourceID, Float.valueOf(Math.max(0.01f, priceChangePerc.get(priceChanges.get(size).resourceID).floatValue() - priceChanges.get(size).priceChange)));
                        }
                        priceChanges.remove(size);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static int updatePriceChanges_NumOfPriceChanges(int i) {
        int i2 = 0;
        for (int size = priceChanges.size() - 1; size >= 0; size--) {
            if (priceChanges.get(size).resourceID == i) {
                i2++;
            }
        }
        return i2;
    }

    public static final void updateUniqueCivGoods(int i) {
        for (int i2 = 0; i2 < iResourcesSize; i2++) {
            try {
                uniqueGoods.set(i2, false);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID() >= 0) {
                uniqueGoods.set(Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getResourceID(), true);
            }
        }
        Game.getCiv(i).iUniqueResources = 0;
        for (int i4 = 0; i4 < iResourcesSize; i4++) {
            if (uniqueGoods.get(i4).booleanValue()) {
                Game.getCiv(i).iUniqueResources++;
            }
        }
    }

    public static final void updateUniqueCivsGoods() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                updateUniqueCivGoods(i);
            }
        }
    }

    public static void updateWorldResourcesProduced(boolean z) {
        try {
            ArrayList arrayList = new ArrayList();
            if (worldResources_LargestProducer.size() > 0) {
                for (int i = 0; i < iResourcesSize; i++) {
                    arrayList.add(Boolean.valueOf(worldResources_LargestProducer.get(i).intValue() == Game.player.iCivID));
                }
            } else {
                for (int i2 = 0; i2 < iResourcesSize; i2++) {
                    arrayList.add(false);
                }
            }
            if (z) {
                for (int i3 = 0; i3 < Game.getCivsSize(); i3++) {
                    Game.getCiv(i3).initGoodsProduced();
                    Game.getCiv(i3).largestProducerNum = 0;
                }
            } else {
                try {
                    int iMax = Math.max(iResourcesSize, worldResources_LargestProducer.size());
                    for (int i4 = 0; i4 < iMax; i4++) {
                        if (worldResources_LargestProducer.get(i4).intValue() > 0 && Game.getCiv(worldResources_LargestProducer.get(i4).intValue()).getTechResearched(lResources.get(i4).RequiredTechID)) {
                            updateCivBonuses(i4, worldResources_LargestProducer.get(i4).intValue(), -1);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                for (int i5 = 0; i5 < Game.getCivsSize(); i5++) {
                    Game.getCiv(i5).resetGoodsProduced();
                    Game.getCiv(i5).largestProducerNum = 0;
                }
            }
            for (int i6 = 0; i6 < iResourcesSize; i6++) {
                worldResourcesProduced.set(i6, 0);
            }
            worldResources_LargestProducer.clear();
            worldResources_LargestProducer_Amount.clear();
            lastUpdateYear = Game_Calendar.currentYear;
            for (int i7 = 0; i7 < Game.getCivsSize(); i7++) {
                ArrayList arrayList2 = new ArrayList();
                for (int i8 = 0; i8 < iResourcesSize; i8++) {
                    arrayList2.add(0);
                }
            }
            for (int i9 = 0; i9 < Game.getProvincesSize(); i9++) {
                if (!Game.getProvince(i9).getSeaProvince() && Game.getProvince(i9).getCivID() > 0 && Game.getProvince(i9).getResourceID() >= 0) {
                    int producedGoods = (int) (getProducedGoods(i9) * 100.0f);
                    worldResourcesProduced.set(Game.getProvince(i9).getResourceID(), Integer.valueOf(worldResourcesProduced.get(Game.getProvince(i9).getResourceID()).intValue() + producedGoods));
                    Game.getCiv(Game.getProvince(i9).getCivID()).addGoodsProduced(Game.getProvince(i9).getResourceID(), producedGoods);
                }
            }
            for (int i10 = 0; i10 < iResourcesSize; i10++) {
                List<Integer> list = worldResourcesProduced;
                list.set(i10, list.get(i10));
            }
            for (int i11 = 0; i11 < iResourcesSize; i11++) {
                int i12 = 0;
                for (int i13 = 1; i13 < Game.getCivsSize(); i13++) {
                    if (Game.getCiv(i12).getGoodsProduced(i11) < Game.getCiv(i13).getGoodsProduced(i11)) {
                        i12 = i13;
                    }
                }
                if (Game.getCiv(i12).getTechResearched(lResources.get(i11).RequiredTechID)) {
                    worldResources_LargestProducer.add(Integer.valueOf(i12));
                    worldResources_LargestProducer_Amount.add(Integer.valueOf(Game.getCiv(i12).getGoodsProduced(i11)));
                } else {
                    worldResources_LargestProducer.add(0);
                    worldResources_LargestProducer_Amount.add(Integer.valueOf(Game.getCiv(i12).getGoodsProduced(i11)));
                }
            }
            if (!z) {
                for (int i14 = 0; i14 < iResourcesSize; i14++) {
                    if (((Boolean) arrayList.get(i14)).booleanValue()) {
                        if (worldResources_LargestProducer.get(i14).intValue() != Game.player.iCivID) {
                            Game.player.addNotification(new Notification(Notification.Notification_Type.NO_LONGER_LARGEST_PRODUCER, Game.lang.get("WeAreNoLongerTheLargestProducerOf") + ": " + lResources.get(i14).Name, i14, Game_Calendar.TURN_ID, Notification.Notification_BG.RED));
                        }
                    } else if (worldResources_LargestProducer.get(i14).intValue() == Game.player.iCivID) {
                        Game.player.addNotification(new Notification(Notification.Notification_Type.LARGEST_PRODUCER, Game.lang.get("WeAreTheLargestProducerOf") + ": " + lResources.get(i14).Name, i14, Game_Calendar.TURN_ID, Notification.Notification_BG.GREEN));
                    }
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            int iMax2 = Math.max(iResourcesSize, worldResources_LargestProducer.size());
            for (int i15 = 0; i15 < iMax2; i15++) {
                if (worldResources_LargestProducer.get(i15).intValue() > 0 && Game.getCiv(worldResources_LargestProducer.get(i15).intValue()).getTechResearched(lResources.get(i15).RequiredTechID)) {
                    updateCivBonuses(i15, worldResources_LargestProducer.get(i15).intValue(), 1);
                    Game.getCiv(worldResources_LargestProducer.get(i15).intValue()).largestProducerNum++;
                }
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public static void updateWorldResourcesProduced_NewYear() {
        if (Game_Calendar.currentYear != lastUpdateYear) {
            updateWorldResourcesProduced(false);
            if (Game.menuManager.getVisibleInGame_Goods() && InGame_Goods.inGoodsView) {
                Game.addSimpleTask(new AnonymousClass1("rebuildGoods"));
            }
        }
    }
}
