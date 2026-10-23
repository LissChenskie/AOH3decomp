.class public Laoc/kingdoms/lukasz/jakowski/SoundsManager;
.super Ljava/lang/Object;
.source "SoundsManager.java"


# static fields
.field public static ARMY_CLICK:I = 0x0

.field public static BUDGET_CLICK:I = 0x0

.field public static BUILD0:I = 0x0

.field public static BUILD1:I = 0x0

.field public static CIV_OPTIONS_CLICK:I = 0x0

.field public static CIV_OPTIONS_CLICK1:I = 0x0

.field public static DIPLOMACY0:I = 0x0

.field public static DIPLOMACY1:I = 0x0

.field public static DIPLOMACY_CLICK:I = 0x0

.field public static EVENT:I = 0x0

.field public static EVENT_INFO:I = 0x0

.field public static FLAG_CLICK:I = 0x0

.field public static GENERALS_CLICK:I = 0x0

.field public static INFO_BOX:I = 0x0

.field public static LEGACY_0:I = 0x0

.field public static LEGACY_1:I = 0x0

.field public static LEGACY_2:I = 0x0

.field public static MAP_MODE0:I = 0x0

.field public static MAP_MODE1:I = 0x0

.field public static MOVE_0:I = 0x0

.field public static MOVE_1:I = 0x0

.field public static MOVE_2:I = 0x0

.field public static MOVE_3:I = 0x0

.field public static MOVE_4:I = 0x0

.field public static MOVE_SEA_0:I = 0x0

.field public static MOVE_SEA_1:I = 0x0

.field public static PERC_VOLUME_KEYBOARD:F = 0.9f

.field public static PERC_VOLUME_SELECT_PROVINCE:F = 0.95f

.field public static PLAY:I = 0x0

.field public static SIEGE:I = 0x0

.field public static SOUND_ADVANTAGE0:I = 0x0

.field public static SOUND_ADVANTAGE1:I = 0x0

.field public static SOUND_ADVANTAGE2:I = 0x0

.field public static SOUND_BATTLE:I = 0x0

.field public static SOUND_BATTLE2:I = 0x0

.field public static SOUND_CLICK2:I = 0x0

.field public static SOUND_CLICK3:I = 0x0

.field public static SOUND_CLICK_MAIN:I = 0x0

.field public static SOUND_CLICK_MAIN2:I = 0x0

.field public static SOUND_CLICK_PAGE:I = 0x0

.field public static SOUND_CLICK_PAGE_1:I = 0x0

.field public static SOUND_CLICK_TOP:I = 0x0

.field public static SOUND_CLICK_WAR:I = 0x0

.field public static SOUND_COIN_0:I = 0x0

.field public static SOUND_COIN_1:I = 0x0

.field public static SOUND_COIN_2:I = 0x0

.field public static SOUND_CORES:I = 0x0

.field public static SOUND_CREATE_ARMY:I = 0x0

.field public static SOUND_ECONOMY_0:I = 0x0

.field public static SOUND_ECONOMY_1:I = 0x0

.field public static SOUND_FORMABLE:I = 0x0

.field public static SOUND_GOLD_0:I = 0x0

.field public static SOUND_GOLD_1:I = 0x0

.field public static SOUND_GOLD_2:I = 0x0

.field public static SOUND_GOLD_3:I = 0x0

.field public static SOUND_GOLD_4:I = 0x0

.field public static SOUND_GOLD_LEVEL_0:I = 0x0

.field public static SOUND_GOLD_LEVEL_1:I = 0x0

.field public static SOUND_GOLD_LEVEL_2:I = 0x0

.field public static SOUND_GROWTH_RATE:I = 0x0

.field public static SOUND_GROWTH_RATE2:I = 0x0

.field public static SOUND_HOVER_0:I = 0x0

.field public static SOUND_HOVER_1:I = 0x0

.field public static SOUND_HOVER_2:I = 0x0

.field public static SOUND_HOVER_3:I = 0x0

.field public static SOUND_HOVER_4:I = 0x0

.field public static SOUND_HOVER_5:I = 0x0

.field public static SOUND_HOVER_6:I = 0x0

.field public static SOUND_HOVER_7:I = 0x0

.field public static SOUND_HOVER_8:I = 0x0

.field public static SOUND_INCREASE_MANPOWER:I = 0x0

.field public static SOUND_INCREASE_MANPOWER2:I = 0x0

