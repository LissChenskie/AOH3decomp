.class Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;
.super Ljava/lang/Object;
.source "AA_KeyManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->updateKeyExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(I)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapPortPosition;->keyUp(I)Z

    move-result p1

    return p1
.end method
