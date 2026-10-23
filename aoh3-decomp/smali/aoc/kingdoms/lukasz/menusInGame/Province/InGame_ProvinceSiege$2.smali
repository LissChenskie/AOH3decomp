.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;
.source "InGame_ProvinceSiege.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;Ljava/lang/String;IIIII)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverFort(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege$2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
