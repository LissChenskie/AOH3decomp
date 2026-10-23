package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddAdvisor extends EventOutcome {
    public int advisorTypeID;

    public EventOutcome_AddAdvisor(int i) {
        this.advisorTypeID = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get(cIUGJCqyPXfp.mgZoHEKOMiR) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + AdvisorManager.getAdvisorGroupName(this.advisorTypeID);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int i3 = this.advisorTypeID;
            if (i3 == 0) {
                if (Game.getCiv(i).advisorAdministration.sName != null) {
                    AdvisorManager advisorManager = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, -1);
                }
                Game.getCiv(i).advisorAdministration = CivilizationAdvisorsPool.generateAdvisor_Random(i, this.advisorTypeID);
                AdvisorManager advisorManager2 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
                return;
            }
            if (i3 == 1) {
                if (Game.getCiv(i).advisorEconomy.sName != null) {
                    AdvisorManager advisorManager3 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, -1);
                }
                Game.getCiv(i).advisorEconomy = CivilizationAdvisorsPool.generateAdvisor_Random(i, this.advisorTypeID);
                AdvisorManager advisorManager4 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
                return;
            }
            if (i3 != 2) {
                if (Game.getCiv(i).advisorMilitary.sName != null) {
                    AdvisorManager advisorManager5 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, -1);
                }
                Game.getCiv(i).advisorMilitary = CivilizationAdvisorsPool.generateAdvisor_Random(i, this.advisorTypeID);
                AdvisorManager advisorManager6 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
                return;
            }
            if (Game.getCiv(i).advisorTechnology.sName != null) {
                AdvisorManager advisorManager7 = Game.advisorManager;
                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, -1);
            }
            Game.getCiv(i).advisorTechnology = CivilizationAdvisorsPool.generateAdvisor_Random(i, this.advisorTypeID);
            AdvisorManager advisorManager8 = Game.advisorManager;
            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
