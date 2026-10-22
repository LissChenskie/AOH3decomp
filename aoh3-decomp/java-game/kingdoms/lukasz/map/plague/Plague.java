package aoc.kingdoms.lukasz.map.plague;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Plague {
    public float EXPANSION_MODIFIER;
    public float EXPANSION_SCORE;
    public float fB;
    public float fDeathRate;
    public float fDevastation;
    public float fG;
    public float fR;
    public int iDeaths;
    public int iDurationTurnsLeft;
    public int iDurationTurnsLeft_BEGINNING;
    public int iImageID;
    public int iPlagueID_InGame;
    public int iProvincesSize;
    public List<Integer> lProvinces;
    public List<Integer> lProvinces_Active;
    public boolean nS;
    public String sName;

    public Plague() {
        this.iPlagueID_InGame = 0;
        this.lProvinces = new ArrayList();
        this.iProvincesSize = 0;
        this.lProvinces_Active = new ArrayList();
        this.fDeathRate = 0.0f;
        this.iDurationTurnsLeft = 0;
        this.fDevastation = 0.0f;
        this.iDeaths = 0;
        this.iImageID = 0;
        this.iDurationTurnsLeft_BEGINNING = 0;
        this.nS = false;
    }

    public Plague(int i, String str, float f, float f2, float f3, int i2, float f4, int i3, float f5, int i4, float f6) {
        this.iPlagueID_InGame = 0;
        this.lProvinces = new ArrayList();
        this.iProvincesSize = 0;
        this.lProvinces_Active = new ArrayList();
        this.fDeathRate = 0.0f;
        this.iDurationTurnsLeft = 0;
        this.fDevastation = 0.0f;
        this.iDeaths = 0;
        this.iImageID = 0;
        this.iDurationTurnsLeft_BEGINNING = 0;
        this.nS = false;
        this.sName = Game.lang.get(str);
        this.iPlagueID_InGame = i2;
        this.fR = f;
        this.fG = f2;
        this.fB = f3;
        this.iImageID = i4;
        this.fDevastation = f6;
        this.fDeathRate = f4;
        this.iDurationTurnsLeft = i3;
        this.iDurationTurnsLeft_BEGINNING = i3;
        this.EXPANSION_MODIFIER = f5;
        addProvince(i);
    }

    protected final void addProvince(int i) {
        for (int i2 = 0; i2 < this.iProvincesSize; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                return;
            }
        }
        Game.getProvinceData10(i).t = Game_Calendar.TURN_ID;
        if (Game.getProvince(i).provincePlague != null) {
            return;
        }
        Game.getProvince(i).provincePlague = new ProvincePlague(this.iPlagueID_InGame, Game_Calendar.TURN_ID, this.iDurationTurnsLeft * ((Game.oR.nextInt(Toast.TIME_INVIEW_VERY_LONG) / 10000.0f) + 0.625f), 0);
        if (!this.nS && Game.getProvince(i).getCivID() == Game.player.iCivID && Game.player.iCivID > 0) {
            this.nS = true;
            if (Game.oR.nextInt(100) < GameValues.plagues.SEND_NOTIFICATION_CHANCE) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.DISEASE, this.sName + ": " + Game.lang.get("Disease"), Images.disease, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, this.sName, i));
            }
        }
        Game.getProvinceData10(i).n++;
        this.lProvinces.add(Integer.valueOf(i));
        this.lProvinces_Active.add(Integer.valueOf(i));
        this.iProvincesSize = this.lProvinces.size();
    }

    protected final int getDeaths() {
        return this.iDeaths;
    }

    protected final float getDurationPercLEFT() {
        return this.iDurationTurnsLeft / this.iDurationTurnsLeft_BEGINNING;
    }

    protected final float getDurationPercLEFT(int i) {
        return i / this.iDurationTurnsLeft_BEGINNING;
    }

    protected final int getNumOfProvinces_Active() {
        return this.lProvinces_Active.size();
    }

    protected final int getNumOfProvinces_Total() {
        return this.lProvinces.size();
    }

    protected final int getOutbreakProvinceID() {
        try {
            return this.lProvinces.get(0).intValue();
        } catch (IndexOutOfBoundsException unused) {
            return -1;
        }
    }

    protected final int getPlagueID_InGame() {
        return this.iPlagueID_InGame;
    }

    protected final String getPlagueName() {
        try {
            return this.sName;
        } catch (Exception unused) {
            return Game.lang.get("Plague");
        }
    }

    protected final int getSpreadScore(int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= Game.getProvince(i).getNeighboringProvincesSize()) {
                break;
            }
            if (Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).provincePlague == null) {
                i3 += Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince() ? 1 : 2;
            }
            i2++;
        }
        for (int i4 = 0; i4 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i4++) {
            if (Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i4)).provincePlague == null) {
                i3 += Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i4)).getSeaProvince() ? 1 : 2;
            }
        }
        return i3;
    }

    protected final void runDisease() {
        for (int size = this.lProvinces_Active.size() - 1; size >= 0; size--) {
            if (Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague != null && Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague.id == getPlagueID_InGame()) {
                int populationTotal = Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationTotal();
                float f = populationTotal;
                int iCeil = (int) Math.ceil(this.fDeathRate * ((getDurationPercLEFT() * 0.325f) + 0.225f + ((Game.oR.nextInt(100) * 0.55f) / 100.0f)) * f * (Math.max(GameValues.plagues.DISEASE_MAX_DEATH_RATE_REDUCTION, Game.getProvince(this.lProvinces_Active.get(size).intValue()).provBonuses.DiseaseDeathRate + Game.getCiv(Game.getProvince(this.lProvinces_Active.get(size).intValue()).getCivID()).civBonuses.DiseaseDeathRate + (Game.getProvince(this.lProvinces_Active.get(size).intValue()).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL)) + 1.0f));
                if (iCeil > 0) {
                    for (int populationSize = Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationSize() - 1; populationSize >= 0; populationSize--) {
                        Game.getProvince(this.lProvinces_Active.get(size).intValue()).setPopulationOfCivID(Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationCivID(populationSize), (int) (((double) Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationID(populationSize)) - Math.floor(iCeil * (Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationID(populationSize) / f))));
                    }
                    int populationTotal2 = populationTotal - Game.getProvince(this.lProvinces_Active.get(size).intValue()).getPopulationTotal();
                    Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague.deaths += populationTotal2;
                    Game.getProvinceData10(this.lProvinces_Active.get(size).intValue()).d += populationTotal2;
                    this.iDeaths += populationTotal2;
                    Game.getProvince(this.lProvinces_Active.get(size).intValue()).setDevastation(Game.getProvince(this.lProvinces_Active.get(size).intValue()).getDevastation() + (this.fDevastation * ((Game.oR.nextInt(75) / 100.0f) + 0.75f)));
                }
                Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague.turnsLeft -= (0.875f - ((Game.getProvince(this.lProvinces_Active.get(size).intValue()).getGrowthRateWithBonuses() / 100.0f) * 0.065f)) + (Game.oR.nextInt(GameValues.plagues.DISEASE_DAYS_LEFT_RANDOM) / 1000.0f);
                if (Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague.turnsLeft <= 0.0f) {
                    Game.getProvinceData10(this.lProvinces_Active.get(size).intValue()).t = Game_Calendar.TURN_ID;
                    Game.getProvince(this.lProvinces_Active.get(size).intValue()).provincePlague = null;
                    this.lProvinces_Active.remove(size);
                }
            }
        }
        this.fDeathRate *= GameValues.plagues.DISEASE_DEATH_RATE_CHANGE_PER_DAY - (Game.oR.nextInt(GameValues.plagues.DISEASE_DEATH_RATE_CHANGE_PER_DAY_RANDOM) / 10000.0f);
    }

    protected final void setPlagueID_InGame(int i) {
        this.iPlagueID_InGame = i;
    }

    protected final void spreadDisease() {
        int iNextInt;
        if (this.iDurationTurnsLeft <= 0 || this.lProvinces_Active.size() <= 0 || this.lProvinces.size() / Game.getProvincesSize() > 0.35f) {
            return;
        }
        this.EXPANSION_SCORE += this.lProvinces_Active.size() * 0.425f * this.EXPANSION_MODIFIER * ((getDurationPercLEFT() * 0.9f) + 0.1f);
        this.EXPANSION_MODIFIER *= 0.925f - (Game.oR.nextInt(17850) / 100000.0f);
        if (this.EXPANSION_SCORE < 1.0f || (iNextInt = Game.oR.nextInt((int) this.EXPANSION_SCORE)) <= 0) {
            return;
        }
        this.EXPANSION_SCORE -= iNextInt;
        spreadDisease(iNextInt);
    }

    protected final void spreadDisease(int i) {
        try {
            int iMin = (int) Math.min(i, Math.max(Game.getProvincesSize() * 0.01425f, 16.0f));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < this.lProvinces_Active.size(); i2++) {
                if (Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getSeaProvince()) {
                    for (int i3 = 0; i3 < Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvincesSize(); i3++) {
                        if (Game.getProvince(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i3)).provincePlague == null && Game_Calendar.TURN_ID - Game.getProvinceData10(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i3)).t > GameValues.plagues.PLAGUE_PAUSE_FOR_X_DAYS) {
                            arrayList.add(Integer.valueOf(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i3)));
                        }
                    }
                } else {
                    for (int i4 = 0; i4 < Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvincesSize(); i4++) {
                        if (Game.getProvince(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i4)).getWasteland() < 0 && Game.getProvince(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i4)).provincePlague == null && Game_Calendar.TURN_ID - Game.getProvinceData10(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i4)).t > GameValues.plagues.PLAGUE_PAUSE_FOR_X_DAYS) {
                            arrayList.add(Integer.valueOf(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvinces(i4)));
                        }
                    }
                    if (Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getLevelOfPort() > 0 || Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringProvincesSize() < 2) {
                        for (int i5 = 0; i5 < Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringSeaProvincesSize(); i5++) {
                            if (Game.getProvince(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringSeaProvinces(i5)).getWasteland() < 0 && Game.getProvince(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringSeaProvinces(i5)).provincePlague == null && Game_Calendar.TURN_ID - Game.getProvinceData10(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringSeaProvinces(i5)).t > GameValues.plagues.PLAGUE_PAUSE_FOR_X_DAYS) {
                                arrayList.add(Integer.valueOf(Game.getProvince(this.lProvinces_Active.get(i2).intValue()).getNeighboringSeaProvinces(i5)));
                            }
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                int iIntValue = 0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int spreadScore = (getSpreadScore(((Integer) arrayList.get(size)).intValue()) * 3) + 1;
                    arrayList2.add(Integer.valueOf(spreadScore));
                    iIntValue += spreadScore;
                }
                if (iIntValue > 0) {
                    while (arrayList2.size() > 0 && iMin > 0) {
                        int iNextInt = Game.oR.nextInt(iIntValue);
                        int iIntValue2 = 0;
                        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                            iIntValue2 += ((Integer) arrayList2.get(i6)).intValue();
                            if (iIntValue2 > iNextInt) {
                                addProvince(((Integer) arrayList.get(i6)).intValue());
                                iIntValue -= ((Integer) arrayList2.get(i6)).intValue();
                                arrayList2.remove(i6);
                                arrayList.remove(i6);
                                iMin--;
                                break;
                            }
                        }
                    }
                    if (iMin > 0) {
                        spreadDisease(iMin);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
