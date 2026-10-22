.class public Lcom/android/support/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mod_Menu"


# instance fields
.field BTN_COLOR:I

.field BtnOFF:I

.field BtnON:I

.field CategoryBG:I

.field CheckBoxColor:I

.field ICON_ALPHA:F

.field ICON_SIZE:I

.field MENU_BG_COLOR:I

.field MENU_CORNER:F

.field MENU_FEATURE_BG_COLOR:I

.field MENU_HEIGHT:I

.field MENU_WIDTH:I

.field NumberTxtColor:Ljava/lang/String;

.field POS_X:I

.field POS_Y:I

.field RadioColor:I

.field SeekBarColor:I

.field SeekBarProgressColor:I

.field TEXT_COLOR:I

.field TEXT_COLOR_2:I

.field TEXT_COLOR_3:I

.field ToggleOFF:I

.field ToggleON:I

.field getContext:Landroid/content/Context;

.field mCollapse:Landroid/widget/LinearLayout;

.field mCollapsed:Landroid/widget/RelativeLayout;

.field mExpanded:Landroid/widget/LinearLayout;

.field mRootContainer:Landroid/widget/RelativeLayout;

.field mSettings:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mods:Landroid/widget/LinearLayout;

.field overlayRequired:Z

.field rootFrame:Landroid/widget/FrameLayout;

.field scrlLL:Landroid/widget/LinearLayout$LayoutParams;

.field scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

.field scrollView:Landroid/widget/ScrollView;

.field startimage:Landroid/widget/ImageView;

.field stopChecking:Z

