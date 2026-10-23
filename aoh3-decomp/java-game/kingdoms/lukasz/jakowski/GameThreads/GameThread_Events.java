package aoc.kingdoms.lukasz.jakowski.GameThreads;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameThread_Events extends Thread {
    public static int THREAD_TURN_ID;
    public long timeSleep;
    public boolean running = true;
    public int iLastUpdateTurnID = 0;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.running) {
            try {
                this.timeSleep = System.currentTimeMillis();
                if (!Game.menuManager.getInGame() || Game_Calendar.TURN_ID == this.iLastUpdateTurnID) {
                    try {
                        try {
                            Thread.sleep(Math.max(1L, 10 - (System.currentTimeMillis() - this.timeSleep)));
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } catch (Exception e2) {
                        CFG.exceptionStack(e2);
                    }
                } else {
                    int i = THREAD_TURN_ID + 1;
                    THREAD_TURN_ID = i;
                    EventsManager.runEvents(i);
                    EventsManager.runEvents_Global(THREAD_TURN_ID);
                    Game.player.updateEvents();
                    this.iLastUpdateTurnID = Game_Calendar.TURN_ID;
                    Thread.sleep(Math.max(1L, 10 - (System.currentTimeMillis() - this.timeSleep)));
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }
}
