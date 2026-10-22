.class public Lcom/codedisaster/steamworks/SteamUser;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUserNative;->createCallback(Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public advertiseGame(Lcom/codedisaster/steamworks/SteamID;IS)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserNative;->advertiseGame(JIS)V

    return-void
.end method

.method public beginAuthSession(Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserNative;->beginAuthSession(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelAuthTicket(Lcom/codedisaster/steamworks/SteamAuthTicket;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAuthTicket;->handle:J

    long-to-int p1, v0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserNative;->cancelAuthTicket(I)V

    return-void
.end method

.method public decompressVoice(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[II)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const-string v1, "Direct buffer required!"

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Lcom/codedisaster/steamworks/SteamUserNative;->decompressVoice(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[II)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {p1, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {p1, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public endAuthSession(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserNative;->endAuthSession(J)V

    return-void
.end method

.method public getAuthSessionTicket(Ljava/nio/ByteBuffer;[I)Lcom/codedisaster/steamworks/SteamAuthTicket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getAuthSessionTicket(Ljava/nio/ByteBuffer;II[I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamAuthTicket;

    invoke-direct {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamAuthTicket;-><init>(J)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAvailableVoice([I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserNative;->getAvailableVoice([I)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedAppTicket(Ljava/nio/ByteBuffer;[I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getEncryptedAppTicket(Ljava/nio/ByteBuffer;II[I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSteamID()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->getSteamID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getVoice(Ljava/nio/ByteBuffer;[I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->getVoice(Ljava/nio/ByteBuffer;II[I)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVoiceOptimalSampleRate()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->getVoiceOptimalSampleRate()I

    move-result v0

    return v0
.end method

.method public initiateGameConnection(Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamID;ISZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/codedisaster/steamworks/SteamUserNative;->initiateGameConnection(Ljava/nio/ByteBuffer;IIJISZ)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return p2

    :cond_1
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBehindNAT()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->isBehindNAT()Z

    move-result v0

    return v0
.end method

.method public requestEncryptedAppTicket(Ljava/nio/ByteBuffer;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUser;->callback:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUserNative;->requestEncryptedAppTicket(JLjava/nio/ByteBuffer;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string v0, "Direct buffer required!"

    invoke-direct {p1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startVoiceRecording()V
    .locals 0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->startVoiceRecording()V

    return-void
.end method

.method public stopVoiceRecording()V
    .locals 0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserNative;->stopVoiceRecording()V

    return-void
.end method

.method public terminateGameConnection(IS)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->terminateGameConnection(IS)V

    return-void
.end method

.method public userHasLicenseForApp(Lcom/codedisaster/steamworks/SteamID;I)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUserNative;->userHasLicenseForApp(JI)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    move-result-object p1

    return-object p1
.end method
