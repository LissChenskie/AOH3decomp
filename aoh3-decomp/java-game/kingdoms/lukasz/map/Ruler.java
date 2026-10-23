package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Ruler {
    public int BornDay;
    public int BornMonth;
    public int BornYear;
    public String ImageID;
    public String Name;
    public boolean isRandom;
    public boolean kingImage;
    public CivilizationBonuses rulerBonuses;

    public Ruler(int i, String str, String str2, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        this.isRandom = false;
        this.Name = str;
        this.ImageID = "" + str2;
        this.kingImage = z2;
        this.BornDay = Math.max(1, i2);
        this.BornMonth = i3;
        this.BornYear = i4;
        this.isRandom = z;
        initRulerBonuses(i);
    }

    public Ruler(SaveGameManager.Save_Civ_Ruler save_Civ_Ruler) {
        this.isRandom = false;
        this.Name = save_Civ_Ruler.n;
        this.ImageID = "" + save_Civ_Ruler.a;
        this.kingImage = save_Civ_Ruler.k;
        this.BornDay = save_Civ_Ruler.d;
        this.BornMonth = save_Civ_Ruler.m;
        this.BornYear = save_Civ_Ruler.y;
        this.isRandom = save_Civ_Ruler.r;
    }

    private final void initRulerBonuses(int i) {
        this.rulerBonuses = new CivilizationBonuses();
        switch (Game.oR.nextInt(11)) {
            case 0:
                this.rulerBonuses.MonthlyIncome = GameValues.court.RULER_MONTHLY_INCOME_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_MONTHLY_INCOME_RANDOM * 100.0f)) / 100.0f);
                if (this.rulerBonuses.MonthlyIncome == 0.0f) {
                    this.rulerBonuses.MonthlyIncome = 0.01f;
                }
                break;
            case 1:
                this.rulerBonuses.TaxEfficiency = GameValues.court.RULER_TAX_EFFICIENCY_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_TAX_EFFICIENCY_RANDOM * 100.0f)) / 100.0f);
                break;
            case 2:
                this.rulerBonuses.ProductionEfficiency = GameValues.court.RULER_PRODUCTION_EFFICIENCY_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_PRODUCTION_EFFICIENCY_RANDOM * 100.0f)) / 100.0f);
                break;
            case 3:
                this.rulerBonuses.IncreaseGrowthRateCost = (-GameValues.court.RULER_INCREASE_GROWTH_RATE_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_INCREASE_GROWTH_RATE_COST_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 4:
                this.rulerBonuses.ConstructionCost = (-GameValues.court.RULER_CONSTRUCTION_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_CONSTRUCTION_COST_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 5:
                this.rulerBonuses.InvestInEconomyCost = (-GameValues.court.RULER_INVEST_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_INVEST_COST_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 6:
                this.rulerBonuses.IncreaseTaxEfficiencyCost = (-GameValues.court.RULER_INCREASE_TAX_EFFICIENCY_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_INCREASE_TAX_EFFICIENCY_COST_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 7:
                this.rulerBonuses.DevelopInfrastructureCost = (-GameValues.court.RULER_DEVELOP_INFRASTRUCTURE_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_DEVELOP_INFRASTRUCTURE_COST_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 8:
                this.rulerBonuses.Devastation = GameValues.court.RULER_DEVASTATION_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_DEVASTATION_RANDOM * 10000.0f)) / 10000.0f);
                break;
            case 9:
                this.rulerBonuses.IncreaseManpowerCost = (-GameValues.court.RULER_INCREASE_MANPOWER_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_INCREASE_MANPOWER_COST_RANDOM * 100.0f)) / 100.0f);
                break;
            default:
                this.rulerBonuses.ProvinceMaintenance = (-GameValues.court.RULER_PROVINCE_MAINTENANCE_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_PROVINCE_MAINTENANCE_RANDOM * 100.0f)) / 100.0f);
                break;
        }
        int iNextInt = Game.oR.nextInt(7);
        if (iNextInt == 0) {
            this.rulerBonuses.MaxManpower = GameValues.court.RULER_MAX_MANPOWER_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_MAX_MANPOWER_RANDOM * 100.0f)) / 100.0f);
        } else if (iNextInt == 1) {
            this.rulerBonuses.RecruitmentTime = (-GameValues.court.RULER_RECRUITMENT_TIME_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_RECRUITMENT_TIME_RANDOM * 100.0f)) / 100.0f);
        } else if (iNextInt == 2) {
            this.rulerBonuses.ResearchPoints = GameValues.court.RULER_RESEARCH_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_RESEARCH_RANDOM * 100.0f)) / 100.0f);
        } else if (iNextInt == 3) {
            this.rulerBonuses.GeneralCost = (-GameValues.court.RULER_GENERAL_COST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_GENERAL_COST_RANDOM * 10000.0f)) / 10000.0f);
        } else if (iNextInt == 4) {
            this.rulerBonuses.ImproveRelationsModifier = GameValues.court.RULER_IMPROVE_RELATIONS_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_IMPROVE_RELATIONS_RANDOM * 100.0f)) / 100.0f);
        } else if (iNextInt != 5) {
            this.rulerBonuses.MonthlyLegacy = GameValues.court.RULER_MONTHLY_LEGACY_MIN + (Game.oR.nextInt((int) (GameValues.court.RULER_MONTHLY_LEGACY_RANDOM * 100.0f)) / 100.0f);
        } else {
            this.rulerBonuses.LoanInterest = (-GameValues.court.RULER_LOAN_INTEREST_MIN) - (Game.oR.nextInt((int) (GameValues.court.RULER_LOAN_INTEREST_RANDOM * 100.0f)) / 100.0f);
        }
        if (Game.oR.nextInt(100) < GameValues.court.RULER_THIRD_BONUS_CHANCE) {
            int iNextInt2 = Game.oR.nextInt(4);
            if (iNextInt2 == 0) {
                this.rulerBonuses.UnitsAttack = GameValues.court.RULER_UNITS_ATTACK_MIN + Game.oR.nextInt(GameValues.court.RULER_UNITS_ATTACK_RANDOM);
            } else if (iNextInt2 == 1) {
                this.rulerBonuses.UnitsDefense = GameValues.court.RULER_UNITS_DEFENSE_MIN + Game.oR.nextInt(GameValues.court.RULER_UNITS_DEFENSE_RANDOM);
            } else if (iNextInt2 != 2) {
                this.rulerBonuses.GeneralDefense = GameValues.court.RULER_GENERALS_DEFENSE_MIN + Game.oR.nextInt(GameValues.court.RULER_GENERALS_DEFENSE_RANDOM);
            } else {
                this.rulerBonuses.GeneralAttack = GameValues.court.RULER_GENERALS_ATTACK_MIN + Game.oR.nextInt(GameValues.court.RULER_GENERALS_ATTACK_RANDOM);
            }
        }
        updateCivBonuses(i, 1);
    }

    public final void initRulerBonuses_Load(int i, CivilizationBonuses civilizationBonuses) {
        this.rulerBonuses = civilizationBonuses;
        updateCivBonuses(i, 1);
    }

    public final void updateCivBonuses(int i, int i2) {
        Game.getCiv(i).updateCivilizationBonuses_Temporary(this.rulerBonuses, i2);
    }
}
