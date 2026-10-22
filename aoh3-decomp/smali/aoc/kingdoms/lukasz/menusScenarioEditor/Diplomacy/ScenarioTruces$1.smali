.class Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces$1;
.super Laoc/kingdoms/lukasz/menu_element/Minimap;
.source "ScenarioTruces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces;II)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Minimap;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getPosX()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces$1;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTruces$1;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
