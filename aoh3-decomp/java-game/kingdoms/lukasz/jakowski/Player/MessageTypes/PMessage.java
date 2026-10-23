package aoc.kingdoms.lukasz.jakowski.Player.MessageTypes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PMessage {
    public int expiresTurnID;
    public int fromCivID;
    public int iValue1;
    public String key = CFG.extraRandomTag();
    public long time = CFG.currentTimeMillis;

    public PMessage(int i, int i2, int i3) {
        this.fromCivID = i;
        this.expiresTurnID = i2;
        this.iValue1 = i3;
    }

    public void actionClick() {
    }

    public MenuElement_Hover buildElementHover() {
        return null;
    }

    public int getImageID() {
        return Images.diplomacy;
    }

    public void onAccept() {
    }

    public void onRefuse() {
    }
}
