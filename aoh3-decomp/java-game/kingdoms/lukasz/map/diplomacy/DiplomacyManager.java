package aoc.kingdoms.lukasz.map.diplomacy;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Manager;
import aoc.kingdoms.lukasz.jakowski.AI.AI_PeaceTreaty;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageAlliance;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageCallToWar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageDefensivePact;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageDemandMilitaryAccess;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGift;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGuarantee;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageInsult;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageMilitaryAccessRefused;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageNonAggressionPact;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageWar;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class DiplomacyManager {
    public static final int ANIMATION_TIME = 500;
    public static long lTime;
    public static final Color COLOR_WAR = new Color(0.78431374f, 0.1254902f, 0.14117648f, 1.0f);
    public static final Color COLOR_INSULT = new Color(0.8627451f, 0.39215687f, 0.0f, 1.0f);
    public static final Color COLOR_ALLIANCE = new Color(0.0f, 0.627451f, 1.0f, 1.0f);
    public static final Color COLOR_DEFENSIVE_PACT = new Color(0.41960785f, 0.23529412f, 0.7490196f, 1.0f);
    public static final Color COLOR_NON_AGGRESSION_PACT = new Color(0.78431374f, 0.78431374f, 0.19607843f, 1.0f);
    public static final Color COLOR_MILITARY_ACCESS = new Color(0.08627451f, 0.08627451f, 0.5411765f, 1.0f);
    public static final Color COLOR_GUARANTEE = new Color(0.74509805f, 0.23529412f, 0.6156863f, 1.0f);
    public static final Color COLOR_PEACE = new Color(0.78431374f, 0.92156863f, 0.7254902f, 1.0f);
    public static final Color COLOR_SPY = new Color(0.8235294f, 0.4117647f, 0.13725491f, 1.0f);
    public static final Color COLOR_UNION = new Color(0.25490198f, 0.6862745f, 0.7254902f, 1.0f);
    public static final Color COLOR_RED = new Color(0.70980394f, 0.17254902f, 0.1254902f, 1.0f);
    public static final Color COLOR_NEUTRAL = new Color(0.92156863f, 0.9411765f, 0.8627451f, 1.0f);
    public static final Color COLOR_GREEN = new Color(0.27450982f, 0.50980395f, 0.23529412f, 1.0f);
    public static final Color COLOR_BATTLE = new Color(0.64705884f, 0.078431375f, 0.039215688f, 0.75f);
    public static boolean inAnimation = false;
    public static float fAnimationPerc = 0.0f;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$7, reason: invalid class name */
    class AnonymousClass7 extends Game.SimpleTask {
        AnonymousClass7(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    public static final void acceptAllianceOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceProposalAccepted"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.ALLIANCE);
        }
        addAlliance(i, i2);
        if (i != Game.player.iCivID && GameValues.value.DRAW_DIPLOMACY_LINES_WHEN_ALLIANCE_SIGNED && Game.getCiv(i).getCapitalProvinceID() >= 0 && Game.getCiv(i2).getCapitalProvinceID() >= 0) {
            ProvinceDraw.addDiplomacyLines(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID(), COLOR_ALLIANCE);
        }
        Game.getCiv(i).aiCivDiplomacy.removePreparingForAllianceWithCivID(i2);
        Game.getCiv(i2).aiCivDiplomacy.removePreparingForAllianceWithCivID(i);
    }

    public static final void acceptDefensivePactOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("DefensivePact"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
        addDefensivePact(i, i2);
        if (i == Game.player.iCivID || !GameValues.value.DRAW_DIPLOMACY_LINES_WHEN_DEFENSIVE_PACT_SIGNED || Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getCiv(i2).getCapitalProvinceID() < 0) {
            return;
        }
        ProvinceDraw.addDiplomacyLines(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID(), COLOR_DEFENSIVE_PACT);
    }

    public static final void acceptDemandMilitaryAccess(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("MilitaryAccess"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
        addMilitaryAccess(i, i2);
    }

    public static final void acceptGuaranteeOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get(lOow.ktWaRtCjVxbFJEX), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
        addGuarantee(i, i2);
    }

    public static final void acceptNonAggressionOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("NonAggressionPact"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
        addNonAggressionPact(i, i2);
        if (i == Game.player.iCivID || !GameValues.value.DRAW_DIPLOMACY_LINES_WHEN_NON_AGGRESSION_SIGNED || Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getCiv(i2).getCapitalProvinceID() < 0) {
            return;
        }
        ProvinceDraw.addDiplomacyLines(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID(), COLOR_NON_AGGRESSION_PACT);
    }

    public static final void acceptOfferMilitaryAccess(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i2;
            InGame_Info.iCivID2 = i;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("MilitaryAccess"), Game.getCiv(i2).getCivName() + " - " + Game.getCiv(i).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
        addMilitaryAccess(i2, i);
    }

    public static final void addAlliance(int i, int i2) {
        if (i != i2 && !isAtWar(i, i2) && getCanJoinNewAlliance(i) && getCanJoinNewAlliance(i2)) {
            int iNextInt = GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES_EXTRA_RANDOM > 0 ? Game.oR.nextInt(GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES_EXTRA_RANDOM) : 0;
            Game.getCiv(i).diplomacy.addAlliance(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES + iNextInt);
            Game.getCiv(i2).diplomacy.addAlliance(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES + iNextInt);
            if (i == Game.player.iCivID) {
                Game.getCiv(i2).updateArmyImgID();
                Game.player.fog.updateFogOfWar_Civ(i2);
            } else if (i2 == Game.player.iCivID) {
                Game.getCiv(i).updateArmyImgID();
                Game.player.fog.updateFogOfWar_Civ(i);
            }
        }
    }

    public static final void addDefensivePact(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return;
        }
        Game.getCiv(i).diplomacy.addDefensivePact(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_DEFENSIVE_PACT_EXPIRES);
        Game.getCiv(i2).diplomacy.addDefensivePact(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_DEFENSIVE_PACT_EXPIRES);
    }

    public static final void addGuarantee(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return;
        }
        Game.getCiv(i).diplomacy.addGuarantee(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_GUARANTEE_EXPIRES);
        Game.getCiv(i2).diplomacy.addGuaranteeByCivID(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_GUARANTEE_EXPIRES);
    }

    public static final boolean addMilitaryAccess(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).diplomacy.addMilitaryAccess(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MILITARY_ACCESS_EXPIRES);
        return true;
    }

    public static final void addNonAggressionPact(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return;
        }
        Game.getCiv(i).diplomacy.addNonAggressionPact(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_NON_AGGRESSION_PACT_EXPIRES);
        Game.getCiv(i2).diplomacy.addNonAggressionPact(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_NON_AGGRESSION_PACT_EXPIRES);
    }

    public static final void addTruce(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return;
        }
        Game.getCiv(i).diplomacy.addTruce(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_TRUCE_EXPIRES);
        Game.getCiv(i2).diplomacy.addTruce(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_TRUCE_EXPIRES);
    }

    public static final void addVassal(int i, int i2) {
        if (i == i2 || isAtWar(i, i2)) {
            return;
        }
        Game.getCiv(i2).setPuppetOfCivID(i);
        if (i == Game.player.iCivID) {
            Game.getCiv(i2).updateArmyImgID();
            Game.player.fog.updateFogOfWar_Civ(i2);
        } else if (i2 == Game.player.iCivID) {
            Game.getCiv(i).updateArmyImgID();
            Game.player.fog.updateFogOfWar_Civ(i);
        }
    }

    public static final List<Integer> civAllies(int i) {
        ArrayList arrayList = new ArrayList();
        if (Game.getCiv(i).diplomacy.alliance.size() > 0) {
            for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry : Game.getCiv(i).diplomacy.alliance.entrySet()) {
                if (entry.getValue().iCivID != i && !arrayList.contains(Integer.valueOf(entry.getValue().iCivID))) {
                    arrayList.add(Integer.valueOf(entry.getValue().iCivID));
                }
            }
        }
        if (Game.ENABLE_CALL_VASSALS) {
            for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.iVassalsSize; i2++) {
                if (Game.getCiv(i).diplomacy.lVassals.get(i2).c != i && !arrayList.contains(Integer.valueOf(Game.getCiv(i).diplomacy.lVassals.get(i2).c))) {
                    arrayList.add(Integer.valueOf(Game.getCiv(i).diplomacy.lVassals.get(i2).c));
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Integer) arrayList.get(size)).intValue() < 1 || Game.getCiv(((Integer) arrayList.get(size)).intValue()).getNumOfProvinces() <= 0) {
                arrayList.remove(size);
            } else if (((Integer) arrayList.get(size)).intValue() == i) {
                arrayList.remove(size);
            }
        }
        return arrayList;
    }

    public static final void declareWar(int i, int i2) {
        try {
            declareWar(i, i2, false, new ArrayList());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final boolean declareWar(int i, int i2, boolean z, List<Integer> list) {
        return declareWar(i, i2, z, list, false);
    }

    public static final boolean declareWar(int i, int i2, boolean z, List<Integer> list, boolean z2) {
        String str = nEtnPpUF.HkT;
        if (i == i2) {
            return false;
        }
        if (Game.getCiv(i).getNumOfProvinces() <= 0 || Game.getCiv(i2).getNumOfProvinces() <= 0) {
            return false;
        }
        if (!z) {
            if (Game.getCiv(i).diplomacy.getRelation(i2) > GameValues.war.RELATIONS_TO_DECLARE_WAR || Game.getCiv(i).diplomacy.haveNonAggressionPact(i2) || Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST || Game.getCiv(i).diplomacy.haveAlliance(i2) || Game.getCiv(i2).diplomacy.haveAlliance(i)) {
                return false;
            }
            Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST;
        }
        if (Game.getCiv(i).diplomacy.truce.containsKey(Integer.valueOf(i2))) {
            if (Game.getCiv(i).diplomacy.truce.get(Integer.valueOf(i2)).iTurnID >= Game_Calendar.TURN_ID && !z) {
                return false;
            }
            Game.getCiv(i).diplomacy.truce.remove(Integer.valueOf(i2));
            Game.getCiv(i2).diplomacy.truce.remove(Integer.valueOf(i));
        }
        boolean z3 = Game.getCiv(i2).getPuppetOfCivID() == i;
        try {
            if (Game.getCiv(i).diplomacy.alliance.containsKey(Integer.valueOf(i2))) {
                Game.getCiv(i).diplomacy.alliance.remove(Integer.valueOf(i2));
            }
            if (Game.getCiv(i2).diplomacy.alliance.containsKey(Integer.valueOf(i))) {
                Game.getCiv(i2).diplomacy.alliance.remove(Integer.valueOf(i));
            }
            if (Game.getCiv(i).diplomacy.defensivePact.containsKey(Integer.valueOf(i2))) {
                Game.getCiv(i).diplomacy.defensivePact.remove(Integer.valueOf(i2));
            }
            if (Game.getCiv(i2).diplomacy.defensivePact.containsKey(Integer.valueOf(i))) {
                Game.getCiv(i2).diplomacy.defensivePact.remove(Integer.valueOf(i));
            }
            if (Game.getCiv(i).diplomacy.nonAggressionPact.containsKey(Integer.valueOf(i2))) {
                Game.getCiv(i).diplomacy.nonAggressionPact.remove(Integer.valueOf(i2));
            }
            if (Game.getCiv(i2).diplomacy.nonAggressionPact.containsKey(Integer.valueOf(i))) {
                Game.getCiv(i2).diplomacy.nonAggressionPact.remove(Integer.valueOf(i));
            }
            if (Game.getCiv(i).diplomacy.guarantee.containsKey(Integer.valueOf(i2))) {
                Game.getCiv(i).diplomacy.guarantee.remove(Integer.valueOf(i2));
            }
            if (Game.getCiv(i2).diplomacy.guarantee.containsKey(Integer.valueOf(i))) {
                Game.getCiv(i2).diplomacy.guarantee.remove(Integer.valueOf(i));
            }
            if (Game.getCiv(i).diplomacy.militaryAccess.containsKey(Integer.valueOf(i2))) {
                Game.getCiv(i).diplomacy.militaryAccess.remove(Integer.valueOf(i2));
            }
            if (Game.getCiv(i2).diplomacy.militaryAccess.containsKey(Integer.valueOf(i))) {
                Game.getCiv(i2).diplomacy.militaryAccess.remove(Integer.valueOf(i));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Game.getCiv(i).addAggressiveExpansion(GameValues.aggressiveExpansion.AE_DECLARE_WAR);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            declareWar_UpdateRelation(i, i2);
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        String strAddWar = WarManager.addWar(i, i2, z3, z2);
        if (strAddWar == null) {
            return false;
        }
        List<Integer> arrayList = new ArrayList<>();
        try {
            arrayList = declareWar_AlliesDefender(i2, i);
            if (arrayList.size() > 0 && strAddWar != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    WarManager.lWars.get(strAddWar).addDefender(arrayList.get(i3).intValue());
                    if (i == Game.player.iCivID) {
                        Game.getCiv(i2).updateArmyImgID();
                        Game.getCiv(arrayList.get(i3).intValue()).updateArmyImgID();
                    } else if (i2 == Game.player.iCivID) {
                        Game.getCiv(i).updateArmyImgID();
                        Game.getCiv(arrayList.get(i3).intValue()).updateArmyImgID();
                    } else if (arrayList.get(i3).intValue() == Game.player.iCivID) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            Game.getCiv(list.get(size).intValue()).updateArmyImgID();
                        }
                        Game.getCiv(i).updateArmyImgID();
                        Game.getCiv(i2).updateArmyImgID();
                        Game.player.addMessage(new PMessageWar(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        Game.menuManager.rebuildInGame_Info(Game.lang.get(str), Game.getCiv(i).getCivName() + " - " + Game.getCiv(Game.player.iCivID).getCivName());
                        InGame_Info.imgID = Images.infoWar;
                        Game.soundsManager.loadNextMusicWar();
                        if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                            Game.addSimpleTask(new AnonymousClass1("updateProvinceBorder"));
                        }
                        Game.addSimpleTask(new AnonymousClass2("rebuildInGame_Wars"));
                    }
                }
                for (int i4 = 0; i4 < list.size(); i4++) {
                    if (list.get(i4).intValue() == Game.player.iCivID) {
                        for (int i5 = 0; i5 < arrayList.size(); i5++) {
                            Game.getCiv(arrayList.get(i5).intValue()).updateArmyImgID();
                        }
                    }
                }
            }
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
        try {
            if (list.size() > 0 && strAddWar != null) {
                for (int i6 = 0; i6 < list.size(); i6++) {
                    if (list.get(i6).intValue() == Game.player.iCivID) {
                        Game.player.addMessage(new PMessageCallToWar(i, strAddWar, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                    } else {
                        WarManager.lWars.get(strAddWar).addAggressor(list.get(i6).intValue());
                        if (i == Game.player.iCivID) {
                            Game.getCiv(i2).updateArmyImgID();
                            Game.getCiv(list.get(i6).intValue()).updateArmyImgID();
                        } else if (i2 == Game.player.iCivID) {
                            Game.getCiv(i).updateArmyImgID();
                            Game.getCiv(list.get(i6).intValue()).updateArmyImgID();
                        } else if (list.get(i6).intValue() == Game.player.iCivID) {
                            Game.getCiv(i).updateArmyImgID();
                            Game.getCiv(i2).updateArmyImgID();
                            if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                                Game.addSimpleTask(new AnonymousClass3("updateProvinceBorder"));
                            }
                            Game.addSimpleTask(new AnonymousClass4("rebuildInGame_Wars"));
                        }
                    }
                }
            }
        } catch (Exception e5) {
            CFG.exceptionStack(e5);
        }
        int armyRegimentSize = Game.getCiv(i).getArmyRegimentSize();
        int armyRegimentSize2 = Game.getCiv(i2).getArmyRegimentSize();
        try {
            for (int size2 = WarManager.lWars.get(strAddWar).lAggressors.size() - 1; size2 > 0; size2--) {
                armyRegimentSize += Game.getCiv(WarManager.lWars.get(strAddWar).lAggressors.get(size2).iCivID).getArmyRegimentSize();
            }
        } catch (Exception e6) {
            CFG.exceptionStack(e6);
        }
        try {
            for (int size3 = WarManager.lWars.get(strAddWar).lDefenders.size() - 1; size3 > 0; size3--) {
                armyRegimentSize2 += Game.getCiv(WarManager.lWars.get(strAddWar).lDefenders.get(size3).iCivID).getArmyRegimentSize();
            }
        } catch (Exception e7) {
            CFG.exceptionStack(e7);
        }
        try {
            if (Game.ideologiesManager.getIdeology(Game.getCiv(WarManager.lWars.get(strAddWar).lAggressors.get(0).iCivID).getIdeologyID()).TRIBAL || !Game.ideologiesManager.getIdeology(Game.getCiv(WarManager.lWars.get(strAddWar).lDefenders.get(0).iCivID).getIdeologyID()).TRIBAL) {
                for (int size4 = WarManager.lWars.get(strAddWar).lDefenders.size() - 1; size4 >= 0; size4--) {
                    Game.getCiv(WarManager.lWars.get(strAddWar).lDefenders.get(size4).iCivID).setWarPlayDefensiveUntilTurnID(Game_Calendar.TURN_ID + Game.aiValuesDiplomacy.AI_WAR_DEFENDERS_PLAY_DEFENSIVE_TURNS_MIN + Game.oR.nextInt(Game.aiValuesDiplomacy.AI_WAR_DEFENDERS_PLAY_DEFENSIVE_TURNS_RANDOM));
                }
            } else {
                for (int size5 = WarManager.lWars.get(strAddWar).lDefenders.size() - 1; size5 >= 0; size5--) {
                    Game.getCiv(WarManager.lWars.get(strAddWar).lDefenders.get(size5).iCivID).setWarPlayDefensiveUntilTurnID(Game_Calendar.TURN_ID + Game.aiValuesDiplomacy.AI_WAR_DEFENDERS_PLAY_DEFENSIVE_TRIBAL_TURNS_MIN + Game.oR.nextInt(Game.aiValuesDiplomacy.AI_WAR_DEFENDERS_PLAY_DEFENSIVE_TRIBAL_TURNS_RANDOM));
                }
            }
        } catch (Exception e8) {
            CFG.exceptionStack(e8);
        }
        try {
            AI_Manager.aiBudget.updateMilitaryLevel_War(i, i2, armyRegimentSize, armyRegimentSize2);
            AI_Manager.aiBudget.updateMilitaryLevel_War(i2, i, armyRegimentSize2, armyRegimentSize);
        } catch (Exception e9) {
            CFG.exceptionStack(e9);
        }
        declareWar_NeighborsRelationChange(i, i2);
        if (i == Game.player.iCivID) {
            Game.getCiv(i2).updateArmyImgID();
            if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                Game.addSimpleTask(new AnonymousClass5("updateProvinceBorder"));
            }
            Game.addSimpleTask(new AnonymousClass6("rebuildInGame_Wars"));
        } else if (i2 == Game.player.iCivID) {
            Game.getCiv(i).updateArmyImgID();
            Game.menuManager.rebuildInGame_Info(Game.lang.get(str), Game.getCiv(i).getCivName() + " - " + Game.getCiv(Game.player.iCivID).getCivName());
            InGame_Info.imgID = Images.infoWar;
            Game.soundsManager.loadNextMusicWar();
            Game.player.addMessage(new PMessageWar(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                Game.addSimpleTask(new AnonymousClass7("updateProvinceBorder"));
            }
            Game.addSimpleTask(new AnonymousClass8("rebuildInGame_Wars"));
        }
        if (Game.getCiv(i).getCapitalProvinceID() >= 0 && Game.getCiv(i2).getCapitalProvinceID() >= 0 && (GameValues.value.DRAW_DIPLOMACY_LINES_WAR_DECLARED || Game.player.iCivID == i || Game.player.iCivID == i2)) {
            ProvinceDraw.addDiplomacyLines(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID(), COLOR_WAR);
        }
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            if (arrayList.get(i7).intValue() == Game.player.iCivID) {
                for (int size6 = list.size() - 1; size6 >= 0; size6--) {
                    Game.getCiv(list.get(size6).intValue()).updateArmyImgID();
                }
                break;
            }
        }
        for (int i8 = 0; i8 < list.size(); i8++) {
            if (list.get(i8).intValue() == Game.player.iCivID) {
                for (int size7 = arrayList.size() - 1; size7 >= 0; size7--) {
                    Game.getCiv(arrayList.get(size7).intValue()).updateArmyImgID();
                }
                return true;
            }
        }
        return true;
    }

    public static final List<Integer> declareWar_AlliesAttacker(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        if (Game.getCiv(i).diplomacy.alliance.size() > 0) {
            for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry : Game.getCiv(i).diplomacy.alliance.entrySet()) {
                if (entry.getValue().iCivID != i && entry.getValue().iCivID != i2 && !arrayList.contains(Integer.valueOf(entry.getValue().iCivID))) {
                    arrayList.add(Integer.valueOf(entry.getValue().iCivID));
                }
            }
        }
        if (Game.ENABLE_CALL_VASSALS) {
            for (int i3 = 0; i3 < Game.getCiv(i).diplomacy.iVassalsSize; i3++) {
                if (Game.getCiv(i).diplomacy.lVassals.get(i3).c != i && Game.getCiv(i).diplomacy.lVassals.get(i3).c != i2 && !arrayList.contains(Integer.valueOf(Game.getCiv(i).diplomacy.lVassals.get(i3).c))) {
                    arrayList.add(Integer.valueOf(Game.getCiv(i).diplomacy.lVassals.get(i3).c));
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Integer) arrayList.get(size)).intValue() < 1 || Game.getCiv(((Integer) arrayList.get(size)).intValue()).getNumOfProvinces() <= 0) {
                arrayList.remove(size);
            } else if (((Integer) arrayList.get(size)).intValue() == i || ((Integer) arrayList.get(size)).intValue() == i2) {
                arrayList.remove(size);
            }
        }
        return arrayList;
    }

    public static final List<Integer> declareWar_AlliesDefender(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        Civilization civ = Game.getCiv(i);
        if (civ.inAllianceSize > 0) {
            for (int i3 = 0; i3 < civ.inAllianceSize; i3++) {
                try {
                    if (!Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).isInAlliance(i2)) {
                        if (Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).typeOfAlliance == 0) {
                            if (GameValues.hre.HRE_EMPEROR_WAR_DEFEND_HRE && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID > 0 && Game.getCiv(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID).getNumOfProvinces() > 0 && !arrayList.contains(Integer.valueOf(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID))) {
                                arrayList.add(Integer.valueOf(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID));
                            }
                            if (GameValues.hre.HRE_ELECTORS_WAR_DEFEND_HRE) {
                                for (int i4 = 0; i4 < Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.size(); i4++) {
                                    if (!arrayList.contains(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i4)) && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i4).intValue() != i) {
                                        arrayList.add(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i4));
                                    }
                                }
                            }
                            if (GameValues.hre.HRE_PRINCES_WAR_DEFEND_HRE) {
                                for (int i5 = 0; i5 < Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.size(); i5++) {
                                    if (!arrayList.contains(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i5)) && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i5).intValue() != i) {
                                        arrayList.add(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i5));
                                    }
                                }
                            }
                        } else if (Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).typeOfAlliance == 1) {
                            for (int i6 = 0; i6 < Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.size(); i6++) {
                                if (!arrayList.contains(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i6)) && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i6).intValue() != i) {
                                    arrayList.add(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).firstTier.get(i6));
                                }
                            }
                            for (int i7 = 0; i7 < Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.size(); i7++) {
                                if (!arrayList.contains(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i7)) && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i7).intValue() != i) {
                                    arrayList.add(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).secondTier.get(i7));
                                }
                            }
                            if (!arrayList.contains(Integer.valueOf(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID)) && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID != i) {
                                arrayList.add(Integer.valueOf(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID));
                            }
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
        if (civ.diplomacy.alliance.size() > 0) {
            for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry : civ.diplomacy.alliance.entrySet()) {
                if (entry.getValue().iCivID != i2 && entry.getValue().iCivID != i && !arrayList.contains(Integer.valueOf(entry.getValue().iCivID))) {
                    arrayList.add(Integer.valueOf(entry.getValue().iCivID));
                }
            }
        }
        if (civ.diplomacy.defensivePact.size() > 0) {
            for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry2 : civ.diplomacy.defensivePact.entrySet()) {
                if (entry2.getValue().iCivID != i2 && entry2.getValue().iCivID != i && !arrayList.contains(Integer.valueOf(entry2.getValue().iCivID))) {
                    arrayList.add(Integer.valueOf(entry2.getValue().iCivID));
                }
            }
        }
        if (civ.diplomacy.guaranteeByCivID.size() > 0) {
            for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry3 : civ.diplomacy.guaranteeByCivID.entrySet()) {
                if (entry3.getValue().iCivID != i2 && entry3.getValue().iCivID != i && !arrayList.contains(Integer.valueOf(entry3.getValue().iCivID))) {
                    arrayList.add(Integer.valueOf(entry3.getValue().iCivID));
                }
            }
        }
        if (Game.ENABLE_CALL_VASSALS) {
            for (int i8 = 0; i8 < civ.diplomacy.iVassalsSize; i8++) {
                if (civ.diplomacy.lVassals.get(i8).c != i2 && civ.diplomacy.lVassals.get(i8).c != i && !arrayList.contains(Integer.valueOf(civ.diplomacy.lVassals.get(i8).c))) {
                    arrayList.add(Integer.valueOf(civ.diplomacy.lVassals.get(i8).c));
                }
            }
        }
        if (GameValues.vassal.LORD_AUTO_JOIN_VASSALS_DEFENSIVE_WAR && civ.getPuppetOfCivID() != i && Game.getCiv(i2).getPuppetOfCivID() != civ.getPuppetOfCivID() && !arrayList.contains(Integer.valueOf(civ.getPuppetOfCivID()))) {
            arrayList.add(Integer.valueOf(civ.getPuppetOfCivID()));
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Integer) arrayList.get(size)).intValue() < 1 || Game.getCiv(((Integer) arrayList.get(size)).intValue()).getNumOfProvinces() <= 0) {
                arrayList.remove(size);
            } else if (((Integer) arrayList.get(size)).intValue() == i2 || ((Integer) arrayList.get(size)).intValue() == i) {
                arrayList.remove(size);
            }
        }
        return arrayList;
    }

    public static final void declareWar_NeighborsRelationChange(int i, int i2) {
        try {
            Civilization civ = Game.getCiv(i);
            int capitalProvinceID = civ.getCapitalProvinceID() >= 0 ? civ.getCapitalProvinceID() : civ.getNumOfProvinces() > 0 ? civ.getProvinceID(0) : -1;
            if (capitalProvinceID < 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < civ.civNeighbors.civsSize; i3++) {
                if (!arrayList.contains(Integer.valueOf(civ.civNeighbors.civs.get(i3).civID)) && civ.civNeighbors.civs.get(i3).civID != i && civ.civNeighbors.civs.get(i3).civID != i2) {
                    arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i3).civID));
                }
                for (int i4 = 0; i4 < Game.getCiv(civ.civNeighbors.civs.get(i3).civID).civNeighbors.civsSize; i4++) {
                    if (!arrayList.contains(Integer.valueOf(Game.getCiv(civ.civNeighbors.civs.get(i3).civID).civNeighbors.civs.get(i4).civID)) && Game.getCiv(civ.civNeighbors.civs.get(i3).civID).civNeighbors.civs.get(i4).civID != i && Game.getCiv(civ.civNeighbors.civs.get(i3).civID).civNeighbors.civs.get(i4).civID != i2) {
                        arrayList.add(Integer.valueOf(Game.getCiv(civ.civNeighbors.civs.get(i3).civID).civNeighbors.civs.get(i4).civID));
                    }
                }
            }
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                float distance_PercOfMax = GameValues.aggressiveExpansion.DECLARE_WAR_RELATION_CHANGE_WITH_NEIGHBORS * (1.0f - Game.getDistance_PercOfMax(capitalProvinceID, Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCapitalProvinceID()));
                Game.getCiv(i).diplomacy.updateRelation(i, ((Integer) arrayList.get(i5)).intValue(), distance_PercOfMax);
                Game.getCiv(((Integer) arrayList.get(i5)).intValue()).diplomacy.updateRelation(((Integer) arrayList.get(i5)).intValue(), i, distance_PercOfMax);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void declareWar_UpdateRelation(int i, int i2) {
        if (i == i2) {
            return;
        }
        try {
            Game.getCiv(i).diplomacy.removeImproveRelations(i2);
            Game.getCiv(i2).diplomacy.removeImproveRelations(i);
        } catch (Exception unused) {
        }
        Game.getCiv(i).diplomacy.setRelation_War(i2, getRelationAtWar());
        Game.getCiv(i2).diplomacy.setRelation_War(i, getRelationAtWar());
        if (Game.getCiv(i).getPuppetOfCivID() == i2) {
            Game.getCiv(i).setPuppetOfCivID(i);
        }
        if (Game.getCiv(i2).getPuppetOfCivID() == i) {
            Game.getCiv(i2).setPuppetOfCivID(i2);
        }
        if (Game.getCiv(i).diplomacy.haveAlliance(i2)) {
            Game.getCiv(i).diplomacy.removeAlliance(i2);
            Game.getCiv(i2).diplomacy.removeAlliance(i);
        }
        if (Game.getCiv(i2).diplomacy.haveAlliance(i)) {
            Game.getCiv(i2).diplomacy.removeAlliance(i);
            Game.getCiv(i).diplomacy.removeAlliance(i2);
        }
    }

    public static final void declareWar_UpdateRelation_Peace(int i, int i2, String str) {
        int iNextInt;
        Game.getCiv(i).diplomacy.removeImproveRelations(i2);
        Game.getCiv(i2).diplomacy.removeImproveRelations(i);
        if (GameValues.peace.PEACE_RELATION_RANDOM * 100 != 0) {
            try {
                iNextInt = (int) ((-GameValues.peace.PEACE_RELATION_RANDOM) + (Game.oR.nextInt(Math.abs((GameValues.peace.PEACE_RELATION_RANDOM * 2) * 100)) / 100.0f));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                iNextInt = 0;
            }
        } else {
            iNextInt = 0;
        }
        float f = iNextInt;
        Game.getCiv(i).diplomacy.setRelation_Peace(i2, GameValues.peace.PEACE_RELATION + f, str);
        Game.getCiv(i2).diplomacy.setRelation_Peace(i, GameValues.peace.PEACE_RELATION + f, str);
    }

    public static final void declineAllianceOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceProposalWasRejected"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
    }

    public static final void declineDefensivePactOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("ProposalWasRejected"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
    }

    public static final void declineNonAggressionOffer(int i, int i2) {
        if (i == Game.player.iCivID || i2 == Game.player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("ProposalWasRejected"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
    }

    public static final boolean demandMilitaryAccess(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_DEMAND_MILITARY_ACCESS_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_DEMAND_MILITARY_ACCESS_COST;
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageDemandMilitaryAccess(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            return true;
        }
        if (Game.getCiv(i).diplomacy.getRelation(i2) >= Game.aiValuesDiplomacy.AI_MILITARY_ACCESS_DECLINE_IF_RELATIONS_BELOW + (Game.getCiv(i2).diplomacy.isRival(i) ? Game.aiValuesDiplomacy.AI_MILITARY_ACCESS_DECLINE_IF_RELATIONS_BELOW_EXTRA_RIVAL : 0) + (Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID() ? Game.aiValuesDiplomacy.AI_MILITARY_ACCESS_DECLINE_IF_RELATIONS_BELOW_EXTRA_DIFFERENT_RELIGION : 0) + (Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID() ? Game.aiValuesDiplomacy.AI_MILITARY_ACCESS_DECLINE_IF_RELATIONS_BELOW_EXTRA_DIFFERENT_GOVERNMENT : 0)) {
            acceptDemandMilitaryAccess(i, i2);
            return true;
        }
        if (i == Game.player.iCivID) {
            Game.player.addMessage(new PMessageMilitaryAccessRefused(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
        }
        return false;
    }

    public static final int getAlliance_Score(int i, int i2) {
        float f;
        if (!getCanJoinNewAlliance(i) || !getCanJoinNewAlliance(i2)) {
            return GameValues.diplomacy.ALLIANCE_SCORE_MAX_NUM_OF_ALLIANCES;
        }
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return (int) GameValues.diplomacy.ALLIANCE_SCORE_AT_WAR;
        }
        float f2 = 0.0f;
        float alliance_Score_BASE_VALUE = getAlliance_Score_BASE_VALUE(i, i2) + (Game.getCiv(i2).diplomacy.getRelation(i) * GameValues.diplomacy.ALLIANCE_SCORE_PER_RELATION) + (GameValues.diplomacy.ALLIANCE_SCORE_DISTANCE * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + (Game.getCiv(i2).diplomacy.isRival(i) ? GameValues.diplomacy.ALLIANCE_SCORE_RIVALS : 0.0f) + (Game.getCiv(i).diplomacy.isRival(i2) ? GameValues.diplomacy.ALLIANCE_SCORE_RIVALS : 0.0f) + getAlliance_Score_SameRivals(i, i2) + (Game.getCiv(i2).getPuppetOfCivID() == i ? GameValues.diplomacy.ALLIANCE_SCORE_FOR_VASSAL_OF_CIV : 0.0f) + (Game.getCiv(i).getAggressiveExpansion() * GameValues.diplomacy.ALLIANCE_SCORE_PER_AGGRESSIVE_EXPANSION);
        if (Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID()) {
            f = Game.religionManager.getReligion(Game.getCiv(i).getReligionID()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(i2).getReligionID()).ReligionGroupID ? GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION_GROUP : GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION;
        } else {
            f = 0.0f;
        }
        float f3 = alliance_Score_BASE_VALUE + f;
        if (Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID()) {
            f2 = Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).GOV_GROUP_ID != Game.ideologiesManager.getIdeology(Game.getCiv(i2).getIdeologyID()).GOV_GROUP_ID ? GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT_GROUP : GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT;
        }
        return (int) (f3 + f2);
    }

    public static final float getAlliance_Score_BASE_VALUE(int i, int i2) {
        return GameValues.diplomacy.ALLIANCE_SCORE_BASE_VALUE * Math.max(GameValues.diplomacy.ALLIANCE_SCORE_BASE_RANK_SCORE_MIN, Math.min(GameValues.diplomacy.ALLIANCE_SCORE_BASE_RANK_SCORE_MAX, Game.getCiv(i2).iCivRankScore / Game.getCiv(i).iCivRankScore));
    }

    public static final float getAlliance_Score_SameRivals(int i, int i2) {
        float f = 0.0f;
        if (Game.getCiv(i).diplomacy.rivals.size() > 0) {
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(i).diplomacy.rivals.entrySet().iterator();
            while (it.hasNext()) {
                if (Game.getCiv(i2).diplomacy.isRival(it.next().getValue().iCivID)) {
                    f += GameValues.diplomacy.ALLIANCE_SCORE_PER_SAME_RIVAL;
                }
            }
        }
        return f;
    }

    public static boolean getCanJoinNewAlliance(int i) {
        return getMaxNumberOfAlliances(i) > Game.getCiv(i).diplomacy.alliance.size();
    }

    public static final int getDefensivePact_Score(int i, int i2) {
        float f;
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return (int) GameValues.diplomacy.DEFENSIVE_PACT_SCORE_AT_WAR;
        }
        float f2 = 0.0f;
        float defensivePact_Score_BASE_VALUE = getDefensivePact_Score_BASE_VALUE(i, i2) + (Game.getCiv(i2).diplomacy.getRelation(i) * GameValues.diplomacy.DEFENSIVE_PACT_SCORE_PER_RELATION) + (GameValues.diplomacy.DEFENSIVE_PACT_SCORE_DISTANCE * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + (Game.getCiv(i2).diplomacy.isRival(i) ? GameValues.diplomacy.DEFENSIVE_PACT_SCORE_RIVALS : 0.0f) + (Game.getCiv(i).diplomacy.isRival(i2) ? GameValues.diplomacy.DEFENSIVE_PACT_SCORE_RIVALS : 0.0f) + getDefensivePact_Score_SameRivals(i, i2) + (Game.getCiv(i).getAggressiveExpansion() * GameValues.diplomacy.DEFENSIVE_PACT_SCORE_PER_AGGRESSIVE_EXPANSION) + ((Game.getCiv(i).diplomacy.defensivePact.size() + Game.getCiv(i2).diplomacy.defensivePact.size()) * GameValues.diplomacy.DEFENSIVE_PACT_SCORE_PER_DEFENSIVE_PACT);
        if (Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID()) {
            f = Game.religionManager.getReligion(Game.getCiv(i).getReligionID()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(i2).getReligionID()).ReligionGroupID ? GameValues.diplomacy.DEFENSIVE_PACT_SCORE_DIFFERENT_RELIGION_GROUP : GameValues.diplomacy.DEFENSIVE_PACT_SCORE_DIFFERENT_RELIGION;
        } else {
            f = 0.0f;
        }
        float f3 = defensivePact_Score_BASE_VALUE + f;
        if (Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID()) {
            f2 = Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).GOV_GROUP_ID != Game.ideologiesManager.getIdeology(Game.getCiv(i2).getIdeologyID()).GOV_GROUP_ID ? GameValues.diplomacy.DEFENSIVE_PACT_SCORE_DIFFERENT_GOVERNMENT_GROUP : GameValues.diplomacy.DEFENSIVE_PACT_SCORE_DIFFERENT_GOVERNMENT;
        }
        return (int) (f3 + f2);
    }

    public static final float getDefensivePact_Score_BASE_VALUE(int i, int i2) {
        return GameValues.diplomacy.DEFENSIVE_PACT_SCORE_BASE_VALUE * Math.max(GameValues.diplomacy.DEFENSIVE_PACT_SCORE_BASE_RANK_SCORE_MIN, Math.min(GameValues.diplomacy.DEFENSIVE_PACT_SCORE_BASE_RANK_SCORE_MAX, Game.getCiv(i2).iCivRankScore / Game.getCiv(i).iCivRankScore));
    }

    public static final float getDefensivePact_Score_SameRivals(int i, int i2) {
        float f = 0.0f;
        if (Game.getCiv(i).diplomacy.rivals.size() > 0) {
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(i).diplomacy.rivals.entrySet().iterator();
            while (it.hasNext()) {
                if (Game.getCiv(i2).diplomacy.isRival(it.next().getValue().iCivID)) {
                    f += GameValues.diplomacy.DEFENSIVE_PACT_SCORE_PER_SAME_RIVAL;
                }
            }
        }
        return f;
    }

    public static final String getInsult() {
        int iNextInt = Game.oR.nextInt(5);
        if (iNextInt == 0) {
            return Game.lang.get("WeWillClaimBothYourLivesAndYourFreedom");
        }
        if (iNextInt == 1) {
            return Game.lang.get("YourCivilizationWillCrumbleAndWeShallDanceUponTheRuinsOfYourFormerGreatness");
        }
        if (iNextInt != 2) {
            return iNextInt != 3 ? Game.lang.get("YourStandingWillBeReducedToRuinsAndWeShallRevelInYourDownfall") : Game.lang.get("PrepareForTheDemiseOfYourSovereigntyForWeWillSeizeIt");
        }
        return Game.lang.get("WellSnatchAwayYourMightLeavingYourCivilizationInTheShadowsOfItsFormerSelf");
    }

    public static final String getInsult(int i) {
        int i2 = i % 5;
        if (i2 == 0) {
            return Game.lang.get("WeWillClaimBothYourLivesAndYourFreedom");
        }
        if (i2 == 1) {
            return Game.lang.get("YourCivilizationWillCrumbleAndWeShallDanceUponTheRuinsOfYourFormerGreatness");
        }
        if (i2 != 2) {
            return i2 != 3 ? Game.lang.get("YourStandingWillBeReducedToRuinsAndWeShallRevelInYourDownfall") : Game.lang.get("PrepareForTheDemiseOfYourSovereigntyForWeWillSeizeIt");
        }
        return Game.lang.get("WellSnatchAwayYourMightLeavingYourCivilizationInTheShadowsOfItsFormerSelf");
    }

    public static int getMaxNumberOfAlliances(int i) {
        return GameValues.diplomacy.BASE_MAX_NUM_OF_ALLIANCES + Game.getCiv(i).civBonuses.MaxNumOfAlliances;
    }

    public static final int getNonAggression_Score(int i, int i2) {
        float f;
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return (int) GameValues.diplomacy.NON_AGGRESSION_SCORE_AT_WAR;
        }
        float f2 = 0.0f;
        float defensivePact_Score_BASE_VALUE = getDefensivePact_Score_BASE_VALUE(i, i2) + (Game.getCiv(i2).diplomacy.getRelation(i) * GameValues.diplomacy.NON_AGGRESSION_SCORE_PER_RELATION) + (GameValues.diplomacy.NON_AGGRESSION_SCORE_DISTANCE * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + (Game.getCiv(i2).diplomacy.isRival(i) ? GameValues.diplomacy.NON_AGGRESSION_SCORE_RIVALS : 0.0f) + (Game.getCiv(i).diplomacy.isRival(i2) ? GameValues.diplomacy.NON_AGGRESSION_SCORE_RIVALS : 0.0f) + ((Game.getCiv(i).diplomacy.nonAggressionPact.size() + Game.getCiv(i2).diplomacy.nonAggressionPact.size()) * GameValues.diplomacy.NON_AGGRESSION_SCORE_PER_NON_AGGRESSION_PACTS) + getNonAggression_Score_SameRivals(i, i2);
        if (Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID()) {
            f = Game.religionManager.getReligion(Game.getCiv(i).getReligionID()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(i2).getReligionID()).ReligionGroupID ? GameValues.diplomacy.NON_AGGRESSION_SCORE_DIFFERENT_RELIGION_GROUP : GameValues.diplomacy.NON_AGGRESSION_SCORE_DIFFERENT_RELIGION;
        } else {
            f = 0.0f;
        }
        float f3 = defensivePact_Score_BASE_VALUE + f;
        if (Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID()) {
            f2 = Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).GOV_GROUP_ID != Game.ideologiesManager.getIdeology(Game.getCiv(i2).getIdeologyID()).GOV_GROUP_ID ? GameValues.diplomacy.NON_AGGRESSION_SCORE_DIFFERENT_GOVERNMENT_GROUP : GameValues.diplomacy.NON_AGGRESSION_SCORE_DIFFERENT_GOVERNMENT;
        }
        return (int) (f3 + f2);
    }

    public static final float getNonAggression_Score_BASE_VALUE(int i, int i2) {
        return GameValues.diplomacy.NON_AGGRESSION_SCORE_BASE_VALUE * Math.max(GameValues.diplomacy.NON_AGGRESSION_SCORE_BASE_RANK_SCORE_MIN, Math.min(GameValues.diplomacy.NON_AGGRESSION_SCORE_BASE_RANK_SCORE_MAX, Game.getCiv(i2).iCivRankScore / Game.getCiv(i).iCivRankScore));
    }

    public static final float getNonAggression_Score_SameRivals(int i, int i2) {
        float f = 0.0f;
        if (Game.getCiv(i).diplomacy.rivals.size() > 0) {
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(i).diplomacy.rivals.entrySet().iterator();
            while (it.hasNext()) {
                if (Game.getCiv(i2).diplomacy.isRival(it.next().getValue().iCivID)) {
                    f += GameValues.diplomacy.NON_AGGRESSION_SCORE_PER_SAME_RIVAL;
                }
            }
        }
        return f;
    }

    public static Color getOpinion_Color(int i) {
        if (i < -15) {
            return COLOR_RED;
        }
        return i < 15 ? COLOR_NEUTRAL : COLOR_GREEN;
    }

    public static String getOpinion_String(int i) {
        float f = i;
        if (f <= getRelationAtWar()) {
            return Game.lang.get("AtWar");
        }
        if (f < GameValues.diplomacy.DIPLOMACY_RELATION_UNFAVORABLE) {
            return Game.lang.get("Unfavorable");
        }
        if (f < GameValues.diplomacy.DIPLOMACY_RELATION_STRAINED) {
            return Game.lang.get("Strained");
        }
        if (f < GameValues.diplomacy.DIPLOMACY_RELATION_DETACHED) {
            return Game.lang.get("Detached");
        }
        if (f < GameValues.diplomacy.DIPLOMACY_RELATION_NEUTRAL) {
            return Game.lang.get("Neutral");
        }
        if (f < GameValues.diplomacy.DIPLOMACY_RELATION_WARM) {
            return Game.lang.get("Warm");
        }
        return f < GameValues.diplomacy.DIPLOMACY_RELATION_COOPERATIVE ? Game.lang.get("Cooperative") : Game.lang.get("Supportive");
    }

    public static float getRelationAtWar() {
        return GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN - GameValues.diplomacy.DIPLOMACY_RELATIONS_WAR_EXTRA;
    }

    public static final float getRelationDamage(int i, int i2) {
        return GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_VALUE;
    }

    public static final float getRelationImprove(int i, int i2) {
        return (GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_VALUE + (GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_VALUE_PRESTIGE * Math.min(1.0f, Game.getCiv(i).iCivRankScore / Game.getCiv(i2).iCivRankScore))) * ((Game.getCiv(i).civBonuses.ImproveRelationsModifier / 100.0f) + 1.0f);
    }

    public static final int getUnion_Score(int i, int i2) {
        float f;
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return (int) GameValues.diplomacy.ALLIANCE_SCORE_AT_WAR;
        }
        float f2 = 0.0f;
        float alliance_Score_BASE_VALUE = getAlliance_Score_BASE_VALUE(i, i2) + (Game.getCiv(i2).diplomacy.getRelation(i) * GameValues.diplomacy.ALLIANCE_SCORE_PER_RELATION) + (GameValues.diplomacy.ALLIANCE_SCORE_DISTANCE * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + (Game.getCiv(i2).diplomacy.isRival(i) ? GameValues.diplomacy.ALLIANCE_SCORE_RIVALS : 0.0f) + (Game.getCiv(i).diplomacy.isRival(i2) ? GameValues.diplomacy.ALLIANCE_SCORE_RIVALS : 0.0f) + getAlliance_Score_SameRivals(i, i2) + (Game.getCiv(i2).getPuppetOfCivID() == i ? GameValues.diplomacy.ALLIANCE_SCORE_FOR_VASSAL_OF_CIV : 0.0f) + (Game.getCiv(i).getAggressiveExpansion() * GameValues.diplomacy.ALLIANCE_SCORE_PER_AGGRESSIVE_EXPANSION);
        if (Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID()) {
            f = Game.religionManager.getReligion(Game.getCiv(i).getReligionID()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(i2).getReligionID()).ReligionGroupID ? GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION_GROUP : GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION;
        } else {
            f = 0.0f;
        }
        float f3 = alliance_Score_BASE_VALUE + f;
        if (Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID()) {
            f2 = Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).GOV_GROUP_ID != Game.ideologiesManager.getIdeology(Game.getCiv(i2).getIdeologyID()).GOV_GROUP_ID ? GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT_GROUP : GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT;
        }
        return (int) (f3 + f2);
    }

    public static final String getWarMessage() {
        int iNextInt = Game.oR.nextInt(7);
        if (iNextInt == 0) {
            return Game.lang.get("WitnessTheMightOfMyForcesAsWeDeclareWarUponYouForYourWeaknessCannotWithstandOurStrength");
        }
        if (iNextInt == 1) {
            return Game.lang.get("BraceYourselfForIDeclareWarUponYouToAssertMyRightfulAuthorityOverYourTerritories");
        }
        if (iNextInt == 2) {
            return Game.lang.get("ThisWarIsTheDestinyYouCannotEscapeAsWeRiseToCrushYourFeebleResistance");
        }
        if (iNextInt == 3) {
            return Game.lang.get("YourLandsWillBeReshapedUnderOurBannerAsWarIsDeclaredToSecureOurRightfulDominion");
        }
        if (iNextInt != 4) {
            return iNextInt != 5 ? Game.lang.get("TheBannersOfWarUnfurlMarkingTheBeginningOfTheEndForYourInsignificantCivilization") : Game.lang.get("TheDrumsOfWarBeatLoudlyAnnouncingTheBeginningOfYourDemiseUnderOurRule");
        }
        return Game.lang.get("PrepareForTheMarchOfOurArmiesAsWeDeclareWarToAssertOurDominanceOverYourLands");
    }

    public static final String getWarMessage(int i) {
        int i2 = i % 7;
        if (i2 == 0) {
            return Game.lang.get("WitnessTheMightOfMyForcesAsWeDeclareWarUponYouForYourWeaknessCannotWithstandOurStrength");
        }
        if (i2 == 1) {
            return Game.lang.get("BraceYourselfForIDeclareWarUponYouToAssertMyRightfulAuthorityOverYourTerritories");
        }
        if (i2 == 2) {
            return Game.lang.get("ThisWarIsTheDestinyYouCannotEscapeAsWeRiseToCrushYourFeebleResistance");
        }
        if (i2 == 3) {
            return Game.lang.get("YourLandsWillBeReshapedUnderOurBannerAsWarIsDeclaredToSecureOurRightfulDominion");
        }
        if (i2 != 4) {
            return i2 != 5 ? Game.lang.get("TheBannersOfWarUnfurlMarkingTheBeginningOfTheEndForYourInsignificantCivilization") : Game.lang.get("TheDrumsOfWarBeatLoudlyAnnouncingTheBeginningOfYourDemiseUnderOurRule");
        }
        return Game.lang.get("PrepareForTheMarchOfOurArmiesAsWeDeclareWarToAssertOurDominanceOverYourLands");
    }

    public static final boolean giftGold(int i, int i2, int i3) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_GIFT_COST) {
            return false;
        }
        float f = i3;
        float f2 = GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK * f;
        if (Game.getCiv(i).fGold < f2) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_GIFT_COST;
        Game.getCiv(i).fGold -= f2;
        Game.getCiv(i2).fGold += f2;
        if (!isAtWar(i, i2)) {
            Game.getCiv(i).diplomacy.setRelation(i, i2, Game.getCiv(i).diplomacy.getRelation(i2) + (GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK * f));
            Game.getCiv(i2).diplomacy.setRelation(i2, i, Game.getCiv(i2).diplomacy.getRelation(i) + (f * GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK));
        }
        if (i2 != Game.player.iCivID) {
            return true;
        }
        Game.player.addMessage(new PMessageGift(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS, (int) f2));
        return true;
    }

    public static final boolean isAlly(int i, int i2) {
        if (i == i2) {
            return true;
        }
        if (Game.getCiv(i).diplomacy.alliance.size() > 0) {
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(i).diplomacy.alliance.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().iCivID == i2) {
                    return true;
                }
            }
        }
        for (int i3 = 0; i3 < Game.getCiv(i).diplomacy.iVassalsSize; i3++) {
            if (Game.getCiv(i).diplomacy.lVassals.get(i3).c == i2) {
                return true;
            }
        }
        return Game.getCiv(i).getPuppetOfCivID() == i2;
    }

    public static final boolean isAlly_AllianceCheck(int i, int i2) {
        if (Game.getCiv(i).diplomacy.alliance.size() <= 0) {
            return false;
        }
        Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(i).diplomacy.alliance.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().iCivID == i2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAtWar(int i, int i2) {
        return Game.getCiv(i).diplomacy.getRelation(i2) <= getRelationAtWar() || (i < 0 && i2 >= 0) || (i >= 0 && i2 < 0);
    }

    public static final boolean offerAlliance(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST;
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageAlliance(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            return true;
        }
        if (getAlliance_Score(i, i2) >= 0) {
            acceptAllianceOffer(i, i2);
        } else {
            declineAllianceOffer(i, i2);
        }
        return true;
    }

    public static final boolean offerDefensivePact(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_DEFENSIVE_PACT_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_DEFENSIVE_PACT_COST;
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageDefensivePact(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            return true;
        }
        if (getDefensivePact_Score(i, i2) >= 0) {
            acceptDefensivePactOffer(i, i2);
        } else {
            declineDefensivePactOffer(i, i2);
        }
        return true;
    }

    public static final boolean offerGuarantee(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_GUARANTEE_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_GUARANTEE_COST;
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageGuarantee(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            return true;
        }
        acceptGuaranteeOffer(i, i2);
        return true;
    }

    public static final boolean offerMilitaryAccess(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_OFFER_MILITARY_ACCESS_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_OFFER_MILITARY_ACCESS_COST;
        int i3 = Game.player.iCivID;
        acceptOfferMilitaryAccess(i, i2);
        return true;
    }

    public static final boolean offerNonAggressionPact(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_NON_AGGRESSION_PACT_COST || isAtWar(i, i2)) {
            return false;
        }
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_NON_AGGRESSION_PACT_COST;
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageNonAggressionPact(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            return true;
        }
        if (getNonAggression_Score(i, i2) >= 0) {
            acceptNonAggressionOffer(i, i2);
        } else {
            declineNonAggressionOffer(i, i2);
        }
        return true;
    }

    public static final void removeAlliance(int i, int i2) {
        Game.getCiv(i).diplomacy.removeAlliance(i2);
        Game.getCiv(i2).diplomacy.removeAlliance(i);
        if (i == Game.player.iCivID) {
            Game.getCiv(i2).updateArmyImgID();
            Game.player.fog.updateFogOfWar_Civ(i2);
        } else if (i2 == Game.player.iCivID) {
            Game.getCiv(i).updateArmyImgID();
            Game.player.fog.updateFogOfWar_Civ(i);
        }
    }

    public static final void removeDefensivePact(int i, int i2) {
        Game.getCiv(i).diplomacy.removeDefensivePact(i2);
        Game.getCiv(i2).diplomacy.removeDefensivePact(i);
    }

    public static final void removeGuarantee(int i, int i2) {
        Game.getCiv(i).diplomacy.removeGuarantee(i2);
        Game.getCiv(i2).diplomacy.removeGuaranteeByCivID(i);
    }

    public static final void removeMilitaryAccess(int i, int i2) {
        Game.getCiv(i).diplomacy.removeMilitaryAccess(i2);
    }

    public static final void removeNonAggressionPact(int i, int i2) {
        Game.getCiv(i).diplomacy.removeNonAggressionPact(i2);
        Game.getCiv(i2).diplomacy.removeNonAggressionPact(i);
    }

    public static final void removeTruce(int i, int i2) {
        Game.getCiv(i).diplomacy.removeTruce(i2);
        Game.getCiv(i2).diplomacy.removeTruce(i);
    }

    public static final void removeVassal(int i) {
        if (Game.getCiv(i).getPuppetOfCivID() != i) {
            int puppetOfCivID = Game.getCiv(i).getPuppetOfCivID();
            Game.getCiv(i).setPuppetOfCivID(i);
            if (i == Game.player.iCivID) {
                Game.getCiv(puppetOfCivID).updateArmyImgID();
                Game.player.fog.updateFogOfWar_Civ(puppetOfCivID);
            } else if (puppetOfCivID == Game.player.iCivID) {
                Game.getCiv(i).updateArmyImgID();
                Game.player.fog.updateFogOfWar_Civ(i);
            }
        }
    }

    public static boolean respondToUnion(int i, int i2) {
        if (!isAtWar(i, i2) && Game.player.playerStats4.unionTags.size() <= GameValues.diplomacy.MAX_UNIONS && Game.getCiv(i2).diplomacy.getRelation(i) >= 0.0f) {
            return i == Game.getCiv(i2).getPuppetOfCivID() || getUnion_Score(i, i2) >= 0;
        }
        return false;
    }

    public static final boolean sendInsult(int i, int i2) {
        if (Game.getCiv(i).fLegacy < (-GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_COST_LEGACY) || Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_SEND_INSULT_COST || isAtWar(i, i2)) {
            return false;
        }
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageInsult(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
        }
        Game.getCiv(i).diplomacy.updateRelation(i, i2, GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_DAMAGE);
        Game.getCiv(i2).diplomacy.updateRelation(i2, i, GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_DAMAGE);
        Game.getCiv(i).addLegacy(GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_COST_LEGACY);
        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_SEND_INSULT_COST;
        return true;
    }

    public static final int sendSpyCost(int i, int i2) {
        return (int) ((GameValues.spy.SEND_SPY_COST + (Game.getCiv(i2).getNumOfProvinces() * GameValues.spy.SEND_SPY_COST_PER_PROVINCE)) * ((Game.getCiv(i).diplomacy.isRival(i2) ? -GameValues.spy.SEND_SPY_TO_RIVAL_COST_REDUCTION : 0.0f) + 1.0f + (Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID()) * GameValues.spy.SEND_SPY_DISTANCE_COST_MODIFIER)));
    }

    public static final int sendSpyTime(int i, int i2) {
        return (int) ((GameValues.spy.SEND_SPY_TIME + (Game.getCiv(i2).getNumOfProvinces() * GameValues.spy.SEND_SPY_TIME_PER_PROVINCE)) * ((Game.getCiv(i).diplomacy.isRival(i2) ? -GameValues.spy.SEND_SPY_TO_RIVAL_TIME_REDUCTION : 0.0f) + 1.0f + (Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID()) * GameValues.spy.SEND_SPY_DISTANCE_TIME_MODIFIER)));
    }

    public static final boolean startEspionageMission(int i) {
        if (Game.getCiv(Game.player.iCivID).fGold < sendSpyCost(Game.player.iCivID, i) || Game.player.playerData.espionage.espionageMission_IsAdded(i)) {
            return false;
        }
        Game.getCiv(Game.player.iCivID).fGold -= sendSpyCost(Game.player.iCivID, i);
        Game.player.playerData.espionage.addEspionageMission(i);
        return true;
    }

    public static final boolean surrenderWar(String str, int i) {
        try {
            if (WarManager.lWars.containsKey(str) && (WarManager.lWars.get(str).lAggressors.get(0).iCivID == i || WarManager.lWars.get(str).lDefenders.get(0).iCivID == i)) {
                WarManager.lWars.get(str).warScore = (WarManager.lWars.get(str).isAggressor(i) ? -1 : 1) * GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE * 2.0f;
                AI_PeaceTreaty.peaceTreaty(str, (WarManager.lWars.get(str).isDefender(i) ? WarManager.lWars.get(str).lAggressors.get(0) : WarManager.lWars.get(str).lDefenders.get(0)).iCivID, i);
            }
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static final void updateAfterRemoveCiv(int i) {
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            try {
                Game.getCiv(i2).diplomacy.updateRelationsAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateTruceAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateDefensivePactAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateNonAggressionPactAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateGuaranteeAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateGuaranteeByCivIDAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateAllianceAfterRemoveCiv(i);
                Game.getCiv(i2).diplomacy.updateMilitaryAccessAfterRemoveCiv(i);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static final void updateAnimationTime() {
        lTime = CFG.currentTimeMillis;
        inAnimation = true;
    }

    public static final void updateInAnimation() {
        if (lTime + 500 < CFG.currentTimeMillis) {
            inAnimation = false;
        } else {
            inAnimation = true;
            fAnimationPerc = Math.min(1.0f, (CFG.currentTimeMillis - lTime) / 500.0f);
        }
    }

    public static final boolean whitePeace(String str) {
        try {
            if (!WarManager.lWars.containsKey(str)) {
                return true;
            }
            WarManager.lWars.get(str).peaceTreaty();
            WarManager.lWars.remove(str);
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static boolean willJoinWar(int i, int i2) {
        return Game.getCiv(i).getPuppetOfCivID() == i2;
    }
}
