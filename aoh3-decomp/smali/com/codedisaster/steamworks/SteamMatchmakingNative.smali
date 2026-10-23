.class final Lcom/codedisaster/steamworks/SteamMatchmakingNative;
.super Ljava/lang/Object;
.source "SteamMatchmakingNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native addFavoriteGame(IISSII)I
.end method

.method static native addRequestLobbyListCompatibleMembersFilter(J)V
.end method

.method static native addRequestLobbyListDistanceFilter(I)V
.end method

.method static native addRequestLobbyListFilterSlotsAvailable(I)V
.end method

.method static native addRequestLobbyListNearValueFilter(Ljava/lang/String;I)V
.end method

.method static native addRequestLobbyListNumericalFilter(Ljava/lang/String;II)V
.end method

.method static native addRequestLobbyListResultCountFilter(I)V
.end method

.method static native addRequestLobbyListStringFilter(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;)J
.end method

.method static native createLobby(JII)J
.end method

.method static native deleteLobbyData(JLjava/lang/String;)Z
.end method

.method static native getFavoriteGame(I[I[I[S[S[I[I)Z
.end method

.method static native getFavoriteGameCount()I
.end method

.method static native getLobbyByIndex(I)J
.end method

.method static native getLobbyChatEntry(JILcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;Ljava/nio/ByteBuffer;II)I
.end method

.method static native getLobbyData(JLjava/lang/String;)Ljava/lang/String;
.end method

.method static native getLobbyDataByIndex(JILcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z
.end method

.method static native getLobbyDataCount(J)I
.end method

.method static native getLobbyGameServer(J[I[S[J)Z
.end method

.method static native getLobbyMemberByIndex(JI)J
.end method

.method static native getLobbyMemberData(JJLjava/lang/String;)Ljava/lang/String;
.end method

.method static native getLobbyMemberLimit(J)I
.end method

.method static native getLobbyOwner(J)J
.end method

.method static native getNumLobbyMembers(J)I
.end method

.method static native inviteUserToLobby(JJ)Z
.end method

.method static native joinLobby(JJ)J
.end method

.method static native leaveLobby(J)V
.end method

.method static native removeFavoriteGame(IISSI)Z
.end method

.method static native requestLobbyData(J)Z
.end method

.method static native requestLobbyList(J)J
.end method

.method static native sendLobbyChatMsg(JLjava/lang/String;)Z
.end method

.method static native sendLobbyChatMsg(JLjava/nio/ByteBuffer;II)Z
.end method

.method static native setLinkedLobby(JJ)Z
.end method

.method static native setLobbyData(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native setLobbyGameServer(JISJ)V
.end method

.method static native setLobbyJoinable(JZ)Z
.end method

.method static native setLobbyMemberData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native setLobbyMemberLimit(JI)Z
.end method

.method static native setLobbyOwner(JJ)Z
.end method

.method static native setLobbyType(JI)Z
.end method
