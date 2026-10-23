package aoc.kingdoms.lukasz.jakowski;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AmbienceManager {
    public static int lastPosX;
    public static int lastPosY;
    public static int lastProvinceID;
    public long VOLUME_TIME = 2000;
    public long VOLUME_TIME_DOWN = 1500;
    public List<Music> lSounds = new ArrayList();
    public static List<Ambience> ambiences = new ArrayList();
    public static int activeNew = -1;
    public static int activeOld = -1;

    public class Ambience {
        public int id;
        public long idSoundPlaying = 0;
        public boolean startedPlaying = false;
        public boolean isPlaying = false;
        public boolean updateVolumeUP = true;
        public boolean updateTime = false;
        public long lTime = 0;

        public Ambience(int i) {
            this.id = i;
        }

        public final void update() {
        }
    }

    public static final String getFileExtension() {
        return CFG.isiOS ? "mp3" : "ogg";
    }

    public final int addSoundSFX(String str) {
        try {
            this.lSounds.add(Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_AMBIENCE_PATH + str)));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return this.lSounds.size() - 1;
    }

    public boolean loadAmbience() {
        return CFG.isDesktop() || GameValues.value.MOBILE_LOAD_AMBIENCE;
    }

    public final void loadSounds() {
        if (loadAmbience()) {
            for (String str : FileManager.loadFile("audio/ambience/AoH.txt").readString().split(";")) {
                ambiences.add(new Ambience(addSoundSFX(str + "." + getFileExtension())));
            }
        }
    }

    public final void update() {
        int provinceID_Point;
        int i;
        if (loadAmbience()) {
            try {
                if (Game.mapScale.getCurrentScale() > GameValues.inGame.AMBIENCE_SCALE && (lastPosX != Game.mapCoords.getPosX() || lastPosY != Game.mapCoords.getPosY())) {
                    lastPosX = Game.mapCoords.getPosX();
                    lastPosY = Game.mapCoords.getPosY();
                    if ((lastProvinceID < 0 || !Game.setProvinceID_IsMouseOverAProvinceID((int) ((-Game.mapCoords.getPosX()) + ((CFG.GAME_WIDTH / 2) / Game.mapScale.getCurrentScale())), (int) ((-Game.mapCoords.getPosY()) + ((CFG.GAME_HEIGHT / 2) / Game.mapScale.getCurrentScale())), lastProvinceID)) && (provinceID_Point = Game.setProvinceID_Point((int) ((-Game.mapCoords.getPosX()) + ((CFG.GAME_WIDTH / 2) / Game.mapScale.getCurrentScale())), (int) ((-Game.mapCoords.getPosY()) + ((CFG.GAME_HEIGHT / 2) / Game.mapScale.getCurrentScale())))) != lastProvinceID && provinceID_Point >= 0) {
                        if (activeNew != Game.terrainManager.terrains.get(Game.getProvince(provinceID_Point).getTerrainID()).Ambience) {
                            if (activeOld >= 0 || (i = activeNew) < 0) {
                                int i2 = activeNew;
                                if (i2 >= 0) {
                                    ambiences.get(i2).isPlaying = false;
                                    ambiences.get(activeNew).isPlaying = false;
                                    ambiences.get(activeNew).updateVolumeUP = false;
                                    this.lSounds.get(ambiences.get(activeNew).id).pause();
                                }
                            } else {
                                activeOld = i;
                            }
                            activeNew = Game.terrainManager.terrains.get(Game.getProvince(provinceID_Point).getTerrainID()).Ambience;
                        }
                        lastProvinceID = provinceID_Point;
                        if (activeNew == activeOld) {
                            activeOld = -1;
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                int i3 = activeOld;
                if (i3 >= 0 && ambiences.get(i3).isPlaying) {
                    if (ambiences.get(activeOld).updateTime) {
                        ambiences.get(activeOld).updateTime = false;
                        ambiences.get(activeOld).updateVolumeUP = true;
                        ambiences.get(activeOld).lTime = CFG.currentTimeMillis;
                    }
                    Music music = this.lSounds.get(ambiences.get(activeOld).id);
                    SoundsManager soundsManager = Game.soundsManager;
                    float f = SoundsManager.ambienceVolume;
                    SoundsManager soundsManager2 = Game.soundsManager;
                    music.setVolume(f * SoundsManager.masterVolume * Math.max(0.0f, 1.0f - ((CFG.currentTimeMillis - ambiences.get(activeOld).lTime) / this.VOLUME_TIME_DOWN)));
                    if (CFG.currentTimeMillis - ambiences.get(activeOld).lTime > this.VOLUME_TIME) {
                        ambiences.get(activeOld).isPlaying = false;
                        ambiences.get(activeOld).isPlaying = false;
                        ambiences.get(activeOld).updateVolumeUP = false;
                        this.lSounds.get(ambiences.get(activeOld).id).pause();
                        activeOld = -1;
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
            try {
                if (activeNew >= 0) {
                    if (Game.mapScale.getCurrentScale() <= GameValues.inGame.AMBIENCE_SCALE) {
                        if (ambiences.get(activeNew).isPlaying) {
                            if (ambiences.get(activeNew).updateTime) {
                                ambiences.get(activeNew).updateTime = false;
                                ambiences.get(activeNew).updateVolumeUP = true;
                                ambiences.get(activeNew).lTime = CFG.currentTimeMillis;
                            }
                            Music music2 = this.lSounds.get(ambiences.get(activeNew).id);
                            SoundsManager soundsManager3 = Game.soundsManager;
                            float f2 = SoundsManager.ambienceVolume;
                            SoundsManager soundsManager4 = Game.soundsManager;
                            music2.setVolume(f2 * SoundsManager.masterVolume * Math.max(0.0f, 1.0f - ((CFG.currentTimeMillis - ambiences.get(activeNew).lTime) / this.VOLUME_TIME_DOWN)));
                            if (CFG.currentTimeMillis - ambiences.get(activeNew).lTime > this.VOLUME_TIME) {
                                ambiences.get(activeNew).isPlaying = false;
                                ambiences.get(activeNew).isPlaying = false;
                                ambiences.get(activeNew).updateVolumeUP = false;
                                this.lSounds.get(ambiences.get(activeNew).id).pause();
                                activeNew = -1;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!ambiences.get(activeNew).startedPlaying) {
                        ambiences.get(activeNew).startedPlaying = true;
                        ambiences.get(activeNew).updateVolumeUP = true;
                        this.lSounds.get(ambiences.get(activeNew).id).setLooping(true);
                        this.lSounds.get(ambiences.get(activeNew).id).setVolume(0.0f);
                        this.lSounds.get(ambiences.get(activeNew).id).play();
                        ambiences.get(activeNew).lTime = CFG.currentTimeMillis;
                        return;
                    }
                    if (!ambiences.get(activeNew).isPlaying) {
                        ambiences.get(activeNew).isPlaying = true;
                        ambiences.get(activeNew).updateVolumeUP = true;
                        this.lSounds.get(ambiences.get(activeNew).id).play();
                        this.lSounds.get(ambiences.get(activeNew).id).setVolume(0.0f);
                        ambiences.get(activeNew).lTime = CFG.currentTimeMillis;
                        return;
                    }
                    if (ambiences.get(activeNew).updateVolumeUP) {
                        if (CFG.currentTimeMillis - ambiences.get(activeNew).lTime > this.VOLUME_TIME) {
                            ambiences.get(activeNew).updateVolumeUP = false;
                        }
                        Music music3 = this.lSounds.get(ambiences.get(activeNew).id);
                        SoundsManager soundsManager5 = Game.soundsManager;
                        float f3 = SoundsManager.ambienceVolume;
                        SoundsManager soundsManager6 = Game.soundsManager;
                        music3.setVolume(f3 * SoundsManager.masterVolume * Math.min(1.0f, (CFG.currentTimeMillis - ambiences.get(activeNew).lTime) / this.VOLUME_TIME));
                        ambiences.get(activeNew).updateTime = true;
                    }
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }
}
