.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
.source "InGame_RightGovernment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    return-void
.end method


# virtual methods
.method public getPieChartValue_ColorB(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method public getPieChartValue_ColorG(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public getPieChartValue_ColorR(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method
