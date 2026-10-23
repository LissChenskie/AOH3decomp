.class final Lcom/codedisaster/steamworks/SteamFriendsNative;
.super Ljava/lang/Object;
.source "SteamFriendsNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native activateGameOverlay(Ljava/lang/String;)V
.end method

.method static native activateGameOverlayInviteDialog(J)V
.end method

.method static native activateGameOverlayToStore(II)V
.end method

.method static native activateGameOverlayToUser(Ljava/lang/String;J)V
.end method

.method static native activateGameOverlayToWebPage(Ljava/lang/String;I)V
.end method

.method static native clearRichPresence()V
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;)J
.end method

.method static native getCoplayFriend(I)J
.end method

.method static native getCoplayFriendCount()I
.end method

.method static native getFriendByIndex(II)J
.end method

.method static native getFriendCoplayGame(J)I
.end method

.method static native getFriendCoplayTime(J)I
.end method

.method static native getFriendCount(I)I
.end method

.method static native getFriendGamePlayed(JLcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;)Z
.end method

.method static native getFriendPersonaName(J)Ljava/lang/String;
.end method

.method static native getFriendPersonaState(J)I
.end method

.method static native getFriendRelationship(J)I
.end method

.method static native getFriendRichPresence(JLjava/lang/String;)Ljava/lang/String;
.end method

.method static native getFriendRichPresenceKeyByIndex(JI)Ljava/lang/String;
.end method

.method static native getFriendRichPresenceKeyCount(J)I
.end method

.method static native getLargeFriendAvatar(J)I
.end method

.method static native getMediumFriendAvatar(J)I
.end method

.method static native getPersonaName()Ljava/lang/String;
.end method

.method static native getPersonaState()I
.end method

.method static native getSmallFriendAvatar(J)I
.end method

.method static native inviteUserToGame(JLjava/lang/String;)Z
.end method

.method static native requestFriendRichPresence(J)V
.end method

.method static native requestUserInformation(JZ)Z
.end method

.method static native setInGameVoiceSpeaking(JZ)V
.end method

.method static native setPersonaName(JLjava/lang/String;)J
.end method

.method static native setPlayedWith(J)V
.end method

.method static native setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z
.end method
