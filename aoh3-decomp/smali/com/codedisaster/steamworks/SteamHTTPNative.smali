.class final Lcom/codedisaster/steamworks/SteamHTTPNative;
.super Ljava/lang/Object;
.source "SteamHTTPNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamHTTPCallbackAdapter;)J
.end method

.method static native createHTTPRequest(ZILjava/lang/String;)J
.end method

.method static native getHTTPResponseBodyData(ZJLjava/nio/ByteBuffer;II)Z
.end method

.method static native getHTTPResponseBodySize(ZJ)I
.end method

.method static native getHTTPResponseHeaderSize(ZJLjava/lang/String;)I
.end method

.method static native getHTTPResponseHeaderValue(ZJLjava/lang/String;Ljava/nio/ByteBuffer;II)Z
.end method

.method static native getHTTPStreamingResponseBodyData(ZJILjava/nio/ByteBuffer;II)Z
.end method

.method static native releaseHTTPRequest(ZJ)Z
.end method

.method static native sendHTTPRequest(ZJJ)J
.end method

.method static native sendHTTPRequestAndStreamResponse(ZJ)J
.end method

.method static native setHTTPRequestContextValue(ZJJ)Z
.end method

.method static native setHTTPRequestGetOrPostParameter(ZJLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native setHTTPRequestHeaderValue(ZJLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native setHTTPRequestNetworkActivityTimeout(ZJI)Z
.end method
