.class Laoc/kingdoms/lukasz/map/map/MapModeManager$106;
.super Ljava/lang/Object;
.source "MapModeManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$106;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->drawProvinces_DefaultHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method
