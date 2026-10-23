.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapGeoRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;Ljava/lang/String;IIIIIZZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    return v0
.end method

.method public updateLanguage()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Brush"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$2;->setText(Ljava/lang/String;)V

    return-void
.end method
