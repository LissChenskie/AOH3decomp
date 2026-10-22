.class Laoc/kingdoms/lukasz/map/province/Province$16;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/Province;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$16;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province$16;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method
