.class Lcom/android/support/Menu$14$2;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$14;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$14;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iput-object p2, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    move v0, v1

    goto :goto_1

    :cond_2
    const v1, 0x7ffffff8

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v1, v1, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v1, v1, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-static {v1, v2, v0}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method
