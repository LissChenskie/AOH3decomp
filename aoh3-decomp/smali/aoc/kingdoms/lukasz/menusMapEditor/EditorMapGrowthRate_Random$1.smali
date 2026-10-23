.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random$1;
.super Laoc/kingdoms/lukasz/menu_element/Slider;
.source "EditorMapGrowthRate_Random.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;IIIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/Slider;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->iRandom:I

    return-void
.end method
