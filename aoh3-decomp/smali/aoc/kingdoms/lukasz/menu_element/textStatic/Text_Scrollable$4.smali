.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition(Z)I
    .locals 1

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1
.end method
