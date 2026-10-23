.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;
.super Laoc/kingdoms/lukasz/menu_element/Slider;
.source "EditorMapOptimizationRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    return-void
.end method
