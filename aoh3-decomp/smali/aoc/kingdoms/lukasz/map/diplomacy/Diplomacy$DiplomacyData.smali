.class public Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
.super Ljava/lang/Object;
.source "Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiplomacyData"
.end annotation


# instance fields
.field public iCivID:I

.field public iTurnID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->this$0:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    return-void
.end method
