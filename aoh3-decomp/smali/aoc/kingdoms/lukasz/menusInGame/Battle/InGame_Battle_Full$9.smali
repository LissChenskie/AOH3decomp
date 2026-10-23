.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$9;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;
.source "InGame_Battle_Full.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->lTime:J

    return-wide v0
.end method
