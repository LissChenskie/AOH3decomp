.class public Lcom/codedisaster/steamworks/SteamControllerMotionData;
.super Ljava/lang/Object;
.source "SteamControllerMotionData.java"


# instance fields
.field data:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    return-void
.end method


# virtual methods
.method public getPosAccelX()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getPosAccelY()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getPosAccelZ()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getRotQuatW()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getRotQuatX()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRotQuatY()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRotQuatZ()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotVelX()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getRotVelY()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public getRotVelZ()F
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method
