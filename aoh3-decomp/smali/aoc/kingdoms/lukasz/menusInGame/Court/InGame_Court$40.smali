.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMissionReport;
.source "InGame_Court.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V
    .locals 13

    move-object v12, p0

    move-object v0, p1

    iput-object v0, v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMissionReport;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;->getCurrent()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;->getCurrent()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMission_ReportEndTurn(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_EspionageReportCourt(II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    return-void
.end method
