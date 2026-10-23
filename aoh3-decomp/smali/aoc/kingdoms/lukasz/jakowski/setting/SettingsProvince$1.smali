.class Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "SettingsProvince.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettingsProvinceBorder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->init(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$1;->id:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    :cond_1
    return-void
.end method
