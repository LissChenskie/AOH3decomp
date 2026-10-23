package aoc.kingdoms.lukasz.map.advisors;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AdvisorManager {
    public List<Integer> advisorsImagesSize = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.advisors.AdvisorManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.advisors.AdvisorManager$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.advisors.AdvisorManager$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.advisors.AdvisorManager$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    public static boolean advisorIsRecruited(int i, int i2) {
        if (i2 == 0) {
            return Game.getCiv(i).advisorAdministration.sName != null;
        }
        if (i2 == 1) {
            return Game.getCiv(i).advisorEconomy.sName != null;
        }
        if (i2 != 2) {
            return Game.getCiv(i).advisorMilitary.sName != null;
        }
        return Game.getCiv(i).advisorTechnology.sName != null;
    }

    public static Advisor getAdvisor(int i) {
        return getAdvisor(Game.player.iCivID, i);
    }

    public static Advisor getAdvisor(int i, int i2) {
        if (i2 == 0) {
            return Game.getCiv(i).advisorAdministration;
        }
        if (i2 != 1) {
            return i2 != 2 ? Game.getCiv(i).advisorMilitary : Game.getCiv(i).advisorTechnology;
        }
        return Game.getCiv(i).advisorEconomy;
    }

    public static String getAdvisorGroupName(int i) {
        if (i == 0) {
            return Game.lang.get(GameValues.court.ADVISOR_NAME_ADMINISTRATIVE);
        }
        if (i == 1) {
            return Game.lang.get(GameValues.court.ADVISOR_NAME_ECONOMIC);
        }
        if (i != 2) {
            return i != 3 ? Game.lang.get(GameValues.court.ADVISOR_NAME_DIPLOMATIC) : Game.lang.get(GameValues.court.ADVISOR_NAME_MILITARY);
        }
        return Game.lang.get(GameValues.court.ADVISOR_NAME_INNOVATION);
    }

    public static final int getAdvisorMaxLevel(int i) {
        return GameValues.advisors.ADVISOR_MAX_LVL + Game.getCiv(i).civBonuses.AdvisorMaxLevel;
    }

    public static final int getAdvisorPromoteCost(int i, int i2) {
        return (int) (GameValues.advisors.ADVISOR_PROMOTE_COST_PER_LEVEL * i2);
    }

    public static final int getAdvisorPromoteCostLegacy(int i, int i2) {
        return (int) (GameValues.advisors.ADVISOR_PROMOTE_COST_LEGACY_PER_LEVEL * i2);
    }

    public static String getAdvisorsImgPath() {
        return (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG || Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) ? CFG.FILE_ADVISORS_2_PATH : "advisors/";
    }

    public static String getAdvisorsImgPath(int i) {
        return ((Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).KingsImages || !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG) && !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) ? "advisors/" : ALZmnpZHj.PpgYTLloRXJ;
    }

    public static int getRecruitCostLegacy(int i) {
        return (int) (GameValues.advisors.RECRUIT_ADVISOR_LEGACY_COST * Math.max(0.0f, Game.getCiv(i).civBonuses.AdvisorCost + 1.0f + GameValues.civRank.CIV_RANK_ADVISOR_COST[Game.getCiv(i).iCivRankID]));
    }

    public static int getRecruitGoldCost(int i) {
        return (int) (GameValues.advisors.RECRUIT_ADVISOR_GOLD_COST * Math.max(0.0f, Game.getCiv(i).civBonuses.AdvisorCost + 1.0f + GameValues.civRank.CIV_RANK_ADVISOR_COST[Game.getCiv(i).iCivRankID]));
    }

    public static final boolean promoteAdvisor(int i, int i2, boolean z) {
        boolean z2 = false;
        if (getAdvisor(i, i2) != null && ((getAdvisor(i, i2).iLevel < getAdvisorMaxLevel(i) || z) && advisorIsRecruited(i, i2))) {
            if (!z) {
                if (Game.getCiv(i).fGold < getAdvisorPromoteCost(i, getAdvisor(i, i2).iLevel) || Game.getCiv(i).fLegacy < getAdvisorPromoteCostLegacy(i, getAdvisor(i, i2).iLevel)) {
                    return false;
                }
                Game.getCiv(i).fGold -= getAdvisorPromoteCost(i, getAdvisor(i, i2).iLevel);
                Game.getCiv(i).fLegacy -= getAdvisorPromoteCostLegacy(i, getAdvisor(i, i2).iLevel);
            }
            updateCivBonuses(getAdvisor(i, i2), i, -1);
            z2 = true;
            getAdvisor(i, i2).iLevel++;
            try {
                float f = GameValues.advisors.ADVISOR_BONUSES_UPGRADE_PER_LEVEL + 1.0f;
                getAdvisor(i, i2).TaxEfficiency *= f;
                getAdvisor(i, i2).ProvinceMaintenance *= f;
                getAdvisor(i, i2).GrowthRate *= f;
                getAdvisor(i, i2).ProductionEfficiency *= f;
                getAdvisor(i, i2).IncomeProduction *= f;
                getAdvisor(i, i2).MonthlyLegacy *= f;
                getAdvisor(i, i2).MaxManpower *= f;
                getAdvisor(i, i2).ArmyMaintenance *= f;
                getAdvisor(i, i2).RecruitmentTime *= f;
                getAdvisor(i, i2).RecruitArmyCost *= f;
                getAdvisor(i, i2).Research *= f;
                getAdvisor(i, i2).ConstructionCost *= f;
                getAdvisor(i, i2).AdministrationBuildingsCost *= f;
                getAdvisor(i, i2).EconomyBuildingsCost *= f;
                getAdvisor(i, i2).MilitaryBuildingsCost *= f;
                getAdvisor(i, i2).ConstructionTime *= f;
                getAdvisor(i, i2).DevelopInfrastructureCost *= f;
                getAdvisor(i, i2).IncreaseTaxEfficiencyCost *= f;
                getAdvisor(i, i2).IncreaseGrowthRateCost *= f;
                getAdvisor(i, i2).InvestInEconomyCost *= f;
                getAdvisor(i, i2).IncreaseManpowerCost *= f;
                if (getAdvisor(i, i2).GeneralAttack != 0.0f) {
                    getAdvisor(i, i2).GeneralAttack = (int) Math.max(getAdvisor(i, i2).GeneralAttack + 1.0f, Math.ceil(getAdvisor(i, i2).GeneralAttack * f));
                }
                if (getAdvisor(i, i2).GeneralDefense != 0.0f) {
                    getAdvisor(i, i2).GeneralDefense = (int) Math.max(getAdvisor(i, i2).GeneralDefense + 1.0f, Math.ceil(getAdvisor(i, i2).GeneralDefense * f));
                }
                if (getAdvisor(i, i2).UnitsAttack != 0.0f) {
                    getAdvisor(i, i2).UnitsAttack = (int) Math.max(getAdvisor(i, i2).UnitsAttack + 1.0f, Math.ceil(getAdvisor(i, i2).UnitsAttack * f));
                }
                if (getAdvisor(i, i2).UnitsDefense != 0.0f) {
                    getAdvisor(i, i2).UnitsDefense = (int) Math.max(getAdvisor(i, i2).UnitsDefense + 1.0f, Math.ceil(getAdvisor(i, i2).UnitsDefense * f));
                }
                if (getAdvisor(i, i2).RegimentsLimit != 0) {
                    getAdvisor(i, i2).RegimentsLimit = (int) Math.max(getAdvisor(i, i2).RegimentsLimit + 1, Math.ceil(getAdvisor(i, i2).RegimentsLimit * f));
                }
                getAdvisor(i, i2).MaxMorale *= f;
                getAdvisor(i, i2).ArmyMovementSpeed *= f;
                getAdvisor(i, i2).SiegeEffectiveness *= f;
                getAdvisor(i, i2).ImproveRelationsModifier *= f;
                getAdvisor(i, i2).LoanInterest *= f;
                getAdvisor(i, i2).CoreCost *= f;
                getAdvisor(i, i2).ReligionCost *= f;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            updateCivBonuses(getAdvisor(i, i2), i, 1);
        }
        return z2;
    }

    public static final void updateCivBonuses(Advisor advisor, int i, int i2) {
        float f = i2;
        Game.getCiv(i).civBonuses.TaxEfficiency += advisor.TaxEfficiency * f;
        Game.getCiv(i).civBonuses.ProvinceMaintenance += advisor.ProvinceMaintenance * f;
        if (advisor.GrowthRate != 0.0f) {
            Game.getCiv(i).civBonuses.GrowthRate += advisor.GrowthRate * f;
            Game.getCiv(i).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
        }
        Game.getCiv(i).civBonuses.ProductionEfficiency += advisor.ProductionEfficiency * f;
        Game.getCiv(i).civBonuses.IncomeProduction += advisor.IncomeProduction * f;
        if (advisor.MonthlyLegacy != 0.0f) {
            Game.gameThread.addCivUpdateLegacyPerMonth(i);
        }
        Game.getCiv(i).civBonuses.MonthlyLegacy += advisor.MonthlyLegacy * f;
        if (advisor.MaxManpower != 0.0f) {
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        }
        Game.getCiv(i).civBonuses.MaxManpower += advisor.MaxManpower * f;
        if (advisor.ArmyMaintenance != 0.0f) {
            Game.getCiv(i).civBonuses.ArmyMaintenance += advisor.ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i);
        }
        Game.getCiv(i).civBonuses.RecruitmentTime += advisor.RecruitmentTime * f;
        Game.getCiv(i).civBonuses.RecruitArmyCost += advisor.RecruitArmyCost * f;
        if (advisor.Research != 0.0f) {
            Game.gameThread.addCivUpdateResearchPerMonth(i);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
        }
        Game.getCiv(i).civBonuses.ResearchPoints += advisor.Research * f;
        Game.getCiv(i).civBonuses.ConstructionCost += advisor.ConstructionCost * f;
        Game.getCiv(i).civBonuses.AdministrationBuildingsCost += advisor.AdministrationBuildingsCost * f;
        Game.getCiv(i).civBonuses.EconomyBuildingsCost += advisor.EconomyBuildingsCost * f;
        Game.getCiv(i).civBonuses.MilitaryBuildingsCost += advisor.MilitaryBuildingsCost * f;
        Game.getCiv(i).civBonuses.ConstructionTime += advisor.ConstructionTime * f;
        Game.getCiv(i).civBonuses.InvestInEconomyCost += advisor.InvestInEconomyCost * f;
        Game.getCiv(i).civBonuses.IncreaseManpowerCost += advisor.IncreaseManpowerCost * f;
        Game.getCiv(i).civBonuses.IncreaseTaxEfficiencyCost += advisor.IncreaseTaxEfficiencyCost * f;
        Game.getCiv(i).civBonuses.IncreaseGrowthRateCost += advisor.IncreaseGrowthRateCost * f;
        Game.getCiv(i).civBonuses.DevelopInfrastructureCost += advisor.DevelopInfrastructureCost * f;
        CivilizationBonuses civilizationBonuses = Game.getCiv(i).civBonuses;
        civilizationBonuses.GeneralAttack = (int) (civilizationBonuses.GeneralAttack + (advisor.GeneralAttack * f));
        CivilizationBonuses civilizationBonuses2 = Game.getCiv(i).civBonuses;
        civilizationBonuses2.GeneralDefense = (int) (civilizationBonuses2.GeneralDefense + (advisor.GeneralDefense * f));
        CivilizationBonuses civilizationBonuses3 = Game.getCiv(i).civBonuses;
        civilizationBonuses3.UnitsAttack = (int) (civilizationBonuses3.UnitsAttack + (advisor.UnitsAttack * f));
        CivilizationBonuses civilizationBonuses4 = Game.getCiv(i).civBonuses;
        civilizationBonuses4.UnitsDefense = (int) (civilizationBonuses4.UnitsDefense + (advisor.UnitsDefense * f));
        if (advisor.RegimentsLimit != 0) {
            Game.getCiv(i).civBonuses.RegimentsLimit += advisor.RegimentsLimit * i2;
            Game.getCiv(i).updateRegimentsLimit();
        }
        Game.getCiv(i).civBonuses.MaxMorale += advisor.MaxMorale * f;
        Game.getCiv(i).civBonuses.ArmyMovementSpeed += advisor.ArmyMovementSpeed * f;
        Game.getCiv(i).civBonuses.SiegeEffectiveness += advisor.SiegeEffectiveness * f;
        Game.getCiv(i).civBonuses.ImproveRelationsModifier += advisor.ImproveRelationsModifier * f;
        Game.getCiv(i).civBonuses.LoanInterest += advisor.LoanInterest * f;
        Game.getCiv(i).civBonuses.CoreCost += advisor.CoreCost * f;
        Game.getCiv(i).civBonuses.ReligionCost += advisor.ReligionCost * f;
        Game.getCiv(i).updateProvincesIncomeAndExpenses();
    }

    public final void advisorDied(int i, int i2) {
        if (i2 == 0) {
            if (Game.getCiv(i).advisorAdministration.sName != null) {
                if (i == Game.player.iCivID) {
                    Game.player.addNotification(new Notification(Notification.Notification_Type.ADVISOR_DIED, Game.lang.get("AdvisorDied") + ": " + Game.getCiv(i).advisorAdministration.sName, Images.council, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                    Game.addSimpleTask(new AnonymousClass1("rebuildCourt"));
                }
                AdvisorManager advisorManager = Game.advisorManager;
                updateCivBonuses(Game.getCiv(i).advisorAdministration, i, -1);
                Game.getCiv(i).advisorAdministration = new Advisor();
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (Game.getCiv(i).advisorEconomy.sName != null) {
                if (i == Game.player.iCivID) {
                    Game.player.addNotification(new Notification(Notification.Notification_Type.ADVISOR_DIED, Game.lang.get("AdvisorDied") + ": " + Game.getCiv(i).advisorEconomy.sName, Images.council, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                    Game.addSimpleTask(new AnonymousClass2("rebuildCourt"));
                }
                AdvisorManager advisorManager2 = Game.advisorManager;
                updateCivBonuses(Game.getCiv(i).advisorEconomy, i, -1);
                Game.getCiv(i).advisorEconomy = new Advisor();
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (Game.getCiv(i).advisorTechnology.sName != null) {
                if (i == Game.player.iCivID) {
                    Game.player.addNotification(new Notification(Notification.Notification_Type.ADVISOR_DIED, Game.lang.get("AdvisorDied") + ": " + Game.getCiv(i).advisorTechnology.sName, Images.council, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                    Game.addSimpleTask(new AnonymousClass3("rebuildCourt"));
                }
                AdvisorManager advisorManager3 = Game.advisorManager;
                updateCivBonuses(Game.getCiv(i).advisorTechnology, i, -1);
                Game.getCiv(i).advisorTechnology = new Advisor();
                return;
            }
            return;
        }
        if (i2 == 3 && Game.getCiv(i).advisorMilitary.sName != null) {
            if (i == Game.player.iCivID) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.ADVISOR_DIED, Game.lang.get("AdvisorDied") + ": " + Game.getCiv(i).advisorMilitary.sName, Images.council, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                Game.addSimpleTask(new AnonymousClass4("rebuildCourt"));
            }
            AdvisorManager advisorManager4 = Game.advisorManager;
            updateCivBonuses(Game.getCiv(i).advisorMilitary, i, -1);
            Game.getCiv(i).advisorMilitary = new Advisor();
        }
    }

    public int getRandomGeneralImage(int i) {
        if (Game.player.iCivID != i) {
            return Game.oR.nextInt(Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue());
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue(); i2++) {
            arrayList.add(false);
        }
        int size = Game.player.civAdvisorsPool_Military.lAdvisors.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(Game.player.civAdvisorsPool_Military.lAdvisors.get(i3).imageID, true);
        }
        ArrayList arrayList2 = new ArrayList();
        int iIntValue = Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i4 = 0; i4 < iIntValue; i4++) {
            if (!((Boolean) arrayList.get(i4)).booleanValue()) {
                arrayList2.add(Integer.valueOf(i4));
            }
        }
        return arrayList2.size() == 0 ? Game.oR.nextInt(Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue()) : ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
    }

    public int getRandomImage(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue(); i3++) {
            arrayList.add(false);
        }
        if (i == Game.player.iCivID) {
            for (int i4 = 0; i4 < Game.player.civAdvisorsPool_Administration.lAdvisors.size(); i4++) {
                try {
                    arrayList.set(Game.player.civAdvisorsPool_Administration.lAdvisors.get(i4).imageID, true);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int i5 = 0; i5 < Game.player.civAdvisorsPool_Economy.lAdvisors.size(); i5++) {
                try {
                    arrayList.set(Game.player.civAdvisorsPool_Economy.lAdvisors.get(i5).imageID, true);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            for (int i6 = 0; i6 < Game.player.civAdvisorsPool_Technology.lAdvisors.size(); i6++) {
                try {
                    arrayList.set(Game.player.civAdvisorsPool_Technology.lAdvisors.get(i6).imageID, true);
                } catch (Exception e3) {
                    CFG.exceptionStack(e3);
                }
            }
        }
        if (Game.getCiv(i).advisorAdministration.sName != null) {
            try {
                arrayList.set(Game.getCiv(i).advisorAdministration.imageID, true);
            } catch (Exception e4) {
                CFG.exceptionStack(e4);
            }
        }
        if (Game.getCiv(i).advisorEconomy.sName != null) {
            try {
                arrayList.set(Game.getCiv(i).advisorEconomy.imageID, true);
            } catch (Exception e5) {
                CFG.exceptionStack(e5);
            }
        }
        if (Game.getCiv(i).advisorTechnology.sName != null) {
            try {
                arrayList.set(Game.getCiv(i).advisorTechnology.imageID, true);
            } catch (Exception e6) {
                CFG.exceptionStack(e6);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int iIntValue = this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i7 = 0; i7 < iIntValue; i7++) {
            if (!((Boolean) arrayList.get(i7)).booleanValue()) {
                arrayList2.add(Integer.valueOf(i7));
            }
        }
        if (arrayList2.size() != 0) {
            return ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
        }
        if (i != Game.player.iCivID) {
            return Game.oR.nextInt(this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue());
        }
        for (int i8 = 0; i8 < this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue(); i8++) {
            arrayList.set(i8, false);
        }
        if (i2 == 0) {
            int size = Game.player.civAdvisorsPool_Administration.lAdvisors.size();
            for (int i9 = 0; i9 < size; i9++) {
                arrayList.set(Game.player.civAdvisorsPool_Administration.lAdvisors.get(i9).imageID, true);
            }
        } else if (i2 == 1) {
            int size2 = Game.player.civAdvisorsPool_Economy.lAdvisors.size();
            for (int i10 = 0; i10 < size2; i10++) {
                arrayList.set(Game.player.civAdvisorsPool_Economy.lAdvisors.get(i10).imageID, true);
            }
        } else if (i2 == 2) {
            int size3 = Game.player.civAdvisorsPool_Technology.lAdvisors.size();
            for (int i11 = 0; i11 < size3; i11++) {
                arrayList.set(Game.player.civAdvisorsPool_Technology.lAdvisors.get(i11).imageID, true);
            }
        }
        int iIntValue2 = this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i12 = 0; i12 < iIntValue2; i12++) {
            if (!((Boolean) arrayList.get(i12)).booleanValue()) {
                arrayList2.add(Integer.valueOf(i12));
            }
        }
        return arrayList2.size() == 0 ? Game.oR.nextInt(this.advisorsImagesSize.get(Game.getCiv(i).iGroupID).intValue()) : ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
    }

    public final void loadAdvisors() {
        int i;
        for (int i2 = 0; i2 < RulersManager.iGroupsSize; i2++) {
            try {
                i = Integer.parseInt(FileManager.loadFile("game/advisors/advisors/" + CFG.getRescouresPath_Short() + i2 + "/numImages.txt").readString());
            } catch (GdxRuntimeException e) {
                CFG.exceptionStack(e);
                i = 0;
            }
            this.advisorsImagesSize.add(Integer.valueOf(i));
        }
    }

    public final void update_ChanceOfDeathAdvisor_Administrative(int i) {
        try {
            if (Game.getCiv(i).advisorAdministration.sName == null || !RulersManager.characterDies(i, Game.getCiv(i).advisorAdministration.iYearOfBirth)) {
                return;
            }
            advisorDied(i, 0);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void update_ChanceOfDeathAdvisor_Economic(int i) {
        try {
            if (Game.getCiv(i).advisorEconomy.sName == null || !RulersManager.characterDies(i, Game.getCiv(i).advisorEconomy.iYearOfBirth)) {
                return;
            }
            advisorDied(i, 1);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void update_ChanceOfDeathAdvisor_Innovation(int i) {
        try {
            if (Game.getCiv(i).advisorTechnology.sName == null || !RulersManager.characterDies(i, Game.getCiv(i).advisorTechnology.iYearOfBirth)) {
                return;
            }
            advisorDied(i, 2);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void update_ChanceOfDeathAdvisor_Military(int i) {
        try {
            if (Game.getCiv(i).advisorMilitary.sName == null || !RulersManager.characterDies(i, Game.getCiv(i).advisorMilitary.iYearOfBirth)) {
                return;
            }
            advisorDied(i, 3);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
