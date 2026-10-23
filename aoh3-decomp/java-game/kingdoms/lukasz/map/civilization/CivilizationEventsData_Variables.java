package aoc.kingdoms.lukasz.map.civilization;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData_Variables {
    public List<String> v = new ArrayList();

    public void addVariable(String str) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            if (this.v.get(size).equals(str)) {
                return;
            }
        }
        this.v.add(str);
    }

    public boolean hasVariable(String str) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            if (this.v.get(size).equals(str)) {
                return true;
            }
        }
        return false;
    }
}