.field public static SOUND_INFRASTRUCTURE:I = 0x0

.field public static SOUND_INFRASTRUCTURE_1:I = 0x0

.field public static SOUND_LOAN:I = 0x0

.field public static SOUND_LOAN_REPAY:I = 0x0

.field public static SOUND_NUKE:I = 0x0

.field public static SOUND_NUKE2:I = 0x0

.field public static SOUND_PLAY_NEW_GAME:I = 0x0

.field public static SOUND_PROVINCE:I = 0x0

.field public static SOUND_RECRUIT_ARMY_0:I = 0x0

.field public static SOUND_RECRUIT_ARMY_1:I = 0x0

.field public static SOUND_RECRUIT_CANCEL:I = 0x0

.field public static SOUND_SELECTED_ARMY_0:I = 0x0

.field public static SOUND_SELECTED_ARMY_1:I = 0x0

.field public static SOUND_WAR_END:I = 0x0

.field public static TAB_0:I = 0x0

.field public static TAB_1:I = 0x0

.field public static TECHNOLOGY:I = 0x0

.field public static TECHNOLOGY_CLICK:I = 0x0

.field public static WAR:I = 0x0

.field public static ambienceVolume:F = 0.2f

.field public static iCivOptionsSound:I = 0x0

.field public static iGrowthRate:I = 0x0

.field public static isWarMusicPlaying:Z = false

.field public static masterVolume:F = 1.0f

.field public static musicVolume:F = 0.4f

.field public static soundsVolume:F = 0.2f


# instance fields
.field public SOUNDS_RANDOM_TIME:J

.field public WAR_MUSIC_LAST_TIME_PLAYED:J

.field public currentMusic:Lcom/badlogic/gdx/audio/Music;

.field public hoverVolume:F

.field public iCurrentMusicID:I

.field public iDiplomacyButton:I

.field public iEconomy:I

.field public iHoverID:I

.field public iIncreaseManpower:I

.field public iRecruitArmy:I

.field public iSelectArmy:I

.field public lHoverTime:J

.field public lRecruitTime:J

.field public lSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public lSoundsRandom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public lTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lTitlesWar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public soundsRandomSize:I

