package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Resource_PriceChangeRandomDown extends EventOutcome {
    public int changePrice;
    public int changePrice_Min;
    public int changePrice_Random;
    public int iResourceID;
    public int timeInMonths;
    public int timeInMonths_Min;
    public int timeInMonths_Random;

    public EventOutcome_Resource_PriceChangeRandomDown(int i, int i2, int i3, int i4) {
        this.changePrice_Min = i;
        this.changePrice_Random = i2;
        this.timeInMonths_Min = Math.max(1, i3);
        this.timeInMonths_Random = Math.max(0, i4);
        this.changePrice = Math.abs(i + (i2 > 0 ? Game.oR.nextInt(i2 + 1) : 0)) * (-1);
        this.timeInMonths = i3 + (i4 > 0 ? Game.oR.nextInt(i4 + 1) : 0);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.goods;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return ResourcesManager.lResources.get(this.iResourceID).Name + ": " + Game.lang.get("PriceChange") + ": " + (this.changePrice > 0 ? "+" : "") + CFG.getPrecision2(this.changePrice, 100) + "%";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return " " + Game.lang.get("APriceModifierIsAppliedUntilX", Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + (this.timeInMonths * 31)));
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getValue1() {
        return this.iResourceID;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public float getValue2() {
        return this.changePrice;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void update() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
                if (ResourcesManager.lResources.get(i).RequiredTechID < 0 || Game.getCiv(Game.player.iCivID).getTechResearched(ResourcesManager.lResources.get(i).RequiredTechID)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (arrayList.size() > 0) {
                this.iResourceID = ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue();
                arrayList.clear();
            }
            this.changePrice = Math.abs(this.changePrice_Min + (this.changePrice_Random > 0 ? Game.oR.nextInt(this.changePrice_Random + 1) : 0)) * (-1);
            this.timeInMonths = this.timeInMonths_Min + (this.timeInMonths_Random > 0 ? Game.oR.nextInt(this.timeInMonths_Random + 1) : 0);
            ResourcesManager.setPriceChangePerc(this.iResourceID, this.changePrice / 100.0f, Game_Calendar.TURN_ID + (this.timeInMonths * 31));
            Game.player.addNotification(new Notification(Notification.Notification_Type.PRICE_CHANGE, ResourcesManager.lResources.get(this.iResourceID).Name + PZBvyl.uDTwAFWPFeacTP + (this.changePrice > 0 ? "+" : "") + CFG.getPrecision2(this.changePrice, 100) + "%", this.iResourceID, Game_Calendar.TURN_ID, this.changePrice > 0 ? Notification.Notification_BG.GREEN : Notification.Notification_BG.RED));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
