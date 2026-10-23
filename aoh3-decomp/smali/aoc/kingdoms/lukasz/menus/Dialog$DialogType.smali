.class public final enum Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
.super Ljava/lang/Enum;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menus/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menus/Dialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    .locals 15

    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v3, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v4, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v5, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v6, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v7, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v8, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v9, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v10, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v11, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v12, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v13, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v14, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    filled-new-array/range {v0 .. v14}, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "EXIT_GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "PAUSE_GAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "FIRE_ADVISOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "UNLOCK_LEGACY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "REVERSE_WASTELAND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "EXIT_SCENARIO_EDITOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "DELETE_SAVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CREATE_SCENARIO_REMOVE_CIVILIZATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GENERATE_PROVINCE_CONNECTIONS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GENERATE_SUGGESTED_CIVILIZATIONS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CREATE_SCENARIO_ASSIGN_CIVILIZATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "ESCAPE_TO_MAIN_MENU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->aqT:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CONVERT_RELIGION_ALL_PROVINCES"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GO_TO_LINK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->$values()[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->$VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

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

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    .locals 1

    const-class v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    return-object p0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->$VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    return-object v0
.end method
