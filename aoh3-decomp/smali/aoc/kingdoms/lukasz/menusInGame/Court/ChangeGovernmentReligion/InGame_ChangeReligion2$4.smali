.class Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$4;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;
.source "InGame_ChangeReligion2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getFlagCivID()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method

.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->lTime:J

    return-wide v0
.end method
