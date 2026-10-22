.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition(Z)I
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$400(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$306(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result p1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$304(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$402(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;J)J

    :cond_3
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result p1

    return p1
.end method