.field public tabNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click3."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK3:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click_page_0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_PAGE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click_page_1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_PAGE_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clickProvince."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PROVINCE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover3."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_3:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover4."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_4:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover5."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_5:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover6."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_6:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover7."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_7:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hover8."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_8:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MASTER:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_SOUNDS:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setSoundsVolume(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_AMBIENCE:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setAmbienceVolume(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MUSIC:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setMusicVolume(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_HOVER:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    return-void
.end method

.method public static getClickSound_CivOptions()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCivOptionsSound:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCivOptionsSound:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK:I

    return v0
.end method

.method public static final getFileExtension()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isiOS:Z

    if-eqz v0, :cond_0

    const-string v0, "mp3"

    goto :goto_0

    :cond_0
    const-string v0, "ogg"

    :goto_0
    return-object v0
.end method

.method public static getGrowthRate()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iGrowthRate:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iGrowthRate:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE2:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE:I

    return v0
.end method


# virtual methods
.method public final addSound(Ljava/lang/String;)I
    .locals 6

    const-string v0, "audio/sounds/"

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :try_start_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final addSoundSFX(Ljava/lang/String;)I
    .locals 6

    const-string v0, "audio/sfx/"

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :try_start_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final addSoundSFXRandom(Ljava/lang/String;)I
    .locals 6

    const-string v0, "audio/random/"

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :try_start_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final dispose()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    return-void
.end method

.method public final disposeCurrentMusic()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    :cond_0
    return-void
.end method

.method public getBuild()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD0:I

    return v0
.end method

.method public getClickIncreaseManpower()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER2:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER:I

    return v0
.end method

.method public getClickMain()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN:I

    return v0
.end method

.method public getCoin()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_2:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_1:I

    return v0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_0:I

    return v0
.end method

.method public final getCurrentMusicTittle()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiplomacy()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY0:I

    return v0
.end method

.method public getEconomy()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_0:I

    return v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isIOS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".mp3"

    goto :goto_0

    :cond_0
    const-string v0, ".ogg"

    :goto_0
    return-object v0
.end method

.method public getGold()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    return v0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    return v0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    return v0

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    return v0
.end method

.method public getInfrastructure()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE_1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE:I

    return v0
.end method

.method public final getMasterVolume()F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    return v0
.end method

.method public final getMusicVolume()F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    return v0
.end method

.method public getRecruitArmy()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    return v0
.end method

.method public getSelectedArmy()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    return v0
.end method

.method public final getSoundsVolume()F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    return v0
.end method

.method public final getSoundsVolumeMaster()F
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTab()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_1:I

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_0:I

    return v0
.end method

.method public final loadMusic_List()V
    .locals 6

    const-string v0, ";"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "audio/music/list.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    const-string v2, "audio/music/listWar.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V

    return-void
.end method

.method public final loadNextMusic()V
    .locals 6

    const-string v0, "audio/music/"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$1;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$2;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$2;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$3;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$3;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final loadNextMusic(Ljava/lang/String;)V
    .locals 5

    const-string v0, "audio/music/"

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$6;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    return-void
.end method

.method public final loadNextMusic(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "audio/music/"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    const/4 p2, 0x0

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$9;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$9;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    sget-object p1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr p2, v0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager$10;

    invoke-direct {p2, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$10;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final loadNextMusicWar()V
    .locals 7

    const-string v0, "audio/music/"

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    if-nez v1, :cond_0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    sub-long/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->WAR_MUSIC_BREAK_BETWEEN_LAST_TIME_PLAYED:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager$7;

    invoke-direct {v3, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$7;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$8;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$8;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final loadSFXRandom()V
    .locals 4

    :try_start_0
    const-string v0, "audio/random/list.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->wYErxnzOm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFXRandom(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    return-void
.end method

.method public final loadSounds()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "battle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "battle2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nuke."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_NUKE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PLAY:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectedArmy0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectedArmy1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recruitArmy0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recruitArmy1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recruitArmyCancel."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_CANCEL:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cores."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CORES:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gold0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gold1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gold2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gold3."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gold4."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tab0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tab1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goldLevel0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goldLevel1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goldLevel2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coin0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coin1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coin2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createArmy."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CREATE_ARMY:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clickWar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_WAR:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "formable."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_FORMABLE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "infrastructure."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "infrastructure1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "economy0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "economy1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "increaseManpower."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "increaseManpower2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "growthRate."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "growthRate2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "advantage0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->gkZwUyTjPF:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "advantage2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clickTop."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eventInfo2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT_INFO:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loan."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_LOAN:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loanRepay."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_LOAN_REPAY:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "move0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "move1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "move2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "move3."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_3:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "move4."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_4:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveSea."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_SEA_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->BneR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_SEA_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "warEnd."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_WAR_END:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playNewGame."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PLAY_NEW_GAME:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacy0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacy1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacy2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_2:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "technology."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TECHNOLOGY:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "technologyClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TECHNOLOGY_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "armyClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ARMY_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generals."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->GENERALS_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->HcSQI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mapMode1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "build."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "build1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "diplomacy."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "diplomacy1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "diplomacyClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "war."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "siege."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flagClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->FLAG_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "budgetClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUDGET_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "civOptionsClick."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "civOptionsClick1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK1:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "infoBox."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->INFO_BOX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadSFXRandom()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_MIN:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    return-void
.end method

.method public playGold()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_0
    return-void
.end method

.method public playHover()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x24

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_8:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_7:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_6:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_5:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_4:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_3:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_5
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_2:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_1:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :pswitch_7
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_0:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playMove()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_4:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_3:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_2:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_0
    return-void
.end method

.method public playRandomSounds()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->play(F)J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->updateSoundsRandomTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public playRecruitArmy()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public playRecruitArmyCancel()V
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_CANCEL:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    return-void
.end method

.method public playSelectedArmy()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_0
    return-void
.end method

.method public final playSound(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final playSound(IF)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/audio/Sound;

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Sound;->play(F)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final playStartMusic()V
    .locals 4

    const-string v0, "audio/music/"

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$11;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$11;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final randomizePlayList()V
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setAmbienceVolume(F)V
    .locals 0

    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    return-void
.end method

.method public final setMasterVolume(F)V
    .locals 0

    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getMusicVolume()F

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setMusicVolume(F)V

    return-void
.end method

.method public final setMusicVolume(F)V
    .locals 2

    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->pause()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSoundsVolume(F)V
    .locals 0

    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    return-void
.end method

.method public final stopLegacySound()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_1:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_2:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateSoundsRandomTime()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_MIN:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    return-void
.end method
