package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SoundsManager {
    public static int ARMY_CLICK = 0;
    public static int BUDGET_CLICK = 0;
    public static int BUILD0 = 0;
    public static int BUILD1 = 0;
    public static int CIV_OPTIONS_CLICK = 0;
    public static int CIV_OPTIONS_CLICK1 = 0;
    public static int DIPLOMACY0 = 0;
    public static int DIPLOMACY1 = 0;
    public static int DIPLOMACY_CLICK = 0;
    public static int EVENT = 0;
    public static int EVENT_INFO = 0;
    public static int FLAG_CLICK = 0;
    public static int GENERALS_CLICK = 0;
    public static int INFO_BOX = 0;
    public static int LEGACY_0 = 0;
    public static int LEGACY_1 = 0;
    public static int LEGACY_2 = 0;
    public static int MAP_MODE0 = 0;
    public static int MAP_MODE1 = 0;
    public static int MOVE_0 = 0;
    public static int MOVE_1 = 0;
    public static int MOVE_2 = 0;
    public static int MOVE_3 = 0;
    public static int MOVE_4 = 0;
    public static int MOVE_SEA_0 = 0;
    public static int MOVE_SEA_1 = 0;
    public static float PERC_VOLUME_KEYBOARD = 0.9f;
    public static float PERC_VOLUME_SELECT_PROVINCE = 0.95f;
    public static int PLAY = 0;
    public static int SIEGE = 0;
    public static int SOUND_ADVANTAGE0 = 0;
    public static int SOUND_ADVANTAGE1 = 0;
    public static int SOUND_ADVANTAGE2 = 0;
    public static int SOUND_BATTLE = 0;
    public static int SOUND_BATTLE2 = 0;
    public static int SOUND_CLICK2 = 0;
    public static int SOUND_CLICK3 = 0;
    public static int SOUND_CLICK_MAIN = 0;
    public static int SOUND_CLICK_MAIN2 = 0;
    public static int SOUND_CLICK_PAGE = 0;
    public static int SOUND_CLICK_PAGE_1 = 0;
    public static int SOUND_CLICK_TOP = 0;
    public static int SOUND_CLICK_WAR = 0;
    public static int SOUND_COIN_0 = 0;
    public static int SOUND_COIN_1 = 0;
    public static int SOUND_COIN_2 = 0;
    public static int SOUND_CORES = 0;
    public static int SOUND_CREATE_ARMY = 0;
    public static int SOUND_ECONOMY_0 = 0;
    public static int SOUND_ECONOMY_1 = 0;
    public static int SOUND_FORMABLE = 0;
    public static int SOUND_GOLD_0 = 0;
    public static int SOUND_GOLD_1 = 0;
    public static int SOUND_GOLD_2 = 0;
    public static int SOUND_GOLD_3 = 0;
    public static int SOUND_GOLD_4 = 0;
    public static int SOUND_GOLD_LEVEL_0 = 0;
    public static int SOUND_GOLD_LEVEL_1 = 0;
    public static int SOUND_GOLD_LEVEL_2 = 0;
    public static int SOUND_GROWTH_RATE = 0;
    public static int SOUND_GROWTH_RATE2 = 0;
    public static int SOUND_HOVER_0 = 0;
    public static int SOUND_HOVER_1 = 0;
    public static int SOUND_HOVER_2 = 0;
    public static int SOUND_HOVER_3 = 0;
    public static int SOUND_HOVER_4 = 0;
    public static int SOUND_HOVER_5 = 0;
    public static int SOUND_HOVER_6 = 0;
    public static int SOUND_HOVER_7 = 0;
    public static int SOUND_HOVER_8 = 0;
    public static int SOUND_INCREASE_MANPOWER = 0;
    public static int SOUND_INCREASE_MANPOWER2 = 0;
    public static int SOUND_INFRASTRUCTURE = 0;
    public static int SOUND_INFRASTRUCTURE_1 = 0;
    public static int SOUND_LOAN = 0;
    public static int SOUND_LOAN_REPAY = 0;
    public static int SOUND_NUKE = 0;
    public static int SOUND_NUKE2 = 0;
    public static int SOUND_PLAY_NEW_GAME = 0;
    public static int SOUND_PROVINCE = 0;
    public static int SOUND_RECRUIT_ARMY_0 = 0;
    public static int SOUND_RECRUIT_ARMY_1 = 0;
    public static int SOUND_RECRUIT_CANCEL = 0;
    public static int SOUND_SELECTED_ARMY_0 = 0;
    public static int SOUND_SELECTED_ARMY_1 = 0;
    public static int SOUND_WAR_END = 0;
    public static int TAB_0 = 0;
    public static int TAB_1 = 0;
    public static int TECHNOLOGY = 0;
    public static int TECHNOLOGY_CLICK = 0;
    public static int WAR = 0;
    public static float ambienceVolume = 0.2f;
    public static int iCivOptionsSound = 0;
    public static int iGrowthRate = 0;
    public static boolean isWarMusicPlaying = false;
    public static float masterVolume = 1.0f;
    public static float musicVolume = 0.4f;
    public static float soundsVolume = 0.2f;
    public long SOUNDS_RANDOM_TIME;
    public float hoverVolume;
    public Music currentMusic = null;
    public int iCurrentMusicID = 0;
    public List<Sound> lSoundsRandom = new ArrayList();
    public int soundsRandomSize = 0;
    public long WAR_MUSIC_LAST_TIME_PLAYED = 0;
    public int iHoverID = 0;
    public long lHoverTime = 0;
    public int iSelectArmy = 0;
    public long lRecruitTime = 0;
    public int iRecruitArmy = 0;
    public int tabNum = 0;
    public int iDiplomacyButton = 0;
    public int iEconomy = 0;
    public int iIncreaseManpower = 0;
    public List<String> lTitles = new ArrayList();
    public List<String> lTitlesWar = new ArrayList();
    public List<Sound> lSounds = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$1, reason: invalid class name */
    class AnonymousClass1 implements Music.OnCompletionListener {
        AnonymousClass1() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$10, reason: invalid class name */
    class AnonymousClass10 implements Music.OnCompletionListener {
        AnonymousClass10() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$11, reason: invalid class name */
    class AnonymousClass11 implements Music.OnCompletionListener {
        AnonymousClass11() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$2, reason: invalid class name */
    class AnonymousClass2 implements Music.OnCompletionListener {
        AnonymousClass2() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$3, reason: invalid class name */
    class AnonymousClass3 implements Music.OnCompletionListener {
        AnonymousClass3() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$4, reason: invalid class name */
    class AnonymousClass4 implements Music.OnCompletionListener {
        AnonymousClass4() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$5, reason: invalid class name */
    class AnonymousClass5 implements Music.OnCompletionListener {
        AnonymousClass5() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$6, reason: invalid class name */
    class AnonymousClass6 implements Music.OnCompletionListener {
        AnonymousClass6() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$7, reason: invalid class name */
    class AnonymousClass7 implements Music.OnCompletionListener {
        AnonymousClass7() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$8, reason: invalid class name */
    class AnonymousClass8 implements Music.OnCompletionListener {
        AnonymousClass8() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SoundsManager$9, reason: invalid class name */
    class AnonymousClass9 implements Music.OnCompletionListener {
        AnonymousClass9() {
        }

        @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
        public void onCompletion(Music music) {
            SoundsManager.this.loadNextMusic();
        }
    }

    public SoundsManager() {
        this.hoverVolume = 0.5f;
        SOUND_CLICK_MAIN = addSoundSFX("click." + getFileExtension());
        SOUND_CLICK_MAIN2 = addSoundSFX("click." + getFileExtension());
        SOUND_CLICK2 = addSound("click2." + getFileExtension());
        SOUND_CLICK3 = addSound("click3." + getFileExtension());
        SOUND_CLICK_PAGE = addSound("click_page_0." + getFileExtension());
        SOUND_CLICK_PAGE_1 = addSound("click_page_1." + getFileExtension());
        SOUND_PROVINCE = addSoundSFX("clickProvince." + getFileExtension());
        SOUND_HOVER_0 = addSoundSFX("hover0." + getFileExtension());
        SOUND_HOVER_1 = addSoundSFX("hover1." + getFileExtension());
        SOUND_HOVER_2 = addSoundSFX("hover2." + getFileExtension());
        SOUND_HOVER_3 = addSoundSFX("hover3." + getFileExtension());
        SOUND_HOVER_4 = addSoundSFX("hover4." + getFileExtension());
        SOUND_HOVER_5 = addSoundSFX("hover5." + getFileExtension());
        SOUND_HOVER_6 = addSoundSFX("hover6." + getFileExtension());
        SOUND_HOVER_7 = addSoundSFX("hover7." + getFileExtension());
        SOUND_HOVER_8 = addSoundSFX("hover8." + getFileExtension());
        masterVolume = Game.settingsManager.VOLUME_MASTER;
        setSoundsVolume(Game.settingsManager.VOLUME_SOUNDS);
        setAmbienceVolume(Game.settingsManager.VOLUME_AMBIENCE);
        setMusicVolume(Game.settingsManager.VOLUME_MUSIC);
        this.hoverVolume = Game.settingsManager.VOLUME_HOVER;
    }

    public static int getClickSound_CivOptions() {
        int i = iCivOptionsSound;
        iCivOptionsSound = i + 1;
        return i % 2 != 0 ? CIV_OPTIONS_CLICK1 : CIV_OPTIONS_CLICK;
    }

    public static final String getFileExtension() {
        return CFG.isiOS ? "mp3" : "ogg";
    }

    public static int getGrowthRate() {
        int i = iGrowthRate;
        iGrowthRate = i + 1;
        return i % 2 != 0 ? SOUND_GROWTH_RATE2 : SOUND_GROWTH_RATE;
    }

    public final int addSound(String str) {
        try {
            this.lSounds.add(Gdx.audio.newSound(FileManager.loadFile(CFG.FILE_SOUNDS_PATH + str)));
        } catch (GdxRuntimeException e) {
            e.printStackTrace();
            try {
                this.lSounds.add(Gdx.audio.newSound(Gdx.files.local(CFG.FILE_SOUNDS_PATH + str)));
            } catch (GdxRuntimeException unused) {
                e.printStackTrace();
            }
        }
        return this.lSounds.size() - 1;
    }

    public final int addSoundSFX(String str) {
        try {
            this.lSounds.add(Gdx.audio.newSound(FileManager.loadFile(CFG.FILE_SFX_PATH + str)));
        } catch (GdxRuntimeException e) {
            e.printStackTrace();
            try {
                this.lSounds.add(Gdx.audio.newSound(Gdx.files.local(CFG.FILE_SFX_PATH + str)));
            } catch (GdxRuntimeException unused) {
                e.printStackTrace();
            }
        }
        return this.lSounds.size() - 1;
    }

    public final int addSoundSFXRandom(String str) {
        try {
            this.lSoundsRandom.add(Gdx.audio.newSound(FileManager.loadFile(CFG.FILE_SFX_RANDOM_PATH + str)));
        } catch (GdxRuntimeException e) {
            e.printStackTrace();
            try {
                this.lSoundsRandom.add(Gdx.audio.newSound(Gdx.files.local(CFG.FILE_SFX_RANDOM_PATH + str)));
            } catch (GdxRuntimeException unused) {
                e.printStackTrace();
            }
        }
        return this.lSoundsRandom.size() - 1;
    }

    public final void dispose() {
        for (int i = 0; i < this.lSounds.size(); i++) {
            this.lSounds.get(i).dispose();
        }
        this.currentMusic.dispose();
    }

    public final void disposeCurrentMusic() {
        Music music = this.currentMusic;
        if (music != null) {
            music.stop();
            this.currentMusic.dispose();
        }
    }

    public int getBuild() {
        return Game.oR.nextInt(2) != 0 ? BUILD1 : BUILD0;
    }

    public int getClickIncreaseManpower() {
        int i = this.iIncreaseManpower;
        this.iIncreaseManpower = i + 1;
        return i % 2 != 0 ? SOUND_INCREASE_MANPOWER2 : SOUND_INCREASE_MANPOWER;
    }

    public int getClickMain() {
        return Game.oR.nextInt(2) != 0 ? SOUND_CLICK_MAIN2 : SOUND_CLICK_MAIN;
    }

    public int getCoin() {
        int iNextInt = Game.oR.nextInt(5);
        if (iNextInt != 0) {
            return iNextInt != 1 ? SOUND_COIN_2 : SOUND_COIN_1;
        }
        return SOUND_COIN_0;
    }

    public final String getCurrentMusicTittle() {
        return this.lTitles.get(this.iCurrentMusicID).substring(0, this.lTitles.get(this.iCurrentMusicID).indexOf(new StringBuilder(".").append(getFileExtension()).toString()) > 0 ? this.lTitles.get(this.iCurrentMusicID).indexOf("." + getFileExtension()) : this.lTitles.get(this.iCurrentMusicID).length()).replace("_", " ");
    }

    public int getDiplomacy() {
        int i = this.iDiplomacyButton;
        this.iDiplomacyButton = i + 1;
        return i % 2 != 0 ? DIPLOMACY1 : DIPLOMACY0;
    }

    public int getEconomy() {
        int i = this.iEconomy;
        this.iEconomy = i + 1;
        return i % 2 != 0 ? SOUND_ECONOMY_1 : SOUND_ECONOMY_0;
    }

    public String getFileType() {
        return CFG.isIOS() ? ".mp3" : ".ogg";
    }

    public int getGold() {
        int iNextInt = Game.oR.nextInt(5);
        if (iNextInt == 0) {
            return SOUND_GOLD_0;
        }
        if (iNextInt == 1) {
            return SOUND_GOLD_1;
        }
        if (iNextInt != 2) {
            return iNextInt != 3 ? SOUND_GOLD_4 : SOUND_GOLD_3;
        }
        return SOUND_GOLD_2;
    }

    public int getInfrastructure() {
        return Game.oR.nextInt(2) != 0 ? SOUND_INFRASTRUCTURE_1 : SOUND_INFRASTRUCTURE;
    }

    public final float getMasterVolume() {
        return masterVolume;
    }

    public final float getMusicVolume() {
        return musicVolume;
    }

    public int getRecruitArmy() {
        int i = this.iRecruitArmy;
        this.iRecruitArmy = i + 1;
        return i % 2 != 0 ? SOUND_RECRUIT_ARMY_1 : SOUND_RECRUIT_ARMY_0;
    }

    public int getSelectedArmy() {
        int i = this.iSelectArmy;
        this.iSelectArmy = i + 1;
        return i % 2 != 0 ? SOUND_SELECTED_ARMY_1 : SOUND_SELECTED_ARMY_0;
    }

    public final float getSoundsVolume() {
        return soundsVolume;
    }

    public final float getSoundsVolumeMaster() {
        return soundsVolume * masterVolume;
    }

    public int getTab() {
        int i = (this.tabNum + 1) % 2;
        this.tabNum = i;
        return i % 2 != 0 ? TAB_1 : TAB_0;
    }

    public final void loadMusic_List() {
        try {
            for (String str : FileManager.loadFile("audio/music/list.txt").readString().split(";")) {
                this.lTitles.add(str);
            }
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
        try {
            for (String str2 : FileManager.loadFile("audio/music/listWar.txt").readString().split(";")) {
                this.lTitlesWar.add(str2);
            }
        } catch (GdxRuntimeException e2) {
            CFG.LOG(e2);
        }
        randomizePlayList();
    }

    public final void loadNextMusic() {
        disposeCurrentMusic();
        isWarMusicPlaying = false;
        int i = this.iCurrentMusicID + 1;
        this.iCurrentMusicID = i;
        if (i >= this.lTitles.size()) {
            this.iCurrentMusicID = 0;
            randomizePlayList();
        }
        try {
            if (FileManager.loadFile(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()).exists()) {
                Music musicNewMusic = Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()));
                this.currentMusic = musicNewMusic;
                musicNewMusic.setLooping(false);
                this.currentMusic.play();
                this.currentMusic.setVolume(musicVolume * masterVolume);
                this.currentMusic.setOnCompletionListener(new AnonymousClass1());
                return;
            }
            if (!Gdx.files.local(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()).exists()) {
                this.currentMusic.setOnCompletionListener(new AnonymousClass3());
                return;
            }
            Music musicNewMusic2 = Gdx.audio.newMusic(Gdx.files.local(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()));
            this.currentMusic = musicNewMusic2;
            musicNewMusic2.setLooping(false);
            this.currentMusic.play();
            this.currentMusic.setVolume(musicVolume * masterVolume);
            this.currentMusic.setOnCompletionListener(new AnonymousClass2());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void loadNextMusic(String str) {
        try {
            disposeCurrentMusic();
            isWarMusicPlaying = false;
            int i = this.iCurrentMusicID + 1;
            this.iCurrentMusicID = i;
            if (i >= this.lTitles.size()) {
                this.iCurrentMusicID = 0;
                randomizePlayList();
            }
            try {
                if (FileManager.loadFile(CFG.FILE_MUSIC_PATH + str + getFileType()).exists()) {
                    Music musicNewMusic = Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_MUSIC_PATH + str + getFileType()));
                    this.currentMusic = musicNewMusic;
                    musicNewMusic.setLooping(false);
                    this.currentMusic.play();
                    this.currentMusic.setVolume(musicVolume * masterVolume);
                    this.currentMusic.setOnCompletionListener(new AnonymousClass4());
                    return;
                }
                if (!Gdx.files.local(CFG.FILE_MUSIC_PATH + str + getFileType()).exists()) {
                    this.currentMusic.setOnCompletionListener(new AnonymousClass6());
                    return;
                }
                Music musicNewMusic2 = Gdx.audio.newMusic(Gdx.files.local(CFG.FILE_MUSIC_PATH + str + getFileType()));
                this.currentMusic = musicNewMusic2;
                musicNewMusic2.setLooping(false);
                this.currentMusic.play();
                this.currentMusic.setVolume(musicVolume * masterVolume);
                this.currentMusic.setOnCompletionListener(new AnonymousClass5());
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
            loadNextMusic();
        }
    }

    public final void loadNextMusic(String str, int i) {
        disposeCurrentMusic();
        this.iCurrentMusicID = i;
        try {
            try {
                Music musicNewMusic = Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_MUSIC_PATH + str + getFileType()));
                this.currentMusic = musicNewMusic;
                musicNewMusic.setLooping(false);
                this.currentMusic.play();
                this.currentMusic.setVolume(musicVolume * masterVolume);
                this.currentMusic.setOnCompletionListener(new AnonymousClass9());
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (GdxRuntimeException unused) {
            Music musicNewMusic2 = Gdx.audio.newMusic(Gdx.files.local(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()));
            this.currentMusic = musicNewMusic2;
            musicNewMusic2.setLooping(false);
            this.currentMusic.play();
            this.currentMusic.setVolume(musicVolume * masterVolume);
            this.currentMusic.setOnCompletionListener(new AnonymousClass10());
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void loadNextMusicWar() {
        if (isWarMusicPlaying || CFG.currentTimeMillis - this.WAR_MUSIC_LAST_TIME_PLAYED <= GameValues.inGame.WAR_MUSIC_BREAK_BETWEEN_LAST_TIME_PLAYED) {
            return;
        }
        disposeCurrentMusic();
        isWarMusicPlaying = true;
        this.WAR_MUSIC_LAST_TIME_PLAYED = CFG.currentTimeMillis;
        try {
            try {
                Music musicNewMusic = Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_MUSIC_PATH + this.lTitlesWar.get(Game.oR.nextInt(this.lTitlesWar.size())) + getFileType()));
                this.currentMusic = musicNewMusic;
                musicNewMusic.setLooping(false);
                this.currentMusic.play();
                this.currentMusic.setVolume(musicVolume * masterVolume);
                this.currentMusic.setOnCompletionListener(new AnonymousClass7());
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (GdxRuntimeException unused) {
            Music musicNewMusic2 = Gdx.audio.newMusic(Gdx.files.local(CFG.FILE_MUSIC_PATH + this.lTitles.get(this.iCurrentMusicID) + getFileType()));
            this.currentMusic = musicNewMusic2;
            musicNewMusic2.setLooping(false);
            this.currentMusic.play();
            this.currentMusic.setVolume(musicVolume * masterVolume);
            this.currentMusic.setOnCompletionListener(new AnonymousClass8());
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void loadSFXRandom() {
        try {
            for (String str : FileManager.loadFile("audio/random/list.txt").readString().split(ClXgFvsSKQc.wYErxnzOm)) {
                addSoundSFXRandom(str + "." + getFileExtension());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        this.soundsRandomSize = this.lSoundsRandom.size();
    }

    public final void loadSounds() {
        SOUND_BATTLE = addSoundSFX("battle." + getFileExtension());
        SOUND_BATTLE2 = addSoundSFX("battle2." + getFileExtension());
        SOUND_NUKE = addSound("nuke." + getFileExtension());
        PLAY = addSoundSFX("play." + getFileExtension());
        SOUND_SELECTED_ARMY_0 = addSoundSFX("selectedArmy0." + getFileExtension());
        SOUND_SELECTED_ARMY_1 = addSoundSFX("selectedArmy1." + getFileExtension());
        SOUND_RECRUIT_ARMY_0 = addSoundSFX("recruitArmy0." + getFileExtension());
        SOUND_RECRUIT_ARMY_1 = addSoundSFX("recruitArmy1." + getFileExtension());
        SOUND_RECRUIT_CANCEL = addSoundSFX("recruitArmyCancel." + getFileExtension());
        SOUND_CORES = addSoundSFX("cores." + getFileExtension());
        SOUND_GOLD_0 = addSoundSFX("gold0." + getFileExtension());
        SOUND_GOLD_1 = addSoundSFX("gold1." + getFileExtension());
        SOUND_GOLD_2 = addSoundSFX("gold2." + getFileExtension());
        SOUND_GOLD_3 = addSoundSFX("gold3." + getFileExtension());
        SOUND_GOLD_4 = addSoundSFX("gold4." + getFileExtension());
        TAB_0 = addSoundSFX("tab0." + getFileExtension());
        TAB_1 = addSoundSFX("tab1." + getFileExtension());
        SOUND_GOLD_LEVEL_0 = addSoundSFX("goldLevel0." + getFileExtension());
        SOUND_GOLD_LEVEL_1 = addSoundSFX("goldLevel1." + getFileExtension());
        SOUND_GOLD_LEVEL_2 = addSoundSFX("goldLevel2." + getFileExtension());
        SOUND_COIN_0 = addSoundSFX("coin0." + getFileExtension());
        SOUND_COIN_1 = addSoundSFX("coin1." + getFileExtension());
        SOUND_COIN_2 = addSoundSFX("coin2." + getFileExtension());
        SOUND_CREATE_ARMY = addSoundSFX("createArmy." + getFileExtension());
        SOUND_CLICK_WAR = addSoundSFX("clickWar." + getFileExtension());
        SOUND_FORMABLE = addSoundSFX("formable." + getFileExtension());
        SOUND_INFRASTRUCTURE = addSoundSFX("infrastructure." + getFileExtension());
        SOUND_INFRASTRUCTURE_1 = addSoundSFX("infrastructure1." + getFileExtension());
        SOUND_ECONOMY_0 = addSoundSFX("economy0." + getFileExtension());
        SOUND_ECONOMY_1 = addSoundSFX("economy1." + getFileExtension());
        SOUND_INCREASE_MANPOWER = addSoundSFX("increaseManpower." + getFileExtension());
        SOUND_INCREASE_MANPOWER2 = addSoundSFX("increaseManpower2." + getFileExtension());
        SOUND_GROWTH_RATE = addSoundSFX("growthRate." + getFileExtension());
        SOUND_GROWTH_RATE2 = addSoundSFX("growthRate2." + getFileExtension());
        SOUND_ADVANTAGE0 = addSoundSFX("advantage0." + getFileExtension());
        SOUND_ADVANTAGE1 = addSoundSFX(aBEBOpwLZcQFCZ.gkZwUyTjPF + getFileExtension());
        SOUND_ADVANTAGE2 = addSoundSFX("advantage2." + getFileExtension());
        SOUND_CLICK_TOP = addSoundSFX("clickTop." + getFileExtension());
        EVENT = addSoundSFX("event." + getFileExtension());
        EVENT_INFO = addSoundSFX("eventInfo2." + getFileExtension());
        SOUND_LOAN = addSoundSFX("loan." + getFileExtension());
        SOUND_LOAN_REPAY = addSoundSFX("loanRepay." + getFileExtension());
        MOVE_0 = addSoundSFX("move0." + getFileExtension());
        MOVE_1 = addSoundSFX("move1." + getFileExtension());
        MOVE_2 = addSoundSFX("move2." + getFileExtension());
        MOVE_3 = addSoundSFX("move3." + getFileExtension());
        MOVE_4 = addSoundSFX("move4." + getFileExtension());
        MOVE_SEA_0 = addSoundSFX("moveSea." + getFileExtension());
        MOVE_SEA_1 = addSoundSFX(SwmJtrccN.BneR + getFileExtension());
        SOUND_WAR_END = addSoundSFX("warEnd." + getFileExtension());
        SOUND_PLAY_NEW_GAME = addSoundSFX("playNewGame." + getFileExtension());
        LEGACY_0 = addSoundSFX("legacy0." + getFileExtension());
        LEGACY_1 = addSoundSFX("legacy1." + getFileExtension());
        LEGACY_2 = addSoundSFX("legacy2." + getFileExtension());
        TECHNOLOGY = addSoundSFX("technology." + getFileExtension());
        TECHNOLOGY_CLICK = addSoundSFX("technologyClick." + getFileExtension());
        ARMY_CLICK = addSoundSFX("armyClick." + getFileExtension());
        GENERALS_CLICK = addSoundSFX("generals." + getFileExtension());
        MAP_MODE0 = addSoundSFX(lJxd.HcSQI + getFileExtension());
        MAP_MODE1 = addSoundSFX("mapMode1." + getFileExtension());
        BUILD0 = addSoundSFX("build." + getFileExtension());
        BUILD1 = addSoundSFX("build1." + getFileExtension());
        DIPLOMACY0 = addSoundSFX("diplomacy." + getFileExtension());
        DIPLOMACY1 = addSoundSFX("diplomacy1." + getFileExtension());
        DIPLOMACY_CLICK = addSoundSFX("diplomacyClick." + getFileExtension());
        WAR = addSoundSFX("war." + getFileExtension());
        SIEGE = addSoundSFX("siege." + getFileExtension());
        FLAG_CLICK = addSoundSFX("flagClick." + getFileExtension());
        BUDGET_CLICK = addSoundSFX("budgetClick." + getFileExtension());
        CIV_OPTIONS_CLICK = addSoundSFX("civOptionsClick." + getFileExtension());
        CIV_OPTIONS_CLICK1 = addSoundSFX("civOptionsClick1." + getFileExtension());
        INFO_BOX = addSoundSFX("infoBox." + getFileExtension());
        loadSFXRandom();
        this.SOUNDS_RANDOM_TIME = System.currentTimeMillis() + ((long) GameValues.inGame.SOUNDS_RANDOM_MIN) + ((long) Game.oR.nextInt(GameValues.inGame.SOUNDS_RANDOM_RANDOM));
    }

    public void playGold() {
        int iNextInt = Game.oR.nextInt(5);
        if (iNextInt == 0) {
            playSound(SOUND_GOLD_0);
            return;
        }
        if (iNextInt == 1) {
            playSound(SOUND_GOLD_1);
            return;
        }
        if (iNextInt == 2) {
            playSound(SOUND_GOLD_2);
        } else if (iNextInt != 3) {
            playSound(SOUND_GOLD_4);
        } else {
            playSound(SOUND_GOLD_3);
        }
    }

    public void playHover() {
        if (CFG.currentTimeMillis - this.lHoverTime > 36) {
            this.lHoverTime = CFG.currentTimeMillis;
            int i = this.iHoverID;
            this.iHoverID = i + 1;
            switch (i % 2) {
                case 0:
                    playSound(SOUND_HOVER_0, this.hoverVolume);
                    break;
                case 1:
                    playSound(SOUND_HOVER_1, this.hoverVolume);
                    break;
                case 2:
                    playSound(SOUND_HOVER_2, this.hoverVolume);
                    break;
                case 3:
                    playSound(SOUND_HOVER_3, this.hoverVolume);
                    break;
                case 4:
                    playSound(SOUND_HOVER_4, this.hoverVolume);
                    break;
                case 5:
                    playSound(SOUND_HOVER_5, this.hoverVolume);
                    break;
                case 6:
                    playSound(SOUND_HOVER_6, this.hoverVolume);
                    break;
                case 7:
                    playSound(SOUND_HOVER_7, this.hoverVolume);
                    break;
                default:
                    playSound(SOUND_HOVER_8, this.hoverVolume);
                    break;
            }
        }
    }

    public void playMove() {
        int iNextInt = Game.oR.nextInt(5);
        if (iNextInt == 0) {
            playSound(MOVE_0);
            return;
        }
        if (iNextInt == 1) {
            playSound(MOVE_1);
            return;
        }
        if (iNextInt == 2) {
            playSound(MOVE_2);
        } else if (iNextInt != 3) {
            playSound(MOVE_4);
        } else {
            playSound(MOVE_3);
        }
    }

    public void playRandomSounds() {
        try {
            if (this.SOUNDS_RANDOM_TIME >= CFG.currentTimeMillis || this.soundsRandomSize <= 0) {
                return;
            }
            int iNextInt = Game.oR.nextInt(this.soundsRandomSize);
            this.lSoundsRandom.get(iNextInt).stop();
            this.lSoundsRandom.get(iNextInt).play(soundsVolume * masterVolume * 0.75f);
            updateSoundsRandomTime();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void playRecruitArmy() {
        if (CFG.currentTimeMillis - this.lRecruitTime > 250) {
            this.lRecruitTime = CFG.currentTimeMillis;
            int i = this.iRecruitArmy;
            this.iRecruitArmy = i + 1;
            if (i % 2 != 0) {
                playSound(SOUND_RECRUIT_ARMY_1);
            } else {
                playSound(SOUND_RECRUIT_ARMY_0);
            }
        }
    }

    public void playRecruitArmyCancel() {
        playSound(SOUND_RECRUIT_CANCEL);
    }

    public void playSelectedArmy() {
        int i = this.iSelectArmy;
        this.iSelectArmy = i + 1;
        if (i % 2 != 0) {
            playSound(SOUND_SELECTED_ARMY_1);
        } else {
            playSound(SOUND_SELECTED_ARMY_0);
        }
    }

    public final void playSound(int i) {
        if (i >= 0) {
            try {
                playSound(i, 1.0f);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final void playSound(int i, float f) {
        try {
            this.lSounds.get(i).stop();
            this.lSounds.get(i).play(soundsVolume * masterVolume * f);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void playStartMusic() {
        try {
            disposeCurrentMusic();
            Music musicNewMusic = Gdx.audio.newMusic(FileManager.loadFile(CFG.FILE_MUSIC_PATH + this.lTitles.get(0) + getFileType()));
            this.currentMusic = musicNewMusic;
            musicNewMusic.setLooping(false);
            this.currentMusic.play();
            this.currentMusic.setVolume(musicVolume * masterVolume);
            this.currentMusic.setOnCompletionListener(new AnonymousClass11());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void randomizePlayList() {
        Random random = new Random();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.lTitles.size(); i++) {
            arrayList.add(this.lTitles.get(i));
        }
        this.lTitles.clear();
        while (arrayList.size() > 0) {
            int iNextInt = random.nextInt(arrayList.size());
            this.lTitles.add((String) arrayList.get(iNextInt));
            arrayList.remove(iNextInt);
        }
    }

    public final void setAmbienceVolume(float f) {
        ambienceVolume = f;
    }

    public final void setMasterVolume(float f) {
        masterVolume = f;
        setMusicVolume(getMusicVolume());
    }

    public final void setMusicVolume(float f) {
        musicVolume = f;
        try {
            Music music = this.currentMusic;
            if (music != null) {
                music.setVolume(f * masterVolume);
                if (musicVolume < 0.01f) {
                    this.currentMusic.pause();
                } else if (!this.currentMusic.isPlaying()) {
                    this.currentMusic.play();
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void setSoundsVolume(float f) {
        soundsVolume = f;
    }

    public final void stopLegacySound() {
        try {
            this.lSounds.get(LEGACY_0).stop();
            this.lSounds.get(LEGACY_1).stop();
            this.lSounds.get(LEGACY_2).stop();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void updateSoundsRandomTime() {
        this.SOUNDS_RANDOM_TIME = CFG.currentTimeMillis + ((long) GameValues.inGame.SOUNDS_RANDOM_MIN) + ((long) Game.oR.nextInt(GameValues.inGame.SOUNDS_RANDOM_RANDOM));
    }
}
