.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$10;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_SendSpy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->lTime:J

    return-wide v0
.end method
