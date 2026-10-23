.class Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUserCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUserCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onAuthSessionTicket(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAuthTicket;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamAuthTicket;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUserCallback;->onAuthSessionTicket(Lcom/codedisaster/steamworks/SteamAuthTicket;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onEncryptedAppTicket(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamUserCallback;->onEncryptedAppTicket(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onMicroTxnAuthorization(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUserCallback;->onMicroTxnAuthorization(IJZ)V

    return-void
.end method

.method onValidateAuthTicket(JIJ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    move-result-object p1

    new-instance p2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p2, p4, p5}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamUserCallback;->onValidateAuthTicket(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;Lcom/codedisaster/steamworks/SteamID;)V

    return-void
.end method
