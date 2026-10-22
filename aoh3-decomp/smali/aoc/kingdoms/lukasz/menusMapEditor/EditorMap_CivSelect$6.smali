.class synthetic Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$6;
.super Ljava/lang/Object;
.source "EditorMap_CivSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$menusMapEditor$EditorMap_CivSelect$SelectMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->values()[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$6;->$SwitchMap$aoc$kingdoms$lukasz$menusMapEditor$EditorMap_CivSelect$SelectMode:[I

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CIV:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$6;->$SwitchMap$aoc$kingdoms$lukasz$menusMapEditor$EditorMap_CivSelect$SelectMode:[I

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CLAIMANT:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
