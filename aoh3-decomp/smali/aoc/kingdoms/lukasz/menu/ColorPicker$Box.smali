.class Laoc/kingdoms/lukasz/menu/ColorPicker$Box;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Box"
.end annotation


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

.field private visible:Z


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    iput p4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    iput p5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    return v0
.end method

.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    return v0
.end method

.method public final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    return-void
.end method

.method public final setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    return-void
.end method

.method public final setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    return-void
.end method
