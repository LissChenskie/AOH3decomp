package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Game_Calendar {
    public static int CURRENT_AGEID = 0;
    public static boolean ENABLE_COLONIZATION_OF_WASTELAND = true;
    public static float GAME_SPEED = 1.0f;
    public static float GAME_SPEED_MAX = 2.0f;
    public static float GAME_SPEED_MIN = 0.5f;
    public static int HOUR = 0;
    public static int IMG_ECONOMY = 0;
    public static int IMG_ECONOMY_DOWN = 0;
    public static int IMG_ECONOMY_UP = 0;
    public static int IMG_FORT_DEFENSE = 0;
    public static int IMG_MANPOWER = 0;
    public static int IMG_MANPOWER_DISBAND = 0;
    public static int IMG_MANPOWER_MERGE = 0;
    public static int IMG_MANPOWER_REORGANIZE = 0;
    public static int IMG_MANPOWER_SPLIT = 0;
    public static int IMG_MANPOWER_TIME = 0;
    public static int IMG_MANPOWER_UP = 0;
    public static int IMG_TECHNOLOGY = 0;
    public static final int NUM_OF_DAYS = 365;
    private static final int[] NUM_OF_DAYS_IN_MONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    public static final int NUM_OF_MONTHS = 12;
    public static int TURN_ID = 1;
    public static float UPDATE_NUM_OF_DAYS = 30.0f;
    public static int UPDATE_NUM_OF_DAYS_INT = 30;
    public static int currentDay = 1;
    public static int currentMonth = 1;
    public static int currentYear = 2014;

    public static void addYears(int i) {
        currentYear += i;
        updateAge();
    }

    private static List<Integer> backwardsDays(List<Integer> list, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                int age_TurnDays = Game.gameAges.getAge_TurnDays(list.get(3).intValue());
                while (age_TurnDays > 0) {
                    if (age_TurnDays < list.get(0).intValue()) {
                        list.set(0, Integer.valueOf(list.get(0).intValue() - age_TurnDays));
                        break;
                    }
                    list.set(1, Integer.valueOf(list.get(1).intValue() - 1));
                    if (list.get(1).intValue() < 1) {
                        list.set(1, 12);
                        list.set(2, Integer.valueOf(list.get(2).intValue() - 1));
                        list.set(3, Integer.valueOf(Game.gameAges.getAgeOfYear(list.get(2).intValue())));
                    }
                    age_TurnDays -= list.get(0).intValue();
                    list.set(0, Integer.valueOf(NUM_OF_DAYS_IN_MONTH[list.get(1).intValue() - 1]));
                }
            } catch (Exception unused) {
                list.set(1, 1);
            }
        }
        return list;
    }

    private static List<Integer> forwardDays(List<Integer> list, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                list.set(0, Integer.valueOf(list.get(0).intValue() + Game.gameAges.getAge_TurnDays(list.get(3).intValue())));
                while (true) {
                    int iIntValue = list.get(0).intValue();
                    int[] iArr = NUM_OF_DAYS_IN_MONTH;
                    if (iIntValue > iArr[list.get(1).intValue() - 1]) {
                        list.set(0, Integer.valueOf(list.get(0).intValue() - iArr[list.get(1).intValue() - 1]));
                        list.set(1, Integer.valueOf(list.get(1).intValue() + 1));
                        if (list.get(1).intValue() > 12) {
                            list.set(1, 1);
                            list.set(2, Integer.valueOf(list.get(2).intValue() + 1));
                            list.set(3, Integer.valueOf(Game.gameAges.getAgeOfYear(list.get(2).intValue())));
                        }
                    }
                }
            } catch (Exception unused) {
                list.set(1, 1);
            }
        }
        return list;
    }

    public static final String getCurrentDate() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (Game.HOURS_PER_TURN < 24) {
            str = (HOUR < 10 ? "0" : "") + HOUR + ":00, ";
        } else {
            str = "";
        }
        return sb.append(str).append("").append(currentDay).append(" ").append(getMonthName(currentMonth)).append(" ").append(Game.gameAges.getYear(currentYear)).toString();
    }

    public static final String getCurrentDate_Simple() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (Game.HOURS_PER_TURN < 24) {
            str = (HOUR < 10 ? "0" : "") + HOUR + ":00, ";
        } else {
            str = "";
        }
        return sb.append(str).append("").append(currentDay).append(" ").append(currentMonth).append(" ").append(Game.gameAges.getYear(currentYear)).toString();
    }

    public static final String getDate_ByTurnID(int i) {
        int i2 = TURN_ID;
        if (i == i2) {
            return getCurrentDate();
        }
        if (i > i2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(currentDay));
            arrayList.add(Integer.valueOf(currentMonth));
            arrayList.add(Integer.valueOf(currentYear));
            arrayList.add(Integer.valueOf(CURRENT_AGEID));
            List<Integer> listForwardDays = forwardDays(arrayList, i - TURN_ID);
            return "" + listForwardDays.get(0) + " " + getMonthName(listForwardDays.get(1).intValue()) + " " + Game.gameAges.getYear(listForwardDays.get(2).intValue());
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Integer.valueOf(currentDay));
        arrayList2.add(Integer.valueOf(currentMonth));
        arrayList2.add(Integer.valueOf(currentYear));
        arrayList2.add(Integer.valueOf(CURRENT_AGEID));
        List<Integer> listBackwardsDays = backwardsDays(arrayList2, TURN_ID - i);
        return "" + listBackwardsDays.get(0) + " " + getMonthName(listBackwardsDays.get(1).intValue()) + " " + Game.gameAges.getYear(listBackwardsDays.get(2).intValue());
    }

    public static final String getDate_ByTurnID_MessageShort(int i) {
        int i2 = TURN_ID;
        if (i == i2) {
            return "" + currentDay + " " + getMonthName(currentMonth).substring(0, Math.min(getMonthName(currentMonth).length(), 3));
        }
        if (i > i2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(currentDay));
            arrayList.add(Integer.valueOf(currentMonth));
            arrayList.add(Integer.valueOf(currentYear));
            arrayList.add(Integer.valueOf(CURRENT_AGEID));
            List<Integer> listForwardDays = forwardDays(arrayList, i - TURN_ID);
            return "" + listForwardDays.get(0) + " " + getMonthName(listForwardDays.get(1).intValue()).substring(0, Math.min(getMonthName(listForwardDays.get(1).intValue()).length(), 3));
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Integer.valueOf(currentDay));
        arrayList2.add(Integer.valueOf(currentMonth));
        arrayList2.add(Integer.valueOf(currentYear));
        arrayList2.add(Integer.valueOf(CURRENT_AGEID));
        List<Integer> listBackwardsDays = backwardsDays(arrayList2, TURN_ID - i);
        return "" + listBackwardsDays.get(0) + " " + getMonthName(listBackwardsDays.get(1).intValue()).substring(0, Math.min(getMonthName(listBackwardsDays.get(1).intValue()).length(), 3));
    }

    public static final String getMonthName(int i) {
        switch (i) {
            case 1:
                return Game.lang.get("January");
            case 2:
                return Game.lang.get("February");
            case 3:
                return Game.lang.get(MQYGMkZOAcS.ZczAbtSHm);
            case 4:
                return Game.lang.get("April");
            case 5:
                return Game.lang.get("May");
            case 6:
                return Game.lang.get("June");
            case 7:
                return Game.lang.get("July");
            case 8:
                return Game.lang.get("August");
            case 9:
                return Game.lang.get("September");
            case 10:
                return Game.lang.get("October");
            case 11:
                return Game.lang.get("November");
            case 12:
                return Game.lang.get("December");
            case 13:
                return Game.lang.get("January");
            default:
                return Game.lang.get("December");
        }
    }

    public static final String getNumOfDates_ByTurnID(int i) {
        String str;
        String str2;
        int i2 = TURN_ID;
        if (i == i2) {
            return Game.lang.get("DaysX", 0);
        }
        if (i > i2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(currentDay));
            arrayList.add(Integer.valueOf(currentMonth));
            arrayList.add(Integer.valueOf(currentYear));
            arrayList.add(Integer.valueOf(CURRENT_AGEID));
            List<Integer> listForwardDays = forwardDays(arrayList, i - TURN_ID);
            return "" + listForwardDays.get(0) + " " + getMonthName(listForwardDays.get(1).intValue()) + " " + Game.gameAges.getYear(listForwardDays.get(2).intValue());
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Integer.valueOf(currentDay));
        arrayList2.add(Integer.valueOf(currentMonth));
        arrayList2.add(Integer.valueOf(currentYear));
        arrayList2.add(Integer.valueOf(CURRENT_AGEID));
        List<Integer> numOfDates_ByTurnID = getNumOfDates_ByTurnID(backwardsDays(arrayList2, TURN_ID - i));
        StringBuilder sb = new StringBuilder("");
        if (numOfDates_ByTurnID.get(2).intValue() > 0) {
            str = Game.lang.get("YearsX", numOfDates_ByTurnID.get(2).intValue()) + ((numOfDates_ByTurnID.get(1).intValue() > 0 || numOfDates_ByTurnID.get(0).intValue() > 0) ? " " : "");
        } else {
            str = "";
        }
        StringBuilder sbAppend = sb.append(str);
        if (numOfDates_ByTurnID.get(1).intValue() > 0) {
            str2 = Game.lang.get("MonthsX", numOfDates_ByTurnID.get(1).intValue()) + (numOfDates_ByTurnID.get(0).intValue() <= 0 ? "" : " ");
        } else {
            str2 = "";
        }
        return sbAppend.append(str2).append(numOfDates_ByTurnID.get(0).intValue() > 0 ? Game.lang.get("DaysX", numOfDates_ByTurnID.get(0).intValue()) : "").toString();
    }

    private static List<Integer> getNumOfDates_ByTurnID(List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        arrayList.add(0);
        arrayList.add(0);
        arrayList.set(2, Integer.valueOf(Math.abs(currentYear - list.get(2).intValue())));
        list.set(2, Integer.valueOf(currentYear));
        if (list.get(1).intValue() == currentMonth) {
            int iIntValue = list.get(0).intValue();
            int i = currentDay;
            if (iIntValue > i) {
                arrayList.set(1, Integer.valueOf(((Integer) arrayList.get(1)).intValue() - 1));
                arrayList.set(0, Integer.valueOf(currentDay + (NUM_OF_DAYS_IN_MONTH[list.get(1).intValue() - 1] - list.get(0).intValue())));
                if (((Integer) arrayList.get(1)).intValue() < 0) {
                    arrayList.set(1, 11);
                    arrayList.set(2, Integer.valueOf(((Integer) arrayList.get(2)).intValue() - 1));
                    if (((Integer) arrayList.get(2)).intValue() < 0) {
                        arrayList.set(2, 0);
                    }
                }
            } else {
                arrayList.set(0, Integer.valueOf(i - list.get(0).intValue()));
            }
        } else {
            int iIntValue2 = list.get(1).intValue();
            int i2 = currentMonth;
            if (iIntValue2 < i2) {
                arrayList.set(1, Integer.valueOf(i2 - list.get(1).intValue()));
                int iIntValue3 = list.get(0).intValue();
                int i3 = currentDay;
                if (iIntValue3 > i3) {
                    arrayList.set(1, Integer.valueOf(((Integer) arrayList.get(1)).intValue() - 1));
                    arrayList.set(0, Integer.valueOf(currentDay + (NUM_OF_DAYS_IN_MONTH[list.get(1).intValue() - 1] - list.get(0).intValue())));
                } else {
                    arrayList.set(0, Integer.valueOf(i3 - list.get(0).intValue()));
                }
            } else {
                if (((Integer) arrayList.get(2)).intValue() > 0) {
                    arrayList.set(2, Integer.valueOf(((Integer) arrayList.get(2)).intValue() - 1));
                }
                arrayList.set(1, Integer.valueOf(currentMonth + (12 - list.get(1).intValue())));
                int iIntValue4 = list.get(0).intValue();
                int i4 = currentDay;
                if (iIntValue4 > i4) {
                    arrayList.set(1, Integer.valueOf(((Integer) arrayList.get(1)).intValue() - 1));
                    arrayList.set(0, Integer.valueOf(currentDay + (NUM_OF_DAYS_IN_MONTH[list.get(1).intValue() - 1] - list.get(0).intValue())));
                } else {
                    arrayList.set(0, Integer.valueOf(i4 - list.get(0).intValue()));
                }
            }
        }
        return arrayList;
    }

    public static final int getNumOfDaysInMonth(int i) {
        try {
            return NUM_OF_DAYS_IN_MONTH[i - 1];
        } catch (Exception unused) {
            return 28;
        }
    }

    public static final String getNumOfDays_ByTurnsPlayed(int i) {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(currentDay));
        arrayList.add(Integer.valueOf(currentMonth));
        arrayList.add(Integer.valueOf(currentYear));
        arrayList.add(Integer.valueOf(CURRENT_AGEID));
        List<Integer> numOfDates_ByTurnID = getNumOfDates_ByTurnID(backwardsDays(arrayList, i));
        StringBuilder sb = new StringBuilder("");
        if (numOfDates_ByTurnID.get(2).intValue() > 0) {
            str = Game.lang.get("YearsX", numOfDates_ByTurnID.get(2).intValue()) + ((numOfDates_ByTurnID.get(1).intValue() > 0 || numOfDates_ByTurnID.get(0).intValue() > 0) ? " " : "");
        } else {
            str = "";
        }
        StringBuilder sbAppend = sb.append(str);
        if (numOfDates_ByTurnID.get(1).intValue() > 0) {
            str2 = Game.lang.get("MonthsX", numOfDates_ByTurnID.get(1).intValue()) + (numOfDates_ByTurnID.get(0).intValue() <= 0 ? "" : " ");
        } else {
            str2 = "";
        }
        return sbAppend.append(str2).append(numOfDates_ByTurnID.get(0).intValue() > 0 ? Game.lang.get("DaysX", numOfDates_ByTurnID.get(0).intValue()) : "").toString();
    }

    public static final String getNumOfDays_ByTurnsPlayed_WithoutDays(int i) {
        String str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(currentDay));
        arrayList.add(Integer.valueOf(currentMonth));
        arrayList.add(Integer.valueOf(currentYear));
        arrayList.add(Integer.valueOf(CURRENT_AGEID));
        List<Integer> numOfDates_ByTurnID = getNumOfDates_ByTurnID(backwardsDays(arrayList, i));
        String string = PZBvyl.rZxYDxeTjFGG;
        StringBuilder sb = new StringBuilder(string);
        if (numOfDates_ByTurnID.get(2).intValue() > 0) {
            str = Game.lang.get("YearsX", numOfDates_ByTurnID.get(2).intValue()) + ((numOfDates_ByTurnID.get(1).intValue() > 0 || numOfDates_ByTurnID.get(0).intValue() > 0) ? " " : string);
        } else {
            str = string;
        }
        StringBuilder sbAppend = sb.append(str);
        if (numOfDates_ByTurnID.get(1).intValue() > 0) {
            StringBuilder sbAppend2 = new StringBuilder().append(Game.lang.get("MonthsX", numOfDates_ByTurnID.get(1).intValue()));
            if (numOfDates_ByTurnID.get(0).intValue() > 0) {
                string = " ";
            }
            string = sbAppend2.append(string).toString();
        }
        return sbAppend.append(string).toString();
    }

    public static void minusMonth() {
        try {
            int i = currentMonth - 1;
            currentMonth = i;
            if (i < 1) {
                currentMonth = 12;
            }
            int i2 = currentDay;
            int[] iArr = NUM_OF_DAYS_IN_MONTH;
            int i3 = currentMonth;
            if (i2 > iArr[i3 - 1]) {
                currentDay = iArr[i3 - 1];
            }
        } catch (Exception unused) {
            currentMonth = 1;
        }
    }

    public static void nextDays(int i) {
        try {
            currentDay += i;
            while (true) {
                int i2 = currentDay;
                int[] iArr = NUM_OF_DAYS_IN_MONTH;
                int i3 = currentMonth;
                if (i2 <= iArr[i3 - 1]) {
                    return;
                }
                currentDay = i2 - iArr[i3 - 1];
                int i4 = i3 + 1;
                currentMonth = i4;
                if (i4 > 12) {
                    currentMonth = 1;
                    currentYear++;
                    updateAge();
                }
            }
        } catch (Exception unused) {
            currentMonth = 1;
        }
    }

    public static void plusMonth() {
        try {
            int i = currentMonth + 1;
            currentMonth = i;
            if (i > 12) {
                currentMonth = 1;
            }
            int i2 = currentDay;
            int[] iArr = NUM_OF_DAYS_IN_MONTH;
            int i3 = currentMonth;
            if (i2 > iArr[i3 - 1]) {
                currentDay = iArr[i3 - 1];
            }
        } catch (Exception unused) {
            currentMonth = 1;
        }
    }

    public static void updateAge() {
        updateAge(true);
    }

    public static void updateAge(boolean z) {
        int ageOfYear = Game.gameAges.getAgeOfYear(currentYear);
        boolean z2 = CURRENT_AGEID != ageOfYear;
        CURRENT_AGEID = ageOfYear;
        if (z2 && Game.menuManager.getInGame()) {
            HOUR = 0;
            ButtonTopDate.updateMaxWidth();
            MapScenarios.updateUQ_UI();
            if (z) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = Game.player.iCivID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("WelcomeInTheNewAge"), Game.gameAges.lAges.get(CURRENT_AGEID).Name);
                InGame_Info.imgID = Images.infoCrown;
            }
            Game.menuManager.updateInGameFlag();
        }
        updateManpowerImg();
    }

    public static void updateDateNextTurn() {
        nextDays(Game.gameAges.getAge_TurnDays(CURRENT_AGEID));
    }

    public static final void updateManpowerImg() {
        if (Game.gameAges.lAges.get(CURRENT_AGEID).OVER_IMAGE_ID == 0) {
            IMG_MANPOWER = Images.manpower;
            IMG_MANPOWER_SPLIT = Images.splitArmy;
            IMG_MANPOWER_MERGE = Images.mergeArmy;
            IMG_MANPOWER_REORGANIZE = Images.reorganizeArmy;
            IMG_MANPOWER_DISBAND = Images.disbandArmy;
            IMG_MANPOWER_UP = Images.manpowerUp;
            IMG_MANPOWER_TIME = Images.manpowerTime;
            IMG_TECHNOLOGY = Images.technology;
            IMG_ECONOMY = Images.economy;
            IMG_ECONOMY_UP = Images.economyUp;
            IMG_ECONOMY_DOWN = Images.economyDown;
            IMG_FORT_DEFENSE = Images.fortDefense;
            return;
        }
        if (Game.gameAges.lAges.get(CURRENT_AGEID).OVER_IMAGE_ID == 1) {
            IMG_MANPOWER = Images.manpower;
            IMG_MANPOWER_SPLIT = Images.splitArmy;
            IMG_MANPOWER_MERGE = Images.mergeArmy;
            IMG_MANPOWER_REORGANIZE = Images.reorganizeArmy;
            IMG_MANPOWER_DISBAND = Images.disbandArmy;
            IMG_MANPOWER_UP = Images.manpowerUp;
            IMG_MANPOWER_TIME = Images.manpowerTime;
            IMG_TECHNOLOGY = Images.technology;
            IMG_ECONOMY = Images.economy;
            IMG_ECONOMY_UP = Images.economyUp;
            IMG_ECONOMY_DOWN = Images.economyDown;
            IMG_FORT_DEFENSE = Images.fortDefense;
            return;
        }
        if (Game.gameAges.lAges.get(CURRENT_AGEID).OVER_IMAGE_ID == 2) {
            IMG_MANPOWER = Images.manpower2;
            IMG_MANPOWER_SPLIT = Images.splitArmy2;
            IMG_MANPOWER_MERGE = Images.mergeArmy2;
            IMG_MANPOWER_REORGANIZE = Images.reorganizeArmy2;
            IMG_MANPOWER_DISBAND = Images.disbandArmy2;
            IMG_MANPOWER_UP = Images.manpower2Up;
            IMG_MANPOWER_TIME = Images.manpower2Time;
            IMG_TECHNOLOGY = Images.technology;
            IMG_ECONOMY = Images.economy;
            IMG_ECONOMY_UP = Images.economyUp;
            IMG_ECONOMY_DOWN = Images.economyDown;
            IMG_FORT_DEFENSE = Images.fortDefense_2;
            return;
        }
        IMG_MANPOWER = Images.manpower3;
        IMG_MANPOWER_SPLIT = Images.splitArmy3;
        IMG_MANPOWER_MERGE = Images.mergeArmy3;
        IMG_MANPOWER_REORGANIZE = Images.reorganizeArmy3;
        IMG_MANPOWER_DISBAND = Images.disbandArmy3;
        IMG_MANPOWER_UP = Images.manpower3Up;
        IMG_MANPOWER_TIME = Images.manpower3Time;
        IMG_TECHNOLOGY = Images.technology2;
        IMG_ECONOMY = Images.economy2;
        IMG_ECONOMY_UP = Images.economyUp2;
        IMG_ECONOMY_DOWN = Images.economyDown2;
        IMG_FORT_DEFENSE = Images.fortDefense_2;
    }
}
