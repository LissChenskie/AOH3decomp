package aoc.kingdoms.lukasz.jakowski.GameThreads;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import java.util.concurrent.ConcurrentLinkedDeque;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameThread_Update extends Thread {
    public long timeSleep;
    public boolean running = true;
    private ConcurrentLinkedDeque<Game.SimpleTask> simpleTasks = new ConcurrentLinkedDeque<>();
    public int iLastUpdateTurnID = -1;

    public final void addSimpleTask(Game.SimpleTask simpleTask) {
        if (this.simpleTasks.contains(simpleTask)) {
            return;
        }
        this.simpleTasks.add(simpleTask);
    }

    public final void addSimpleTask_First(Game.SimpleTask simpleTask) {
        if (this.simpleTasks.contains(simpleTask)) {
            return;
        }
        this.simpleTasks.addFirst(simpleTask);
    }

    public void clearData() {
        this.simpleTasks.clear();
        this.iLastUpdateTurnID = 0;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.running) {
            try {
                this.timeSleep = System.currentTimeMillis();
                Game.updateGame();
                updateSimpleTask();
                if (Game.menuManager.getInGame() && Game_Calendar.TURN_ID != this.iLastUpdateTurnID) {
                    if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_CURRENT_SITUATION_EVERY_X_DAYS == 0) {
                        Game.player.currSituation.updateCurrentSituation();
                    }
                    Game.player.updateNotifications();
                    Game.player.updateMessages();
                    this.iLastUpdateTurnID = Game_Calendar.TURN_ID;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                try {
                    Thread.sleep(Math.max(1L, 15 - (System.currentTimeMillis() - this.timeSleep)));
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }

    public final void updateSimpleTask() {
        try {
            for (int size = this.simpleTasks.size() - 1; size >= 0; size--) {
                try {
                    this.simpleTasks.remove().update();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
