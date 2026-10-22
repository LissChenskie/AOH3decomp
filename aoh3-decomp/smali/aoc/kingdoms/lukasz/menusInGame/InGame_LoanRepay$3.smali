.class Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay$3;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_LoanRepay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_LoanRepay;->lTime:J

    return-wide v0
.end method
