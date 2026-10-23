package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CharactersManager {

    public static class Characters {
        public int Attack;
        public int BornDay;
        public int BornMonth;
        public int BornYear;
        public int Defense;
        public String ImageID;
        public String Name;
    }

    public static class ConfigCharactersData {
        public String Age_of_History;
        public ArrayList Rulers;
    }

    public static class ScenarioCharacters {
        public String Administrative;
        public String CivTAG;
        public String Economic;
        public String[] Generals;
        public String Innovation;
        public String Military;
    }

    public static final void loadAdvisor(int i, String str, int i2) {
        try {
            if (FileManager.loadFile("game/characters/" + str + ".json").exists()) {
                FileHandle fileHandleLoadFile = FileManager.loadFile("game/characters/" + str + ".json");
                Json json = new Json();
                Iterator it = ((ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile)).iterator();
                while (it.hasNext()) {
                    try {
                        Characters characters = (Characters) json.readValue(Characters.class, (JsonValue) it.next());
                        if (characters != null && characters.ImageID != null && characters.ImageID.length() > 0) {
                            int iNextInt = characters.BornYear;
                            if (Game_Calendar.currentYear - characters.BornYear < 10 || Game_Calendar.currentYear - characters.BornYear > 99) {
                                iNextInt = (Game_Calendar.currentYear - GameValues.advisors.ADVISOR_YEARS_OLD_MIN) - Game.oR.nextInt(Math.max(1, GameValues.advisors.ADVISOR_YEARS_OLD_RANDOM));
                            }
                            Advisor advisorBuildAdvisorBonuses = CivilizationAdvisorsPool.buildAdvisorBonuses(new Advisor(CFG.checkName(characters.Name), i2 == 3 ? Game.advisorManager.getRandomGeneralImage(i) : Game.advisorManager.getRandomImage(i, i2), iNextInt, characters.ImageID), i2);
                            advisorBuildAdvisorBonuses.iDayOfBirth = characters.BornDay;
                            advisorBuildAdvisorBonuses.iMonthOfBirth = characters.BornMonth;
                            if (i2 == 0) {
                                if (Game.getCiv(i).advisorAdministration.sName != null) {
                                    AdvisorManager advisorManager = Game.advisorManager;
                                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, -1);
                                }
                                Game.getCiv(i).advisorAdministration = advisorBuildAdvisorBonuses;
                                AdvisorManager advisorManager2 = Game.advisorManager;
                                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
                                return;
                            }
                            if (i2 == 1) {
                                if (Game.getCiv(i).advisorEconomy.sName != null) {
                                    AdvisorManager advisorManager3 = Game.advisorManager;
                                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, -1);
                                }
                                Game.getCiv(i).advisorEconomy = advisorBuildAdvisorBonuses;
                                AdvisorManager advisorManager4 = Game.advisorManager;
                                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
                                return;
                            }
                            if (i2 != 2) {
                                if (Game.getCiv(i).advisorMilitary.sName != null) {
                                    AdvisorManager advisorManager5 = Game.advisorManager;
                                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, -1);
                                }
                                Game.getCiv(i).advisorMilitary = advisorBuildAdvisorBonuses;
                                AdvisorManager advisorManager6 = Game.advisorManager;
                                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
                                return;
                            }
                            if (Game.getCiv(i).advisorTechnology.sName != null) {
                                AdvisorManager advisorManager7 = Game.advisorManager;
                                AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, -1);
                            }
                            Game.getCiv(i).advisorTechnology = advisorBuildAdvisorBonuses;
                            AdvisorManager advisorManager8 = Game.advisorManager;
                            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
                            return;
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadGeneral(int i, String str, int i2, int i3) {
        String str2 = CaiJWNfqszJNZ.vdCqiYkuxnl;
        try {
            if (FileManager.loadFile(str2 + str + ".json").exists()) {
                FileHandle fileHandleLoadFile = FileManager.loadFile(str2 + str + ".json");
                Json json = new Json();
                Iterator it = ((ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile)).iterator();
                while (it.hasNext()) {
                    try {
                        Characters characters = (Characters) json.readValue(Characters.class, (JsonValue) it.next());
                        if (characters != null && characters.ImageID != null && characters.ImageID.length() > 0) {
                            int iNextInt = characters.BornYear;
                            if (Game_Calendar.currentYear - characters.BornYear < 10 || Game_Calendar.currentYear - characters.BornYear > 99) {
                                iNextInt = (Game_Calendar.currentYear - GameValues.generals.GENERAL_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.generals.GENERAL_YEARS_OLD_RANDOM);
                            }
                            int i4 = iNextInt;
                            if (i2 != -99) {
                                characters.Attack = i2;
                            }
                            if (i3 != -99) {
                                characters.Defense = i3;
                            }
                            ArmyGeneral armyGeneral = new ArmyGeneral(CFG.checkName(characters.Name), 0, characters.Attack >= 0 ? characters.Attack : GameValues.generals.GENERAL_ATTACK_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM) + Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM2), characters.Defense >= 0 ? characters.Defense : GameValues.generals.GENERAL_DEFENSE_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM) + Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM2), i4, i, characters.ImageID);
                            armyGeneral.d = characters.BornDay;
                            armyGeneral.m = characters.BornMonth;
                            Game.getCiv(i).addGeneral(armyGeneral);
                            return;
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