.field vmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "#0ba40b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    const-string v4, "#6d6d6d"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->TEXT_COLOR_3:I

    const-string v4, "#303030"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/support/Menu;->BTN_COLOR:I

    const-string v5, "#202020"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    const/16 v5, 0x122

    iput v5, v0, Lcom/android/support/Menu;->MENU_WIDTH:I

    const/16 v5, 0xd2

    iput v5, v0, Lcom/android/support/Menu;->MENU_HEIGHT:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/support/Menu;->POS_X:I

    const/16 v6, 0x64

    iput v6, v0, Lcom/android/support/Menu;->POS_Y:I

    const/high16 v6, 0x40800000    # 4.0f

    iput v6, v0, Lcom/android/support/Menu;->MENU_CORNER:F

    const/16 v6, 0x30

    iput v6, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->ToggleON:I

    const-string v2, "#d40404"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->ToggleOFF:I

    const-string v2, "#1b5e20"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->BtnON:I

    const-string v2, "#7f0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->BtnOFF:I

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->CategoryBG:I

    const-string v2, "#80CBC4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->SeekBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->SeekBarProgressColor:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->CheckBoxColor:I

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->RadioColor:I

    const-string v2, "#41c300"

    iput-object v2, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    sput-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget v3, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v0, Lcom/android/support/Menu;->MENU_WIDTH:I

    invoke-direct {v0, v7}, Lcom/android/support/Menu;->dp(I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v4, v0, Lcom/android/support/Menu;->MENU_CORNER:F

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v4, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-string v4, "#32cb00"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v7, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->Icon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    iget-object v9, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    array-length v10, v7

    invoke-static {v7, v5, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v9, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v10, 0xa

    invoke-direct {v0, v10}, Lcom/android/support/Menu;->convertDipToPixels(I)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v9, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/support/Menu$1;

    invoke-direct {v11, v0}, Lcom/android/support/Menu$1;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v11, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v3, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><head></head><body style=\"margin: 0; padding: 0\"><img src=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" width=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" height=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" ></body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/html"

    const-string v14, "utf-8"

    invoke-virtual {v9, v12, v13, v14}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget v12, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v9, v12}, Landroid/webkit/WebView;->setAlpha(F)V

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_0

    const-string v13, "\u2699"

    goto :goto_0

    :cond_0
    const-string v13, "\ud83d\udd27"

    :goto_0
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v13, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lcom/android/support/Menu$2;

    invoke-direct {v15, v0}, Lcom/android/support/Menu$2;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->SettingsList()[Ljava/lang/String;

    move-result-object v15

    iget-object v14, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-direct {v0, v15, v14}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    new-instance v14, Landroid/widget/RelativeLayout;

    invoke-direct {v14, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v15, 0x14

    const/4 v6, 0x5

    invoke-virtual {v14, v10, v15, v10, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v6, 0x10

    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v15, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41900000    # 18.0f

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v15, 0x11

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xe

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget v3, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v0, Lcom/android/support/Menu;->MENU_HEIGHT:I

    invoke-direct {v0, v15}, Lcom/android/support/Menu;->dp(I)I

    move-result v15

    invoke-direct {v3, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, v0, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    sget-boolean v5, Lcom/android/support/Preferences;->isExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget v5, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x3

    const/16 v15, 0xa

    invoke-virtual {v3, v15, v5, v15, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v5, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x9

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v2, "HIDE/KILL (Hold)"

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v2, v0, Lcom/android/support/Menu;->TEXT_COLOR_3:I

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v2, Lcom/android/support/Menu$3;

    invoke-direct {v2, v0}, Lcom/android/support/Menu$3;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/support/Menu$4;

    invoke-direct {v2, v0}, Lcom/android/support/Menu$4;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v18, v4

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v2, "MINIMIZE"

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v2, v0, Lcom/android/support/Menu;->TEXT_COLOR_3:I

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v2, Lcom/android/support/Menu$5;

    invoke-direct {v2, v0}, Lcom/android/support/Menu$5;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v5

    iget-object v5, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/support/Menu;->Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v2, Lcom/android/support/Menu$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/support/Menu$10;-><init>(Lcom/android/support/Menu;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v2, Lcom/android/support/Menu$11;

    invoke-direct {v2, p0, p3}, Lcom/android/support/Menu$11;-><init>(Lcom/android/support/Menu;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 11

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    const-string v2, "OnOff_"

    const-string v3, ""

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x1

    move v9, v2

    :goto_0
    move v4, v9

    new-instance v10, Lcom/android/support/Menu$12;

    move-object v2, v10

    move-object v3, p0

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/support/Menu$12;-><init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    nop

    iget v1, p0, Lcom/android/support/Menu;->CheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/android/support/Menu$16;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/android/support/Menu$16;-><init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 13

    move-object v6, p0

    move-object v7, p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {v8, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v2

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    invoke-virtual {v10, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "#222D38"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v10, v6, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v1

    iget v1, v6, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25bd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u25bd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, v6, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0x14

    invoke-virtual {v11, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25b3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u25b3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v12, Lcom/android/support/Menu$18;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v10

    move-object v4, v11

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu$18;-><init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, p1

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget v4, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v10, Lcom/android/support/Menu$14;

    move-object v4, v10

    move-object v5, p0

    move v6, p4

    move-object v7, v2

    move-object v8, p3

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/support/Menu$14;-><init>(Lcom/android/support/Menu;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget v4, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v4, Lcom/android/support/Menu$15;

    invoke-direct {v4, p0, v2, p3, p2}, Lcom/android/support/Menu$15;-><init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    move-object/from16 v10, p4

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v8, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    const/16 v0, 0xa

    const/4 v1, 0x5

    invoke-virtual {v13, v0, v1, v0, v1}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/RadioGroup;->setOrientation(I)V

    invoke-virtual {v13, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_0

    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    move-object/from16 v3, p3

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    new-instance v17, Lcom/android/support/Menu$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v4, v16

    move/from16 v5, p2

    move-object v6, v13

    move-object/from16 v18, v7

    invoke-direct/range {v0 .. v7}, Lcom/android/support/Menu$17;-><init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    nop

    iget v1, v8, Lcom/android/support/Menu;->RadioColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    move-object/from16 v2, p1

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-static {v7, v8}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v10, v2, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": <font color=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v9, :cond_0

    move/from16 v1, p4

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v6, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    const/16 v0, 0x19

    const/16 v1, 0x23

    invoke-virtual {v12, v0, v2, v1, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    move/from16 v13, p5

    invoke-virtual {v12, v13}, Landroid/widget/SeekBar;->setMax(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    move/from16 v14, p4

    invoke-virtual {v12, v14}, Landroid/widget/SeekBar;->setMin(I)V

    goto :goto_1

    :cond_1
    move/from16 v14, p4

    :goto_1
    if-nez v9, :cond_2

    move v0, v14

    goto :goto_2

    :cond_2
    move v0, v9

    :goto_2
    invoke-virtual {v12, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, v6, Lcom/android/support/Menu;->SeekBarColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, v6, Lcom/android/support/Menu;->SeekBarProgressColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v15, Lcom/android/support/Menu$9;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu$9;-><init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v12, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spinner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mod_Menu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v5, Lcom/android/support/Menu$13;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/support/Menu$13;-><init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 7

    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    new-array v3, v2, [I

    const/4 v4, 0x3

    new-array v4, v4, [[I

    const v5, -0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x10100a0

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v3, v4, v5

    iget v3, p0, Lcom/android/support/Menu;->ToggleON:I

    iget v5, p0, Lcom/android/support/Menu;->ToggleOFF:I

    const v6, -0xffff01

    filled-new-array {v6, v3, v5}, [I

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Mod_Menu"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setTextColor(I)V

    const/16 v3, 0xa

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lcom/android/support/Menu$8;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/support/Menu$8;-><init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/webkit/WebView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/support/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/support/Menu;->isViewCollapsed()Z

    move-result v0

    return v0
.end method

.method private convertDipToPixels(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private dp(I)I
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    move-object/from16 v8, p2

    const/4 v1, 0x0

    move v9, v1

    move v1, v0

    move-object/from16 v0, p2

    :goto_0
    array-length v2, v7

    if-ge v9, v2, :cond_7

    const/4 v2, 0x0

    aget-object v3, v7, v9

    const-string v4, "_True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v10, ""

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v11, v2

    goto :goto_1

    :cond_0
    move v11, v2

    :goto_1
    move-object v0, v8

    const-string v2, "CollapseAdd_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v6, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v0

    goto :goto_2

    :cond_1
    move-object v12, v0

    :goto_2
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    aget-object v4, v13, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v13, v2

    const-string v5, "-[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    sub-int v4, v9, v1

    move v10, v1

    move-object v14, v3

    move v15, v4

    goto :goto_4

    :cond_3
    :goto_3
    aget-object v4, v13, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v13, v2

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    move v10, v1

    move-object v14, v3

    move v15, v4

    :goto_4
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v16, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_4
    goto/16 :goto_5

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto/16 :goto_6

    :sswitch_1
    const-string v1, "CheckBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_6

    :sswitch_2
    const-string v1, "RadioButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto/16 :goto_6

    :sswitch_3
    const-string v1, "RichWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto/16 :goto_6

    :sswitch_4
    const-string v1, "Category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto :goto_6

    :sswitch_5
    const-string v1, "RichTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_6

    :sswitch_6
    const-string v1, "ButtonOnOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_6

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_6

    :sswitch_8
    const-string v1, "Collapse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_6

    :sswitch_9
    const-string v1, "InputText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_6

    :sswitch_a
    const-string v1, "SeekBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :sswitch_b
    const-string v1, "InputValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_6

    :sswitch_c
    const-string v1, "Toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :sswitch_d
    const-string v1, "ButtonLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_6

    :goto_5
    const/4 v0, -0x1

    :goto_6
    packed-switch v0, :pswitch_data_0

    move-object/from16 v18, v5

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v10, v10, 0x1

    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v10, v10, 0x1

    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_8

    :pswitch_3
    add-int/lit8 v10, v10, 0x1

    aget-object v0, v5, v16

    aget-object v1, v5, v4

    invoke-direct {v6, v12, v0, v1}, Lcom/android/support/Menu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_8

    :pswitch_4
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0, v11}, Lcom/android/support/Menu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    move v1, v10

    goto/16 :goto_8

    :pswitch_5
    aget-object v0, v5, v16

    aget-object v1, v5, v4

    invoke-direct {v6, v12, v15, v0, v1}, Lcom/android/support/Menu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_7

    :pswitch_7
    array-length v0, v5

    if-ne v0, v3, :cond_5

    aget-object v0, v5, v4

    aget-object v1, v5, v16

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v6, v12, v15, v0, v1}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    :cond_5
    array-length v0, v5

    if-ne v0, v4, :cond_6

    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0, v2}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    goto :goto_7

    :pswitch_8
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0}, Lcom/android/support/Menu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_7

    :pswitch_9
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    aget-object v0, v5, v16

    aget-object v1, v5, v4

    invoke-direct {v6, v12, v15, v0, v1}, Lcom/android/support/Menu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_a
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_7

    :pswitch_b
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_7

    :pswitch_c
    aget-object v16, v5, v16

    aget-object v0, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v18, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    goto :goto_7

    :pswitch_d
    move-object/from16 v18, v5

    aget-object v0, v18, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    nop

    :cond_6
    :goto_7
    move v1, v10

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object v0, v12

    goto/16 :goto_0

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73d2c194 -> :sswitch_d
        -0x6a5c588c -> :sswitch_c
        -0x370e8c19 -> :sswitch_b
        -0x274065a5 -> :sswitch_a
        -0x22cfc409 -> :sswitch_9
        -0x21d27833 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        -0x6595922 -> :sswitch_6
        0x4f11a8e -> :sswitch_5
        0x6dd211e -> :sswitch_4
        0x1977177d -> :sswitch_3
        0x2e46a6ed -> :sswitch_2
        0x5f7507c3 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/android/support/Menu$7;

    invoke-direct {v0, p0}, Lcom/android/support/Menu$7;-><init>(Lcom/android/support/Menu;)V

    return-object v0
.end method


# virtual methods
.method native GetFeatureList()[Ljava/lang/String;
.end method

.method native Icon()Ljava/lang/String;
.end method

.method native IconWebViewData()Ljava/lang/String;
.end method

.method native Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native IsGameLibLoaded()Z
.end method

.method public SetWindowManagerActivity()V
    .locals 9

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/support/Menu;->POS_X:I

    iget v4, p0, Lcom/android/support/Menu;->POS_Y:I

    const v6, 0x2800108

    const/4 v7, -0x2

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v5, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v8, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public SetWindowManagerWindowService()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    const/16 v4, 0x7d2

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/support/Menu;->overlayRequired:Z

    return-void
.end method

.method native SettingsList()[Ljava/lang/String;
.end method

.method public ShowMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/support/Menu$6;

    invoke-direct {v1, p0, v0}, Lcom/android/support/Menu$6;-><init>(Lcom/android/support/Menu;Landroid/os/Handler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
