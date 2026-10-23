.class Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUtilsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUtilsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onSteamShutdown()V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUtilsCallback;

    invoke-interface {v0}, Lcom/codedisaster/steamworks/SteamUtilsCallback;->onSteamShutdown()V

    return-void
.end method

.method onWarningMessage(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;->onWarningMessage(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V
    .locals 0

    iput-object p1, p0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->messageHook:Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;

    return-void
.end method
