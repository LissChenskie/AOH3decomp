.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapProvinceNamePoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    return-void
.end method

.method public updateLanguage()V
    .locals 1

    const-string v0, "Change point"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;->setText(Ljava/lang/String;)V

    return-void
.end method
