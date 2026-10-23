package aoc.kingdoms.lukasz.map.allianceHRE;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Alliance {
    public int iLeaderCivID;
    public String Name_Alliance = "";
    public String Name_Leader = "";
    public String Name_FirstTier = "";
    public String Name_Rest = "";
    public String FlagTag = "";
    public List<Integer> firstTier = new ArrayList();
    public List<Integer> secondTier = new ArrayList();
    public int typeOfAlliance = 0;
    public int iReformsPassed = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.allianceHRE.Alliance$1, reason: invalid class name */
    class AnonymousClass1 extends Notification {
        AnonymousClass1(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    public void addFirstTier(int i) {
        for (int i2 = 0; i2 < this.firstTier.size(); i2++) {
            if (this.firstTier.get(i2).intValue() == i) {
                return;
            }
        }
        this.firstTier.add(Integer.valueOf(i));
        removeSecondTier(i);
    }

    public void addSecondTier(int i) {
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            if (this.secondTier.get(i2).intValue() == i) {
                return;
            }
        }
        this.secondTier.add(Integer.valueOf(i));
        removeFirstTier(i);
    }

    public void elections() {
        int iIntValue;
        float f = -100000.0f;
        if (electionsCheck(this.iLeaderCivID, -100000.0f)) {
            iIntValue = this.iLeaderCivID;
            f = Game.getCiv(iIntValue).iCivRankScore;
        } else {
            iIntValue = -1;
        }
        for (int size = this.firstTier.size() - 1; size >= 0; size--) {
            if (electionsCheck(this.firstTier.get(size).intValue(), f)) {
                iIntValue = this.firstTier.get(size).intValue();
                f = Game.getCiv(this.firstTier.get(size).intValue()).iCivRankScore;
            }
        }
        for (int size2 = this.secondTier.size() - 1; size2 >= 0; size2--) {
            if (electionsCheck(this.secondTier.get(size2).intValue(), f)) {
                iIntValue = this.secondTier.get(size2).intValue();
                f = Game.getCiv(this.secondTier.get(size2).intValue()).iCivRankScore;
            }
        }
        int i = this.iLeaderCivID;
        this.iLeaderCivID = iIntValue;
        if (i != iIntValue) {
            if (!this.firstTier.contains(Integer.valueOf(i)) && !this.secondTier.contains(Integer.valueOf(i))) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    this.firstTier.add(Integer.valueOf(i));
                } else {
                    this.secondTier.add(Integer.valueOf(i));
                }
            }
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iLeaderCivID);
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
            Game.gameThreadTurns.addCivUpdateMaxManpower(this.iLeaderCivID);
            Game.getCiv(i).updateRegimentsLimit();
            Game.getCiv(this.iLeaderCivID).updateRegimentsLimit();
        }
        if (isInAlliance(Game.player.iCivID)) {
            Game.player.addNotification(new AnonymousClass1(Notification.Notification_Type.DEFAULT, Game.lang.get("ResultOfElections") + ": " + Game.getCiv(this.iLeaderCivID).getCivName(), Images.alliance, Game_Calendar.TURN_ID, Notification.Notification_BG.NEUTRAL_BG, Game.getCiv(this.iLeaderCivID).getCapitalProvinceID()));
        }
    }

    public boolean electionsCheck(int i, float f) {
        return i > 0 && Game.getCiv(i).getNumOfProvinces() > 0 && Game.getCiv(i).iCivRankScore > f;
    }

    public final int getEconomy() {
        int economyTotal = 0;
        for (int i = 0; i < this.firstTier.size(); i++) {
            economyTotal = (int) (economyTotal + Game.getCiv(this.firstTier.get(i).intValue()).getEconomyTotal());
        }
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            economyTotal = (int) (economyTotal + Game.getCiv(this.secondTier.get(i2).intValue()).getEconomyTotal());
        }
        return (this.firstTier.contains(Integer.valueOf(this.iLeaderCivID)) || this.secondTier.contains(Integer.valueOf(this.iLeaderCivID))) ? economyTotal : (int) (economyTotal + Game.getCiv(this.iLeaderCivID).getEconomyTotal());
    }

    public final int getNumOfCivilizations() {
        int i = 0;
        for (int i2 = 0; i2 < this.firstTier.size(); i2++) {
            if (Game.getCiv(this.firstTier.get(i2).intValue()).getNumOfProvinces() > 0) {
                i++;
            }
        }
        for (int i3 = 0; i3 < this.secondTier.size(); i3++) {
            if (Game.getCiv(this.secondTier.get(i3).intValue()).getNumOfProvinces() > 0) {
                i++;
            }
        }
        return (this.firstTier.contains(Integer.valueOf(this.iLeaderCivID)) || this.secondTier.contains(Integer.valueOf(this.iLeaderCivID)) || Game.getCiv(this.iLeaderCivID).getNumOfProvinces() <= 0) ? i : i + 1;
    }

    public final int getNumOfCivilizations_FirstTier() {
        int i = 0;
        for (int i2 = 0; i2 < this.firstTier.size(); i2++) {
            if (Game.getCiv(this.firstTier.get(i2).intValue()).getNumOfProvinces() > 0) {
                i++;
            }
        }
        return i;
    }

    public final int getNumOfCivilizations_SecondTier() {
        int i = 0;
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            if (Game.getCiv(this.secondTier.get(i2).intValue()).getNumOfProvinces() > 0) {
                i++;
            }
        }
        return i;
    }

    public final int getPopulation() {
        int populationTotal = 0;
        for (int i = 0; i < this.firstTier.size(); i++) {
            populationTotal = (int) (((long) populationTotal) + Game.getCiv(this.firstTier.get(i).intValue()).getPopulationTotal());
        }
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            populationTotal = (int) (((long) populationTotal) + Game.getCiv(this.secondTier.get(i2).intValue()).getPopulationTotal());
        }
        return (this.firstTier.contains(Integer.valueOf(this.iLeaderCivID)) || this.secondTier.contains(Integer.valueOf(this.iLeaderCivID))) ? populationTotal : (int) (((long) populationTotal) + Game.getCiv(this.iLeaderCivID).getPopulationTotal());
    }

    public final int getProvinces() {
        int numOfProvinces = 0;
        for (int i = 0; i < this.firstTier.size(); i++) {
            numOfProvinces += Game.getCiv(this.firstTier.get(i).intValue()).getNumOfProvinces();
        }
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            numOfProvinces += Game.getCiv(this.secondTier.get(i2).intValue()).getNumOfProvinces();
        }
        return (this.firstTier.contains(Integer.valueOf(this.iLeaderCivID)) || this.secondTier.contains(Integer.valueOf(this.iLeaderCivID))) ? numOfProvinces : numOfProvinces + Game.getCiv(this.iLeaderCivID).getNumOfProvinces();
    }

    public String getTypeOfAlliance_Name() {
        return this.typeOfAlliance == 0 ? Game.lang.get("HolyRomanEmpire") : Game.lang.get("Defensive");
    }

    public void incTypeOfAlliance() {
        int i = this.typeOfAlliance + 1;
        this.typeOfAlliance = i;
        if (i > 1) {
            this.typeOfAlliance = 0;
        }
    }

    public boolean isInAlliance(int i) {
        if (this.iLeaderCivID == i) {
            return true;
        }
        for (int i2 = 0; i2 < this.firstTier.size(); i2++) {
            if (this.firstTier.get(i2).intValue() == i) {
                return true;
            }
        }
        for (int i3 = 0; i3 < this.secondTier.size(); i3++) {
            if (this.secondTier.get(i3).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public void removeCiv(int i) {
        removeFirstTier(i);
        removeSecondTier(i);
        if (this.iLeaderCivID == i) {
            this.iLeaderCivID = -1;
            elections();
        }
    }

    public void removeFirstTier(int i) {
        for (int i2 = 0; i2 < this.firstTier.size(); i2++) {
            if (this.firstTier.get(i2).intValue() == i) {
                this.firstTier.remove(i2);
                return;
            }
        }
    }

    public void removeSecondTier(int i) {
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            if (this.secondTier.get(i2).intValue() == i) {
                this.secondTier.remove(i2);
                return;
            }
        }
    }

    public void setLeader(int i) {
        this.iLeaderCivID = i;
    }

    public void updateAfterRemoveOfCiv(int i) {
        for (int i2 = 0; i2 < this.secondTier.size(); i2++) {
            if (this.secondTier.get(i2).intValue() > i) {
                List<Integer> list = this.secondTier;
                list.set(i2, Integer.valueOf(list.get(i2).intValue() - 1));
            }
        }
        for (int i3 = 0; i3 < this.firstTier.size(); i3++) {
            if (this.firstTier.get(i3).intValue() > i) {
                List<Integer> list2 = this.firstTier;
                list2.set(i3, Integer.valueOf(list2.get(i3).intValue() - 1));
            }
        }
        int i4 = this.iLeaderCivID;
        if (i4 > i) {
            this.iLeaderCivID = i4 - 1;
        }
    }
}
