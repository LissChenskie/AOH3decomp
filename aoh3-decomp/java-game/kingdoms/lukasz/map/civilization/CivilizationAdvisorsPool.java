package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.menu_element.Toast;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationAdvisorsPool {
    public int iAdvisorType;
    public List<Advisor> lAdvisors = new ArrayList();
    public int generateYear = -55000;

    public CivilizationAdvisorsPool(int i) {
        this.iAdvisorType = i;
    }

    public static final Advisor buildAdvisorBonuses(Advisor advisor, int i) {
        if (i == 0) {
            int iNextInt = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 4;
            if (iNextInt == 0) {
                advisor.TaxEfficiency = GameValues.advisors.ADVISOR_TAX_EFFICIENCY_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_TAX_EFFICIENCY_RANDOM * 100.0f)) / 100.0f);
            } else if (iNextInt == 1) {
                advisor.ProvinceMaintenance = -(GameValues.advisors.ADVISOR_PROVINCE_MAINTENANCE_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_PROVINCE_MAINTENANCE_RANDOM * 100.0f)) / 100.0f));
            } else if (iNextInt == 2) {
                advisor.AdministrationBuildingsCost = -(GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM * 10000.0f)) / 10000.0f));
            } else if (iNextInt != 3) {
                advisor.GrowthRate = GameValues.advisors.ADVISOR_GROWTH_RATE_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_GROWTH_RATE_RANDOM * 100.0f)) / 100.0f);
            } else {
                advisor.IncreaseGrowthRateCost = -(GameValues.advisors.ADVISOR_INCREASE_GROWTH_RATE_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_INCREASE_GROWTH_RATE_COST_RANDOM * 10000.0f)) / 10000.0f));
            }
            int iNextInt2 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 3;
            if (iNextInt2 == 0) {
                advisor.ConstructionTime = -(GameValues.advisors.ADVISOR_CONSTRUCTION_TIME_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONSTRUCTION_TIME_RANDOM * 10000.0f)) / 10000.0f));
            } else if (iNextInt2 != 1) {
                advisor.RecruitmentTime = -(GameValues.advisors.ADVISOR_RECRUITMENT_TIME_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_RECRUITMENT_TIME_RANDOM * 100.0f)) / 100.0f));
            } else {
                advisor.IncreaseManpowerCost = -(GameValues.advisors.ADVISOR_INCREASE_MANPOWER_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_INCREASE_MANPOWER_COST_RANDOM * 100.0f)) / 100.0f));
            }
        } else if (i == 1) {
            if ((Game.oR.nextInt(5000) + Game.oR.nextInt(Toast.TIME_INVIEW_LONG)) % 100 > 97) {
                advisor.ConstructionCost = -(GameValues.advisors.ADVISOR_CONSTRUCTION_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONSTRUCTION_COST_RANDOM * 100.0f)) / 100.0f));
            } else {
                int iNextInt3 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 5;
                if (iNextInt3 == 0) {
                    advisor.EconomyBuildingsCost = -(GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM * 10000.0f)) / 10000.0f));
                } else if (iNextInt3 == 1) {
                    advisor.InvestInEconomyCost = -(GameValues.advisors.ADVISOR_INVEST_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_INVEST_COST_RANDOM * 10000.0f)) / 10000.0f));
                } else if (iNextInt3 == 2) {
                    advisor.IncreaseTaxEfficiencyCost = -(GameValues.advisors.ADVISOR_INCREASE_TAX_EFFICIENCY_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_INCREASE_TAX_EFFICIENCY_COST_RANDOM * 10000.0f)) / 10000.0f));
                } else if (iNextInt3 != 3) {
                    advisor.ProductionEfficiency = GameValues.advisors.ADVISOR_PRODUCTION_EFFICIENCY_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_PRODUCTION_EFFICIENCY_RANDOM * 100.0f)) / 100.0f);
                } else {
                    advisor.DevelopInfrastructureCost = -(GameValues.advisors.ADVISOR_DEVELOP_INFRASTRUCTURE_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_DEVELOP_INFRASTRUCTURE_COST_RANDOM * 10000.0f)) / 10000.0f));
                }
            }
            int iNextInt4 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 4;
            if (iNextInt4 == 0) {
                advisor.LoanInterest = -(GameValues.advisors.ADVISOR_LOAN_INTEREST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_LOAN_INTEREST_RANDOM * 100.0f)) / 100.0f));
            } else if (iNextInt4 == 1) {
                advisor.CoreCost = -(GameValues.advisors.ADVISOR_CORE_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CORE_COST_RANDOM * 100.0f)) / 100.0f));
            } else if (iNextInt4 != 2) {
                advisor.ReligionCost = -(GameValues.advisors.ADVISOR_CONVERT_RELIGION_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONVERT_RELIGION_COST_RANDOM * 100.0f)) / 100.0f));
            } else {
                advisor.IncomeProduction = GameValues.advisors.ADVISOR_INCOME_PRODUCTION_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_INCOME_PRODUCTION_RANDOM * 100.0f)) / 100.0f);
            }
        } else {
            if (i == 2) {
                int iNextInt5 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 3;
                if (iNextInt5 == 0) {
                    advisor.Research = GameValues.advisors.ADVISOR_RESEARCH_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_RESEARCH_RANDOM * 100.0f)) / 100.0f);
                } else if (iNextInt5 != 1) {
                    advisor.Research = GameValues.advisors.ADVISOR_RESEARCH_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_RESEARCH_RANDOM2 * 100.0f)) / 100.0f);
                } else {
                    advisor.MonthlyLegacy = GameValues.advisors.ADVISOR_LEGACY_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_LEGACY_RANDOM * 100.0f)) / 100.0f);
                }
                int iNextInt6 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 4;
                if (iNextInt6 == 0) {
                    advisor.UnitsAttack = (int) (GameValues.advisors.ADVISOR_UNITS_ATTACK_MIN + (GameValues.advisors.ADVISOR_UNITS_ATTACK_RANDOM > 0.0f ? Game.oR.nextInt(((int) GameValues.advisors.ADVISOR_UNITS_ATTACK_RANDOM) * 100) / 100.0f : 0.0f));
                } else if (iNextInt6 == 1) {
                    advisor.UnitsDefense = (int) (GameValues.advisors.ADVISOR_UNITS_DEFENSE_MIN + (GameValues.advisors.ADVISOR_UNITS_DEFENSE_RANDOM > 0.0f ? Game.oR.nextInt(((int) GameValues.advisors.ADVISOR_UNITS_DEFENSE_RANDOM) * 100) / 100.0f : 0.0f));
                } else if (iNextInt6 != 2) {
                    advisor.ImproveRelationsModifier = GameValues.advisors.ADVISOR_IMPROVE_RELATIONS_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_IMPROVE_RELATIONS_RANDOM * 100.0f)) / 100.0f);
                } else {
                    advisor.RegimentsLimit = (int) (GameValues.advisors.ADVISOR_REGIMENTS_LIMIT_MIN + (GameValues.advisors.ADVISOR_REGIMENTS_LIMIT_RANDOM > 0.0f ? Game.oR.nextInt(((int) GameValues.advisors.ADVISOR_REGIMENTS_LIMIT_RANDOM) * 100) / 100.0f : 0.0f));
                }
            } else {
                int iNextInt7 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 5;
                if (iNextInt7 == 0) {
                    advisor.GeneralAttack = (int) (GameValues.advisors.ADVISOR_GENERAL_ATTACK_MIN + (GameValues.advisors.ADVISOR_GENERAL_ATTACK_RANDOM > 0.0f ? Game.oR.nextInt(((int) GameValues.advisors.ADVISOR_GENERAL_ATTACK_RANDOM) * 100) / 100.0f : 0.0f));
                } else if (iNextInt7 == 1) {
                    advisor.GeneralDefense = (int) (GameValues.advisors.ADVISOR_GENERAL_DEFENSE_MIN + (GameValues.advisors.ADVISOR_GENERAL_DEFENSE_RANDOM > 0.0f ? Game.oR.nextInt(((int) GameValues.advisors.ADVISOR_GENERAL_DEFENSE_RANDOM) * 100) / 100.0f : 0.0f));
                } else if (iNextInt7 == 2) {
                    advisor.RecruitArmyCost = -(GameValues.advisors.ADVISOR_RECRUIT_ARMY_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_RECRUIT_ARMY_COST_RANDOM * 100.0f)) / 100.0f));
                } else if (iNextInt7 != 3) {
                    advisor.ArmyMaintenance = -(GameValues.advisors.ADVISOR_ARMY_MAINTENANCE_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_ARMY_MAINTENANCE_RANDOM * 100.0f)) / 100.0f));
                } else {
                    advisor.MilitaryBuildingsCost = -(GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM * 10000.0f)) / 10000.0f));
                }
                int iNextInt8 = (Game.oR.nextInt(5000) + Game.oR.nextInt(2750)) % 3;
                if (iNextInt8 == 0) {
                    advisor.MaxManpower = GameValues.advisors.ADVISOR_MAX_MANPOWER_MIN + Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_MAX_MANPOWER_RANDOM + 1.0f));
                } else if (iNextInt8 != 1) {
                    advisor.SiegeEffectiveness = GameValues.advisors.ADVISOR_SIEGE_EFFECTIVENESS_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_SIEGE_EFFECTIVENESS_RANDOM * 10000.0f)) / 10000.0f);
                } else {
                    advisor.ArmyMovementSpeed = GameValues.advisors.ADVISOR_ARMY_MOVEMENT_SPEED_MIN + (Game.oR.nextInt((int) (GameValues.advisors.ADVISOR_ARMY_MOVEMENT_SPEED_RANDOM * 100.0f)) / 100.0f);
                }
            }
        }
        return advisor;
    }

    public static final Advisor generateAdvisor_Random(int i, int i2) {
        return buildAdvisorBonuses(new Advisor(Game.generalManager.getGeneralRandomName(i) + " " + Game.generalManager.getGeneralRandomSurname(i), i2 == 3 ? Game.advisorManager.getRandomGeneralImage(i) : Game.advisorManager.getRandomImage(i, i2), (Game_Calendar.currentYear - GameValues.advisors.ADVISOR_YEARS_OLD_MIN) - Game.oR.nextInt(Math.max(1, GameValues.advisors.ADVISOR_YEARS_OLD_RANDOM)), null), i2);
    }

    public void clearData() {
        this.lAdvisors.clear();
        this.generateYear = -55000;
    }

    public final void generateAdvisors(int i, String str) {
        for (int size = this.lAdvisors.size(); size < getPoolOfAdvisors(i); size++) {
            this.lAdvisors.add(new Advisor(Game.generalManager.getGeneralRandomName(i) + " " + Game.generalManager.getGeneralRandomSurname(i), this.iAdvisorType == 3 ? Game.advisorManager.getRandomGeneralImage(i) : Game.advisorManager.getRandomImage(i, this.iAdvisorType), (Game_Calendar.currentYear - GameValues.advisors.ADVISOR_YEARS_OLD_MIN) - Game.oR.nextInt(Math.max(1, GameValues.advisors.ADVISOR_YEARS_OLD_RANDOM)), str));
            int size2 = this.lAdvisors.size() - 1;
            List<Advisor> list = this.lAdvisors;
            list.set(size2, buildAdvisorBonuses(list.get(size2), this.iAdvisorType));
        }
    }

    public int getPoolOfAdvisors(int i) {
        return GameValues.advisors.RECRUIT_ADVISOR_DEFAULT_POOL + Game.getCiv(i).civBonuses.AdvisorPoolSize;
    }

    public final boolean recruitAdvisorID(int i, int i2) {
        boolean z = false;
        if (i2 < this.lAdvisors.size()) {
            if (Game.getCiv(i).fGold < AdvisorManager.getRecruitGoldCost(i) || Game.getCiv(i).fLegacy < AdvisorManager.getRecruitCostLegacy(i)) {
                return false;
            }
            Game.getCiv(i).fGold -= AdvisorManager.getRecruitGoldCost(i);
            Game.getCiv(i).fLegacy -= AdvisorManager.getRecruitCostLegacy(i);
            z = true;
            Game.getCiv(i).eventsData3.addRecruitedAdvisors(1);
            if (i == Game.player.iCivID) {
                Game.stats.civStats.ra++;
            }
            int i3 = this.iAdvisorType;
            if (i3 == 0) {
                if (Game.getCiv(i).advisorAdministration.sName != null) {
                    AdvisorManager advisorManager = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, -1);
                }
                Game.getCiv(i).advisorAdministration = this.lAdvisors.get(i2);
                AdvisorManager advisorManager2 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
            } else if (i3 == 1) {
                if (Game.getCiv(i).advisorEconomy.sName != null) {
                    AdvisorManager advisorManager3 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, -1);
                }
                Game.getCiv(i).advisorEconomy = this.lAdvisors.get(i2);
                AdvisorManager advisorManager4 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
            } else if (i3 != 2) {
                if (Game.getCiv(i).advisorMilitary.sName != null) {
                    AdvisorManager advisorManager5 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, -1);
                }
                Game.getCiv(i).advisorMilitary = this.lAdvisors.get(i2);
                AdvisorManager advisorManager6 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
            } else {
                if (Game.getCiv(i).advisorTechnology.sName != null) {
                    AdvisorManager advisorManager7 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, -1);
                }
                Game.getCiv(i).advisorTechnology = this.lAdvisors.get(i2);
                AdvisorManager advisorManager8 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
            }
            this.lAdvisors.remove(i2);
            generateAdvisors(i, null);
        }
        return z;
    }

    public final void updatePoolOfAdvisors(int i) {
        if (this.lAdvisors.size() == 0) {
            generateAdvisors(i, null);
            this.generateYear = Game_Calendar.currentYear;
        } else if (this.generateYear + GameValues.advisors.RECRUIT_ADVISOR_REGENERATE_YEARS <= Game_Calendar.currentYear) {
            this.lAdvisors.clear();
            generateAdvisors(i, null);
            this.generateYear = Game_Calendar.currentYear;
        } else if (this.lAdvisors.size() < getPoolOfAdvisors(i)) {
            generateAdvisors(i, null);
        }
    }
}
