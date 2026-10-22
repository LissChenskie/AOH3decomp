package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Resource_PriceChangeUp extends EventOutcome {
    public int changePrice;
    public int changePrice_Min;
    public int changePrice_Random;
    public int iResourceID;
    public int timeInMonths;
    public int timeInMonths_Min;
    public int timeInMonths_Random;

    public EventOutcome_Resource_PriceChangeUp(int i, int i2, int i3, int i4, int i5) {
        this.iResourceID = Math.max(0, Math.min(ResourcesManager.iResourcesSize - 1, i));
        this.changePrice_Min = i2;
        this.changePrice_Random = i3;
        this.timeInMonths_Min = Math.max(1, i4);
        this.timeInMonths_Random = Math.max(0, i5);
        this.changePrice = i2 + (i3 > 0 ? Game.oR.nextInt(i3 + 1) : 0);
        this.timeInMonths = i4 + (i5 > 0 ? Game.oR.nextInt(i5 + 1) : 0);
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
            this.changePrice = this.changePrice_Min + (this.changePrice_Random > 0 ? Game.oR.nextInt(this.changePrice_Random + 1) : 0);
            this.timeInMonths = this.timeInMonths_Min + (this.timeInMonths_Random > 0 ? Game.oR.nextInt(this.timeInMonths_Random + 1) : 0);
            ResourcesManager.setPriceChangePerc(this.iResourceID, this.changePrice / 100.0f, Game_Calendar.TURN_ID + (this.timeInMonths * 31));
            if (ResourcesManager.lResources.get(this.iResourceID).RequiredTechID < 0 || Game.getCiv(Game.player.iCivID).getTechResearched(ResourcesManager.lResources.get(this.iResourceID).RequiredTechID)) {
                Game.player.addNotification(new Notification(Notification.Notification_Type.PRICE_CHANGE, ResourcesManager.lResources.get(this.iResourceID).Name + ": " + (this.changePrice > 0 ? "+" : "") + CFG.getPrecision2(this.changePrice, 100) + LBhZogys.ZIZxOJEOy, this.iResourceID, Game_Calendar.TURN_ID, this.changePrice > 0 ? Notification.Notification_BG.GREEN : Notification.Notification_BG.RED));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
