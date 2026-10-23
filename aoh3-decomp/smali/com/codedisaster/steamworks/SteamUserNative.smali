.class final Lcom/codedisaster/steamworks/SteamUserNative;
.super Ljava/lang/Object;
.source "SteamUserNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native advertiseGame(JIS)V
.end method

.method static native beginAuthSession(Ljava/nio/ByteBuffer;IIJ)I
.end method

.method static native cancelAuthTicket(I)V
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamUserCallbackAdapter;)J
.end method

.method static native decompressVoice(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[II)I
.end method

.method static native endAuthSession(J)V
.end method

.method static native getAuthSessionTicket(Ljava/nio/ByteBuffer;II[I)I
.end method

.method static native getAvailableVoice([I)I
.end method

.method static native getEncryptedAppTicket(Ljava/nio/ByteBuffer;II[I)Z
.end method

.method static native getSteamID()J
.end method

.method static native getVoice(Ljava/nio/ByteBuffer;II[I)I
.end method

.method static native getVoiceOptimalSampleRate()I
.end method

.method static native initiateGameConnection(Ljava/nio/ByteBuffer;IIJISZ)I
.end method

.method static native isBehindNAT()Z
.end method

.method static native requestEncryptedAppTicket(JLjava/nio/ByteBuffer;II)J
.end method

.method static native startVoiceRecording()V
.end method

.method static native stopVoiceRecording()V
.end method

.method static native terminateGameConnection(IS)V
.end method

.method static native userHasLicenseForApp(JI)I
.end method
