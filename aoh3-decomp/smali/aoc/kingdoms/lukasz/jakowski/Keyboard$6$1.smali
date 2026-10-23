.class Laoc/kingdoms/lukasz/jakowski/Keyboard$6$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard$6;->actionType(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/jakowski/Keyboard$6;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard$6;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$1;->this$1:Laoc/kingdoms/lukasz/jakowski/Keyboard$6;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$1;->id:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    return-void
.end method
