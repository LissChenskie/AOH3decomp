.class public Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;
.super Ljava/lang/Object;
.source "SteamControllerAnalogActionData.java"


# instance fields
.field active:Z

.field mode:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;->active:Z

    return v0
.end method

.method public getMode()Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;->mode:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamController$SourceMode;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;->y:F

    return v0
.end method
