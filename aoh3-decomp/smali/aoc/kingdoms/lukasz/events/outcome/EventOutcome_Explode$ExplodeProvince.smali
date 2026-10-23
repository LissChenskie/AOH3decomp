.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode$ExplodeProvince;
.super Ljava/lang/Object;
.source "EventOutcome_Explode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExplodeProvince"
.end annotation


# instance fields
.field public civID:I

.field public provinceID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;II)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode$ExplodeProvince;->this$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode$ExplodeProvince;->civID:I

    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode$ExplodeProvince;->provinceID:I

    return-void
.end method
