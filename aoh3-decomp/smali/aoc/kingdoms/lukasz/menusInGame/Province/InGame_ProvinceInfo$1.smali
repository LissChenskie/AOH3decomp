.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;->id:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->provinceIMG_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->loadProvinceIMG()V

    return-void
.end method
