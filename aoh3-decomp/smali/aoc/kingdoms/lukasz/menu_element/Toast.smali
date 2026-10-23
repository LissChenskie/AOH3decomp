.class public Laoc/kingdoms/lukasz/menu_element/Toast;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/Hover;


# static fields
.field public static final TEXT_SCALE:F = 0.75f

.field public static final TIME_INVIEW_LONG:I = 0xdac

.field public static final TIME_INVIEW_SHORT:I = 0x6d6

.field public static final TIME_INVIEW_STANDARD:I = 0x9c4

.field public static final TIME_INVIEW_VERY_LONG:I = 0x1770

.field public static final TIME_INVIEW_VERY_SHORT:I = 0x3e8

.field public static final TIME_INVIEW_VERY_VERY_LONG:I = 0x2710

.field private static final TIME_START_OPACITY_PERCENTAGE:F = 0.4f


# instance fields
.field private backAnimation:Z

.field private fAlpha:F

.field private iElementsSize:I

.field public iFontID:I

.field public iHeight:I

.field public iMaxWidth:I

.field public iPosX:I

.field public iPosY:I

.field private iScrollPosX:I

.field private iTimeInView:I

.field public iWidth:I

.field private iWidthOver:I

.field public inView:Z

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1, p4}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    invoke-direct {p0, p1, p4}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    iput-boolean p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    invoke-direct {p0, p1, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1, v1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;IIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    return-void
.end method

.method private final init(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    move p3, p1

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-lez p3, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    :cond_2
    :goto_1
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result p3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    if-le p3, v0, :cond_3

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result p3

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result p3

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x6

    add-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    mul-int/2addr p1, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/2addr p3, v0

    add-int/2addr p1, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    return-void
.end method

.method private final initText(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p1, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method private final initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p1, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysBelow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    return-void
.end method

.method public final draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Toast;->getScrollPosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    add-int/2addr v4, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-le v4, v5, :cond_1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    goto :goto_0

    :cond_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    sub-int/2addr v3, v4

    sub-int v3, v3, p3

    :cond_1
    :goto_0
    move v10, v3

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v3, v3, v5

    const/4 v11, 0x0

    if-gez v3, :cond_2

    iput-boolean v11, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    goto :goto_1

    :cond_2
    iget-wide v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    sget-wide v7, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v7, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    sub-long/2addr v3, v7

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v7, v5

    mul-float/2addr v7, v6

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v3, v7

    long-to-int v3, v3

    int-to-float v4, v5

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v5, v4

    const/16 v4, 0xff

    invoke-static {v4, v11, v3, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getColorStep(IIII)F

    move-result v3

    iput v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    :cond_3
    :goto_1
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buttonGame:I

    add-int v13, v2, v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    move-object v1, p1

    move v2, v3

    move v3, v13

    move v4, v10

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    mul-float/2addr v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v4, v10, 0x2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v2, v3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v11, v1, :cond_4

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v3, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/2addr v4, v11

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v11

    add-int/2addr v4, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Toast;->getScrollPosX()I

    move-result v1

    iget-wide v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v2, v4

    const/4 v10, 0x0

    if-gez v2, :cond_0

    iput-boolean v10, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    sub-long/2addr v2, v6

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    long-to-int v2, v2

    int-to-float v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v4, v3

    const/16 v3, 0xff

    invoke-static {v3, v10, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getColorStep(IIII)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    :cond_1
    :goto_0
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int v2, p3, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    sub-int/2addr v2, v3

    move v11, v2

    goto :goto_1

    :cond_2
    move/from16 v11, p3

    :goto_1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v12, v12, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonGame:I

    add-int v13, p2, v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    move-object v1, p1

    move v3, v13

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    mul-float/2addr v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v4, v11, 0x2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v2, v3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const v1, 0x3f666666    # 0.9f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    :goto_2
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v10, v1, :cond_3

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v3, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/2addr v4, v10

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v10

    add-int/2addr v4, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getScrollPosX()I
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final setInView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->setInView(Ljava/lang/String;I)V

    return-void
.end method

.method public final setInView(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p1, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 p1, 0x9c4

    invoke-direct {p0, v0, p1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->setInView(Z)V

    return-void
.end method

.method public final setInView(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    return-void
.end method
