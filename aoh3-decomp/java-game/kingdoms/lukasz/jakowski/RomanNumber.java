package aoc.kingdoms.lukasz.jakowski;

import com.badlogic.gdx.net.HttpStatus;
import java.util.TreeMap;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RomanNumber {
    private static final TreeMap<Integer, String> map;

    static {
        TreeMap<Integer, String> treeMap = new TreeMap<>();
        map = treeMap;
        treeMap.put(1000, "M");
        treeMap.put(900, "CM");
        treeMap.put(500, "D");
        treeMap.put(Integer.valueOf(HttpStatus.SC_BAD_REQUEST), "CD");
        treeMap.put(100, "C");
        treeMap.put(90, "XC");
        treeMap.put(50, "L");
        treeMap.put(40, "XL");
        treeMap.put(10, "X");
        treeMap.put(9, "IX");
        treeMap.put(5, "V");
        treeMap.put(4, "IV");
        treeMap.put(1, "I");
    }

    public static final String getRoman(int i) {
        try {
            TreeMap<Integer, String> treeMap = map;
            int iIntValue = treeMap.floorKey(Integer.valueOf(i)).intValue();
            return i == iIntValue ? treeMap.get(Integer.valueOf(i)) : treeMap.get(Integer.valueOf(iIntValue)) + getRoman(i - iIntValue);
        } catch (Exception unused) {
            return "";
        }
    }
}
