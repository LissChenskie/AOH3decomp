.class public final enum Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Notification_BG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    filled-new-array {v0, v1, v2}, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "NEUTRAL_BG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "RED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "GREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .locals 1

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-object p0
.end method

.method public static values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-object v0
.end method
