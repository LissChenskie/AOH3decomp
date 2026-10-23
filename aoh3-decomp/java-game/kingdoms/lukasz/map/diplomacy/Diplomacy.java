package aoc.kingdoms.lukasz.map.diplomacy;

import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Rivals;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageAllianceExpired;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageDamagingRelations;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageDefensivePactExpired;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGuaranteeExpired_OurInd;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGuaranteeExpired_We;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageImprovingRelations;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageMilitaryAccessExpired;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageNonAggressionPactExpired;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageRivalryExpired;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageRivals;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageTruceExpired;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.RivalsManager;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Diplomacy {
    public ConcurrentHashMap<Integer, Float> relation = new ConcurrentHashMap<>();
    public List<String> lWars = new ArrayList();
    public int iWarsSize = 0;
    public List<Integer> atWar = new ArrayList();
    public int iAtWarSize = 0;
    public ConcurrentHashMap<Integer, DiplomacyData> truce = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> rivals = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> alliance = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> nonAggressionPact = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> defensivePact = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> guarantee = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> guaranteeByCivID = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, DiplomacyData> militaryAccess = new ConcurrentHashMap<>();
    public List<Vassal> lVassals = new ArrayList();
    public int iVassalsSize = 0;
    public List<Diplomacy_RelationsAction> improvingRelations = new ArrayList();
    public int iImprovingRelationsSize = 0;
    public List<Diplomacy_RelationsAction> damagingRelations = new ArrayList();
    public int iDamagingRelationsSize = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.diplomacy.Diplomacy$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            AI_Rivals.chooseRivals(this.id);
        }
    }

    public class DiplomacyData {
        public int iCivID;
        public int iTurnID;

        public DiplomacyData(int i, int i2) {
            this.iCivID = i;
            this.iTurnID = i2;
        }
    }

    public final void addAlliance(int i, int i2) {
        if (this.alliance.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.alliance.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addAtWar(int i) {
        for (int i2 = this.iAtWarSize - 1; i2 >= 0; i2--) {
            if (this.atWar.get(i2).intValue() == i) {
                return;
            }
        }
        this.atWar.add(Integer.valueOf(i));
        this.iAtWarSize = this.atWar.size();
    }

    public final boolean addDamageRelations(int i, int i2) {
        if (DiplomacyManager.isAtWar(i, i2) || Game.getCiv(i2).diplomacy.getRelation(i) <= GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
            return false;
        }
        for (int i3 = this.iDamagingRelationsSize - 1; i3 >= 0; i3--) {
            if (this.damagingRelations.get(i3).iCivID == i2) {
                return false;
            }
        }
        this.damagingRelations.add(new Diplomacy_RelationsAction(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME));
        this.iDamagingRelationsSize = this.damagingRelations.size();
        removeImproveRelations(i2);
        if (i2 == Game.player.iCivID) {
            if (GameValues.notifications.RELATIONS_FROM_AS_NOTIFICATION) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.RELATIONS_DAMAGING, Game.getCiv(i).getCivName() + ": " + Game.lang.get("DamagingRelations"), Images.relationsDown, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, i));
            } else {
                Game.player.addMessage(new PMessageDamagingRelations(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_RELATIONS_DAYS));
            }
        }
        return true;
    }

    public final void addDamageRelations_Load(int i, int i2) {
        this.damagingRelations.add(new Diplomacy_RelationsAction(i, i2));
    }

    public final void addDefensivePact(int i, int i2) {
        if (this.defensivePact.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.defensivePact.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addGuarantee(int i, int i2) {
        if (this.guarantee.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.guarantee.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addGuaranteeByCivID(int i, int i2) {
        if (this.guaranteeByCivID.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.guaranteeByCivID.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final boolean addImproveRelations(int i, int i2) {
        if (DiplomacyManager.isAtWar(i, i2) || Game.getCiv(i).diplomacy.isRival(i2) || Game.getCiv(i2).diplomacy.isRival(i) || Game.getCiv(i2).diplomacy.getRelation(i) >= GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
            return false;
        }
        for (int i3 = this.iImprovingRelationsSize - 1; i3 >= 0; i3--) {
            if (this.improvingRelations.get(i3).iCivID == i2) {
                return false;
            }
        }
        this.improvingRelations.add(new Diplomacy_RelationsAction(i2, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME));
        this.iImprovingRelationsSize = this.improvingRelations.size();
        removeDamageRelations(i2);
        if (i2 == Game.player.iCivID) {
            if (GameValues.notifications.RELATIONS_FROM_AS_NOTIFICATION) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.RELATIONS_IMPROVING, Game.getCiv(i).getCivName() + ": " + Game.lang.get("ImprovingRelations"), Images.relationsUp, Game_Calendar.TURN_ID, Notification.Notification_BG.GREEN, i));
            } else {
                Game.player.addMessage(new PMessageImprovingRelations(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_RELATIONS_DAYS));
            }
        }
        return true;
    }

    public final void addImproveRelations_Load(int i, int i2) {
        this.improvingRelations.add(new Diplomacy_RelationsAction(i, i2));
    }

    public final void addMilitaryAccess(int i, int i2) {
        if (this.militaryAccess.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.militaryAccess.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addNonAggressionPact(int i, int i2) {
        if (this.nonAggressionPact.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.nonAggressionPact.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final boolean addRival(int i, int i2) {
        return addRival(i, i2, Game_Calendar.TURN_ID + (GameValues.rivals.END_OF_RIVALRY_AFTER_YEARS * Game_Calendar.NUM_OF_DAYS) + Game.oR.nextInt(GameValues.rivals.END_OF_RIVALRY_AFTER_EXTRA_DAYS_RANDOM));
    }

    public final boolean addRival(int i, int i2, int i3) {
        if (this.rivals.containsKey(Integer.valueOf(i2)) || this.rivals.size() >= GameValues.rivals.RIVALS_LIMIT) {
            return false;
        }
        this.rivals.put(Integer.valueOf(i2), new DiplomacyData(i2, i3));
        if (!DiplomacyManager.isAtWar(i, i2)) {
            updateRelation(i, i2, GameValues.rivals.RIVALS_OPINION_CHANGE);
            Game.getCiv(i2).diplomacy.updateRelation(i2, i, GameValues.rivals.RIVALS_OPINION_CHANGE);
        }
        Game.getCiv(i2).diplomacy.removeImproveRelations(i);
        Game.getCiv(i).diplomacy.removeImproveRelations(i2);
        Game.gameThread.addCivUpdateLegacyPerMonth(i);
        Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        if (i2 != Game.player.iCivID) {
            return true;
        }
        Game.player.addMessage(new PMessageRivals(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
        return true;
    }

    public final void addRival_load(int i, int i2) {
        this.rivals.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addTruce(int i, int i2) {
        if (this.truce.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.truce.put(Integer.valueOf(i), new DiplomacyData(i, i2));
    }

    public final void addWar(String str, int i) {
        if (i != Game.player.iCivID) {
            Game.getCiv(i).updateMilitaryLevel(Math.max(GameValues.war.AI_AT_WAR_MIN_MILITARY_LEVEL, Game.getCiv(i).getMilitaryLevel()));
            if (GameValues.notifications.NOTIFICATION_NEIGHBOR_OR_RIVAL_IS_AT_WAR && (Game.getCiv(Game.player.iCivID).civNeighbors.isNeighbor(i) || Game.getCiv(Game.player.iCivID).diplomacy.isRival(i))) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.NEIGHBOR_OR_RIVAL_AT_WAR, Game.getCiv(i).getCivName() + CaiJWNfqszJNZ.azefaQ + Game.lang.get("IaAtWar"), Images.war, Game_Calendar.TURN_ID, Notification.Notification_BG.NEUTRAL_BG, i));
            }
        }
        for (int i2 = 0; i2 < this.iWarsSize; i2++) {
            if (this.lWars.get(i2).equals(str)) {
                return;
            }
        }
        this.lWars.add(str);
        this.iWarsSize = this.lWars.size();
    }

    public final void clearDamageRelations() {
        this.damagingRelations.clear();
        this.iDamagingRelationsSize = 0;
    }

    public final void clearDamageRelations_AI(int i) {
        try {
            for (int i2 = this.iDamagingRelationsSize - 1; i2 >= 0; i2--) {
                if (!Game.getCiv(i).aiCivDiplomacy.isPreparingForWarWithCivID(this.damagingRelations.get(i2).iCivID)) {
                    this.damagingRelations.remove(i2);
                }
            }
        } catch (Exception unused) {
        }
        this.iDamagingRelationsSize = this.damagingRelations.size();
    }

    public final void clearImproveRelations() {
        this.improvingRelations.clear();
        this.iImprovingRelationsSize = 0;
    }

    public final void clearImproveRelations_AI(int i) {
        try {
            for (int i2 = this.iImprovingRelationsSize - 1; i2 >= 0; i2--) {
                if (!Game.getCiv(i).aiCivDiplomacy.isPreparingForAllianceWithCivID(this.improvingRelations.get(i2).iCivID)) {
                    this.improvingRelations.remove(i2);
                }
            }
        } catch (Exception unused) {
        }
        this.iImprovingRelationsSize = this.improvingRelations.size();
    }

    public final float getDamagingRelations_Perc(int i) {
        for (int i2 = this.iDamagingRelationsSize - 1; i2 >= 0; i2--) {
            if (this.damagingRelations.get(i2).iCivID == i) {
                if (this.damagingRelations.get(i2).iTurnID - Game_Calendar.TURN_ID == GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME) {
                    return 99.9f;
                }
                return ((this.damagingRelations.get(i2).iTurnID - Game_Calendar.TURN_ID) / GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME) * 100.0f;
            }
        }
        return -1.0f;
    }

    public final float getImprovingRelations_Perc(int i) {
        for (int i2 = this.iImprovingRelationsSize - 1; i2 >= 0; i2--) {
            if (this.improvingRelations.get(i2).iCivID == i) {
                if (this.improvingRelations.get(i2).iTurnID - Game_Calendar.TURN_ID == GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME) {
                    return 99.9f;
                }
                return ((this.improvingRelations.get(i2).iTurnID - Game_Calendar.TURN_ID) / GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME) * 100.0f;
            }
        }
        return -1.0f;
    }

    public final float getRelation(int i) {
        try {
            if (this.relation.containsKey(Integer.valueOf(i))) {
                return this.relation.get(Integer.valueOf(i)).floatValue();
            }
            return 0.0f;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0.0f;
        }
    }

    public final float getRivalsLegacy(int i) {
        float legacy = 0.0f;
        try {
            if (this.rivals.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.rivals.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (Game.getCiv(value.iCivID).getNumOfProvinces() <= 0) {
                        it.remove();
                    } else {
                        legacy += RivalsManager.getLegacy(i, value.iCivID);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return legacy;
    }

    public final int getRivalsManpower(int i) {
        int manpower = 0;
        try {
            if (this.rivals.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.rivals.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (Game.getCiv(value.iCivID).getNumOfProvinces() <= 0) {
                        it.remove();
                    } else {
                        manpower += RivalsManager.getManpower(i, value.iCivID);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return manpower;
    }

    public boolean getVassal_CanDeclareWar(int i) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    return this.lVassals.get(i2).cW;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return true;
    }

    public float getVassal_LibertyDesire(int i) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    return this.lVassals.get(i2).lD;
                }
            }
            return 0.0f;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0.0f;
        }
    }

    public int getVassal_ManpowerLevel(int i) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    return this.lVassals.get(i2).mL;
                }
            }
            return 0;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public int getVassal_TributeLevel(int i) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    return this.lVassals.get(i2).tL;
                }
            }
            return 0;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public final String getWarKey(int i, int i2) {
        for (int i3 = 0; i3 < this.iWarsSize; i3++) {
            try {
                if (WarManager.lWars.get(this.lWars.get(i3)).isAggressor(i) && WarManager.lWars.get(this.lWars.get(i3)).isDefender(i2)) {
                    return this.lWars.get(i3);
                }
                if (WarManager.lWars.get(this.lWars.get(i3)).isAggressor(i2) && WarManager.lWars.get(this.lWars.get(i3)).isDefender(i)) {
                    return this.lWars.get(i3);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return null;
            }
        }
        return null;
    }

    public boolean haveAlliance(int i) {
        return this.alliance.containsKey(Integer.valueOf(i));
    }

    public boolean haveDefensivePact(int i) {
        return this.defensivePact.containsKey(Integer.valueOf(i));
    }

    public boolean haveGuarantee(int i) {
        return this.guarantee.containsKey(Integer.valueOf(i));
    }

    public boolean haveGuaranteeByCivID(int i) {
        return this.guaranteeByCivID.containsKey(Integer.valueOf(i));
    }

    public boolean haveMilitaryAccess(int i) {
        return this.militaryAccess.containsKey(Integer.valueOf(i));
    }

    public boolean haveNonAggressionPact(int i) {
        return this.nonAggressionPact.containsKey(Integer.valueOf(i));
    }

    public final boolean haveTheSameRival(int i, int i2) {
        try {
            if (this.rivals.size() <= 0) {
                return false;
            }
            Iterator<Map.Entry<Integer, DiplomacyData>> it = this.rivals.entrySet().iterator();
            while (it.hasNext()) {
                if (Game.getCiv(i2).diplomacy.rivals.containsKey(Integer.valueOf(it.next().getValue().iCivID))) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public boolean haveTruce(int i) {
        return this.truce.containsKey(Integer.valueOf(i));
    }

    public boolean isAtWar() {
        return this.iAtWarSize > 0;
    }

    public final boolean isDamagingRelations(int i) {
        try {
            for (int i2 = this.iDamagingRelationsSize - 1; i2 >= 0; i2--) {
                if (this.damagingRelations.get(i2).iCivID == i) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean isImprovingRelations(int i) {
        try {
            for (int i2 = this.iImprovingRelationsSize - 1; i2 >= 0; i2--) {
                if (this.improvingRelations.get(i2).iCivID == i) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isRival(int i) {
        return this.rivals.containsKey(Integer.valueOf(i));
    }

    public final void removeAlliance(int i) {
        this.alliance.remove(Integer.valueOf(i));
    }

    public final void removeAtWar(int i) {
        for (int i2 = this.iAtWarSize - 1; i2 >= 0; i2--) {
            if (this.atWar.get(i2).intValue() == i) {
                this.atWar.remove(i2);
                this.iAtWarSize = this.atWar.size();
                return;
            }
        }
    }

    public final void removeDamageRelations(int i) {
        for (int i2 = this.iDamagingRelationsSize - 1; i2 >= 0; i2--) {
            if (this.damagingRelations.get(i2).iCivID == i) {
                this.damagingRelations.remove(i2);
                this.iDamagingRelationsSize = this.damagingRelations.size();
                return;
            }
        }
    }

    public final void removeDefensivePact(int i) {
        this.defensivePact.remove(Integer.valueOf(i));
    }

    public final void removeGuarantee(int i) {
        this.guarantee.remove(Integer.valueOf(i));
    }

    public final void removeGuaranteeByCivID(int i) {
        this.guaranteeByCivID.remove(Integer.valueOf(i));
    }

    public final void removeImproveRelations(int i) {
        try {
            for (int i2 = this.iImprovingRelationsSize - 1; i2 >= 0; i2--) {
                if (this.improvingRelations.get(i2).iCivID == i) {
                    this.improvingRelations.remove(i2);
                    this.iImprovingRelationsSize = this.improvingRelations.size();
                    return;
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void removeMilitaryAccess(int i) {
        this.militaryAccess.remove(Integer.valueOf(i));
    }

    public final void removeNonAggressionPact(int i) {
        this.nonAggressionPact.remove(Integer.valueOf(i));
    }

    public final void removeRival(int i) {
        try {
            if (this.rivals.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.rivals.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().iCivID == i) {
                        it.remove();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void removeTruce(int i) {
        this.truce.remove(Integer.valueOf(i));
    }

    public final void removeWar(String str, int i) {
        for (int i2 = 0; i2 < this.iWarsSize; i2++) {
            if (this.lWars.get(i2).equals(str)) {
                this.lWars.remove(i2);
                int size = this.lWars.size();
                this.iWarsSize = size;
                if (size == 0) {
                    Game.getCiv(i).setWarPlayDefensiveUntilTurnID(0);
                    return;
                }
                return;
            }
        }
    }

    public void setLibertyDesire_Change(int i, float f) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    this.lVassals.get(i2).setLibertyDesire_Change(f);
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setRelation(int i, int i2, float f) {
        try {
            if (DiplomacyManager.isAtWar(i, i2)) {
                return;
            }
            this.relation.put(Integer.valueOf(i2), Float.valueOf(Math.min(GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, Math.max(GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN, f))));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setRelation_Load(int i, float f) {
        try {
            this.relation.put(Integer.valueOf(i), Float.valueOf(f));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setRelation_Peace(int i, float f, String str) {
        try {
            this.relation.put(Integer.valueOf(i), Float.valueOf(f));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            removeAtWar(i);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            removeWar(str, i);
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        if (isAtWar() || i == Game.player.iCivID) {
            return;
        }
        Game.getCiv(i).updateMilitaryLevel(1);
    }

    public final void setRelation_War(int i, float f) {
        try {
            this.relation.put(Integer.valueOf(i), Float.valueOf(f));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            addAtWar(i);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public void setVassal_CanDeclareWar(int i, boolean z) {
        try {
            for (int i2 = this.iVassalsSize - 1; i2 >= 0; i2--) {
                if (this.lVassals.get(i2).c == i) {
                    this.lVassals.get(i2).cW = z;
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void setVassal_LoadData(int i, int i2, int i3, boolean z, float f) {
        try {
            for (int i4 = this.iVassalsSize - 1; i4 >= 0; i4--) {
                if (this.lVassals.get(i4).c == i) {
                    this.lVassals.get(i4).tL = i2;
                    this.lVassals.get(i4).mL = i3;
                    this.lVassals.get(i4).cW = z;
                    this.lVassals.get(i4).lD = f;
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void setVassal_ManpowerLevel(int i, int i2) {
        try {
            for (int i3 = this.iVassalsSize - 1; i3 >= 0; i3--) {
                if (this.lVassals.get(i3).c == i) {
                    this.lVassals.get(i3).setManpower(i2);
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void setVassal_TributeLevel(int i, int i2) {
        try {
            for (int i3 = this.iVassalsSize - 1; i3 >= 0; i3--) {
                if (this.lVassals.get(i3).c == i) {
                    this.lVassals.get(i3).setTribute(i2);
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateAlliance(int i) {
        int i2;
        try {
            if (this.alliance.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.alliance.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID || Game.getCiv(value.iCivID).getNumOfProvinces() <= 0 || Game.getCiv(i).getNumOfProvinces() <= 0) {
                        int i3 = value.iCivID;
                        int i4 = Game.player.iCivID;
                        String str = IlLkpaQxs.LcHbmlxEui;
                        if (i3 == i4) {
                            Game.player.addMessage(new PMessageAllianceExpired(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                            Game.player.addNotification(new Notification(Notification.Notification_Type.ALLIANCE_EXPIRED, Game.getCiv(i).getCivName() + ": " + Game.lang.get("AllianceExpired"), Images.alliance, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, i));
                            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceExpired"), Game.getCiv(i).getCivName() + str + Game.getCiv(Game.player.iCivID).getCivName());
                            InGame_Info.imgID = Images.infoDiplomacy;
                            i2 = i;
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageAllianceExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                            Game.player.addNotification(new Notification(Notification.Notification_Type.ALLIANCE_EXPIRED, Game.getCiv(value.iCivID).getCivName() + ": " + Game.lang.get("AllianceExpired"), Images.alliance, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, value.iCivID));
                            i2 = value.iCivID;
                            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceExpired"), Game.getCiv(value.iCivID).getCivName() + str + Game.getCiv(Game.player.iCivID).getCivName());
                            InGame_Info.imgID = Images.infoDiplomacy;
                        } else {
                            i2 = -1;
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeAlliance(i);
                        it.remove();
                        if (i2 > 0) {
                            Game.getCiv(i2).updateArmyImgID();
                            Game.player.fog.updateFogOfWar_Civ(i2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateAllianceAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.alliance.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.alliance = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateAlliance_ConqueredProvinces(int i) {
        int i2;
        try {
            if (this.alliance.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.alliance.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (Game.getCiv(value.iCivID).getNumOfProvinces() <= 0 || Game.getCiv(i).getNumOfProvinces() <= 0) {
                        if (value.iCivID == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageAllianceExpired(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                            Game.player.addNotification(new Notification(Notification.Notification_Type.ALLIANCE_EXPIRED, Game.getCiv(i).getCivName() + ": " + Game.lang.get("AllianceExpired"), Images.alliance, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, i));
                            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceExpired"), Game.getCiv(i).getCivName() + " - " + Game.getCiv(Game.player.iCivID).getCivName());
                            InGame_Info.imgID = Images.infoDiplomacy;
                            i2 = i;
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageAllianceExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                            Game.player.addNotification(new Notification(Notification.Notification_Type.ALLIANCE_EXPIRED, Game.getCiv(value.iCivID).getCivName() + ": " + Game.lang.get("AllianceExpired"), Images.alliance, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, value.iCivID));
                            i2 = value.iCivID;
                            Game.menuManager.rebuildInGame_Info(Game.lang.get("AllianceExpired"), Game.getCiv(value.iCivID).getCivName() + " - " + Game.getCiv(Game.player.iCivID).getCivName());
                            InGame_Info.imgID = Images.infoDiplomacy;
                        } else {
                            i2 = -1;
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeAlliance(i);
                        it.remove();
                        if (i2 > 0) {
                            Game.getCiv(i2).updateArmyImgID();
                            Game.player.fog.updateFogOfWar_Civ(i2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDamageRelations(int i) {
        for (int i2 = this.iDamagingRelationsSize - 1; i2 >= 0; i2--) {
            try {
                if (this.damagingRelations.get(i2).iTurnID <= Game_Calendar.TURN_ID) {
                    if (DiplomacyManager.isAtWar(i, this.damagingRelations.get(i2).iCivID) || Game.getCiv(this.damagingRelations.get(i2).iCivID).getNumOfProvinces() <= 0) {
                        removeDamageRelations(this.damagingRelations.get(i2).iCivID);
                    } else {
                        float relationDamage = DiplomacyManager.getRelationDamage(i, this.damagingRelations.get(i2).iCivID);
                        updateRelation(i, this.damagingRelations.get(i2).iCivID, relationDamage);
                        Game.getCiv(this.damagingRelations.get(i2).iCivID).diplomacy.updateRelation(this.damagingRelations.get(i2).iCivID, i, relationDamage);
                        this.damagingRelations.get(i2).iTurnID = Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME;
                        if (Game.getCiv(this.damagingRelations.get(i2).iCivID).diplomacy.getRelation(i) < GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                            if (i == Game.player.iCivID) {
                                Game.player.addNotification(new Notification(Notification.Notification_Type.RELATIONS_COMPLETED, Game.lang.get("DamagingRelationsCompleted"), Images.relationsDown, Game_Calendar.TURN_ID, Notification.Notification_BG.GREEN, this.damagingRelations.get(i2).iCivID));
                            }
                            this.damagingRelations.remove(i2);
                            this.iDamagingRelationsSize = this.damagingRelations.size();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void updateDefensivePact(int i) {
        try {
            if (this.defensivePact.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.defensivePact.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID) {
                        if (value.iCivID == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageDefensivePactExpired(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageDefensivePactExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeDefensivePact(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDefensivePactAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.defensivePact.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.defensivePact = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGuarantee(int i) {
        try {
            if (this.guarantee.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.guarantee.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID) {
                        if (value.iCivID == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageGuaranteeExpired_OurInd(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageGuaranteeExpired_We(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeGuaranteeByCivID(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGuaranteeAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.guarantee.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.guarantee = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGuaranteeByCivID() {
    }

    public final void updateGuaranteeByCivIDAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.guaranteeByCivID.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.guaranteeByCivID = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateImproveRelations(int i) {
        for (int i2 = this.iImprovingRelationsSize - 1; i2 >= 0; i2--) {
            try {
                if (this.improvingRelations.get(i2).iTurnID <= Game_Calendar.TURN_ID) {
                    if (DiplomacyManager.isAtWar(i, this.improvingRelations.get(i2).iCivID) || Game.getCiv(this.improvingRelations.get(i2).iCivID).getNumOfProvinces() <= 0) {
                        removeImproveRelations(this.improvingRelations.get(i2).iCivID);
                    } else {
                        float relationImprove = DiplomacyManager.getRelationImprove(i, this.improvingRelations.get(i2).iCivID);
                        updateRelation(i, this.improvingRelations.get(i2).iCivID, relationImprove);
                        Game.getCiv(this.improvingRelations.get(i2).iCivID).diplomacy.updateRelation(this.improvingRelations.get(i2).iCivID, i, relationImprove);
                        this.improvingRelations.get(i2).iTurnID = Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME;
                        if (Game.getCiv(this.improvingRelations.get(i2).iCivID).diplomacy.getRelation(i) > GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
                            if (i == Game.player.iCivID) {
                                Game.player.addNotification(new Notification(Notification.Notification_Type.RELATIONS_COMPLETED, Game.lang.get("ImprovingRelationsCompleted"), Images.relationsUp, Game_Calendar.TURN_ID, Notification.Notification_BG.GREEN, this.improvingRelations.get(i2).iCivID));
                            }
                            this.improvingRelations.remove(i2);
                            this.iImprovingRelationsSize = this.improvingRelations.size();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void updateMilitaryAccess(int i) {
        try {
            if (this.militaryAccess.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.militaryAccess.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID) {
                        if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageMilitaryAccessExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeMilitaryAccess(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMilitaryAccessAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.militaryAccess.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.militaryAccess = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateNonAggressionPact(int i) {
        try {
            if (this.nonAggressionPact.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.nonAggressionPact.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID) {
                        if (value.iCivID == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageNonAggressionPactExpired(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageNonAggressionPactExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeNonAggressionPact(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateNonAggressionPactAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.nonAggressionPact.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.nonAggressionPact = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRelation(int i, int i2, float f) {
        try {
            if (DiplomacyManager.isAtWar(i, i2)) {
                return;
            }
            this.relation.put(Integer.valueOf(i2), Float.valueOf(Math.min(GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, Math.max(GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN, getRelation(i2) + f))));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRelationsAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, Float> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, Float> entry : this.relation.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), entry.getValue());
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.relation = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRelations_ToNeutral(int i) {
        try {
            ConcurrentHashMap<Integer, Float> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, Float> entry : this.relation.entrySet()) {
                if (entry.getValue().floatValue() > 0.0f) {
                    if (entry.getValue().floatValue() - GameValues.diplomacy.RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL > 0.0f) {
                        concurrentHashMap.put(entry.getKey(), Float.valueOf(Math.max(0.0f, entry.getValue().floatValue() - GameValues.diplomacy.RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL)));
                    }
                } else if (entry.getValue().floatValue() < 0.0f) {
                    if (DiplomacyManager.isAtWar(i, entry.getKey().intValue())) {
                        concurrentHashMap.put(entry.getKey(), entry.getValue());
                    } else if (entry.getValue().floatValue() + GameValues.diplomacy.RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL < 0.0f) {
                        concurrentHashMap.put(entry.getKey(), Float.valueOf(Math.min(0.0f, entry.getValue().floatValue() + GameValues.diplomacy.RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL)));
                    }
                }
            }
            this.relation = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRivals(int i) {
        try {
            if (this.rivals.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.rivals.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (Game.getCiv(value.iCivID).getNumOfProvinces() <= 0 || Game_Calendar.TURN_ID >= value.iTurnID) {
                        if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageRivalryExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        } else {
                            Game.gameThread.addAI_SimpleTask(new AnonymousClass1("chooseRivals" + i, i));
                        }
                        Game.gameThread.addCivUpdateLegacyPerMonth(i);
                        Game.gameThreadTurns.addCivUpdateMaxManpower(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateTruceAfterRemoveCiv(int i) {
        try {
            ConcurrentHashMap<Integer, DiplomacyData> concurrentHashMap = new ConcurrentHashMap<>();
            for (Map.Entry<Integer, DiplomacyData> entry : this.truce.entrySet()) {
                if (entry.getKey().intValue() > i) {
                    concurrentHashMap.put(Integer.valueOf(entry.getKey().intValue() - 1), new DiplomacyData(entry.getValue().iCivID - 1, entry.getValue().iTurnID));
                } else if (entry.getKey().intValue() != i) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            this.truce = concurrentHashMap;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateTruces(int i) {
        try {
            if (this.truce.size() > 0) {
                Iterator<Map.Entry<Integer, DiplomacyData>> it = this.truce.entrySet().iterator();
                while (it.hasNext()) {
                    DiplomacyData value = it.next().getValue();
                    if (value.iTurnID < Game_Calendar.TURN_ID) {
                        if (value.iCivID == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageTruceExpired(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        } else if (i == Game.player.iCivID) {
                            Game.player.addMessage(new PMessageTruceExpired(value.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        }
                        Game.getCiv(value.iCivID).diplomacy.removeTruce(i);
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
