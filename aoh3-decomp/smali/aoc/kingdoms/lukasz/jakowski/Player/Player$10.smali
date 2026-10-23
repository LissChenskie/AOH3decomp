.class synthetic Laoc/kingdoms/lukasz/jakowski/Player/Player$10;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Player/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$10;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->BATTLE_REPORT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
