.class Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/LanguageManager;->updateKeyOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p1
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    :try_start_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p1
.end method
