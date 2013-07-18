.class public Lafzkl/development/mColorPicker/views/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static f:F


# instance fields
.field private A:I

.field private B:F

.field private C:Landroid/graphics/RectF;

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/graphics/RectF;

.field private G:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

.field private H:Landroid/graphics/Point;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Shader;

.field private p:Landroid/graphics/Shader;

.field private q:Landroid/graphics/Shader;

.field private r:Landroid/graphics/Shader;

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/high16 v0, 0x3f80

    sput v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/high16 v0, 0x41f0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    .line 68
    const/high16 v0, 0x41a0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    .line 73
    const/high16 v0, 0x4120

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    .line 77
    const/high16 v0, 0x40a0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    .line 82
    const/high16 v0, 0x4000

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    .line 105
    const/16 v0, 0xff

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    .line 106
    const/high16 v0, 0x43b4

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    .line 107
    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    .line 108
    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    .line 110
    const-string v0, "Alpha"

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    .line 111
    const v0, -0xe3e3e4

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->x:I

    .line 112
    const v0, -0x919192

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    .line 113
    iput-boolean v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    .line 119
    iput v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->A:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    .line 154
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a()V

    .line 155
    return-void
.end method

.method private a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 703
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_9

    .line 706
    :cond_8
    :goto_8
    return p2

    :cond_9
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_8
.end method

.method private a(F)Landroid/graphics/Point;
    .registers 7
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 354
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 356
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 358
    mul-float v3, p1, v1

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 359
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 361
    return-object v2
.end method

.method private a(FF)Landroid/graphics/Point;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 367
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 368
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 370
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 372
    mul-float/2addr v2, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    .line 373
    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 375
    return-object v3
.end method

.method private a(I)Landroid/graphics/Point;
    .registers 7
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 381
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 383
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 385
    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 386
    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 388
    return-object v2
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    .line 159
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    .line 160
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    .line 161
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    .line 162
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    .line 163
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    .line 165
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->c()F

    move-result v0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    .line 167
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b()V

    .line 170
    invoke-virtual {p0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setFocusable(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 172
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    .line 236
    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 239
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->o:Landroid/graphics/Shader;

    if-nez v0, :cond_39

    .line 244
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 245
    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 244
    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->o:Landroid/graphics/Shader;

    .line 248
    :cond_39
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 250
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    .line 251
    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 250
    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->p:Landroid/graphics/Shader;

    .line 252
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->o:Landroid/graphics/Shader;

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->p:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 253
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 257
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    invoke-direct {p0, v0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    const/high16 v4, 0x3f80

    sget v5, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 614
    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    if-nez v2, :cond_7

    .line 650
    :goto_6
    return v1

    .line 618
    :cond_7
    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 619
    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 622
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->E:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 623
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->A:I

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b(F)F

    move-result v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    :goto_25
    move v1, v0

    .line 650
    goto :goto_6

    .line 629
    :cond_27
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->D:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 631
    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->A:I

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b(FF)[F

    move-result-object v2

    .line 635
    aget v1, v2, v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    .line 636
    aget v1, v2, v0

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    goto :goto_25

    .line 640
    :cond_48
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    if-eqz v4, :cond_65

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 642
    const/4 v1, 0x2

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->A:I

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b(I)I

    move-result v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    goto :goto_25

    :cond_65
    move v0, v1

    goto :goto_25
.end method

.method private b(F)F
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x43b4

    .line 429
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 431
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 433
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_14

    .line 434
    const/4 v0, 0x0

    .line 443
    :goto_f
    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0

    .line 436
    :cond_14
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1c

    move v0, v1

    .line 438
    goto :goto_f

    .line 440
    :cond_1c
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    goto :goto_f
.end method

.method private b(I)I
    .registers 6
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 449
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 451
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15

    .line 452
    const/4 v0, 0x0

    .line 461
    :goto_f
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    rsub-int v0, v0, 0xff

    return v0

    .line 454
    :cond_15
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    move v0, v1

    .line 456
    goto :goto_f

    .line 458
    :cond_1e
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_f
.end method

.method private b(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 711
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_9

    .line 714
    :cond_8
    :goto_8
    return p2

    :cond_9
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_8
.end method

.method private b()V
    .registers 5

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->h:Landroid/graphics/Paint;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->j:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->l:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 201
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/high16 v4, 0x3f80

    .line 269
    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 272
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    .line 274
    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    .line 275
    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    .line 276
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 277
    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    .line 273
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->q:Landroid/graphics/Shader;

    if-nez v0, :cond_43

    .line 281
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->d()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->q:Landroid/graphics/Shader;

    .line 282
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->q:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 285
    :cond_43
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    const/high16 v0, 0x4080

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v9

    .line 289
    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(F)Landroid/graphics/Point;

    move-result-object v1

    .line 291
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 292
    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 293
    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 294
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 295
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 298
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 300
    return-void
.end method

.method private b(FF)[F
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    .line 394
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 395
    const/4 v0, 0x2

    new-array v5, v0, [F

    .line 397
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 398
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 400
    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2c

    move v0, v1

    .line 410
    :goto_17
    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, p2, v6

    if-gez v6, :cond_39

    .line 421
    :goto_1d
    const/4 v4, 0x0

    div-float v2, v7, v2

    mul-float/2addr v0, v2

    aput v0, v5, v4

    .line 422
    const/4 v0, 0x1

    div-float v2, v7, v3

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    aput v1, v5, v0

    .line 424
    return-object v5

    .line 403
    :cond_2c
    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_34

    move v0, v2

    .line 405
    goto :goto_17

    .line 407
    :cond_34
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v0

    goto :goto_17

    .line 413
    :cond_39
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_41

    move v1, v3

    .line 415
    goto :goto_1d

    .line 417
    :cond_41
    iget v1, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    goto :goto_1d
.end method

.method private c()F
    .registers 4

    .prologue
    .line 204
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->d:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 205
    const/high16 v1, 0x3f80

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 207
    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/high16 v4, 0x3f80

    .line 304
    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->G:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    if-nez v0, :cond_14

    .line 348
    :cond_13
    :goto_13
    return-void

    .line 306
    :cond_14
    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 309
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    .line 311
    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    .line 312
    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    .line 313
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 314
    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 318
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->G:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v1, v0, v6

    const/4 v1, 0x1

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    aput v2, v0, v1

    .line 321
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 322
    invoke-static {v6, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 324
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    .line 325
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 324
    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->r:Landroid/graphics/Shader;

    .line 328
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->r:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 330
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_8a

    .line 333
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget v3, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 336
    :cond_8a
    sget v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v10

    div-float/2addr v0, v9

    .line 338
    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(I)Landroid/graphics/Point;

    move-result-object v1

    .line 340
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 341
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 342
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 343
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 344
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->e:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 346
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_13
.end method

.method private d()[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 212
    const/16 v0, 0x169

    new-array v3, v0, [I

    .line 215
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_b
    if-gez v0, :cond_e

    .line 219
    return-object v3

    .line 216
    :cond_e
    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v5, v0

    aput v5, v4, v2

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v3, v1

    .line 215
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private e()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 761
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    .line 762
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4000

    sub-float/2addr v0, v2

    .line 764
    iget-boolean v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v2, :cond_15

    .line 765
    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 768
    :cond_15
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    .line 769
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    .line 770
    add-float v3, v1, v0

    .line 771
    add-float/2addr v0, v2

    .line 773
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 774
    return-void
.end method

.method private f()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f80

    .line 777
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    .line 779
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    sub-float/2addr v0, v2

    add-float v2, v0, v6

    .line 780
    iget v0, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v0, v6

    .line 781
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v6

    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    add-float/2addr v0, v5

    :goto_1c
    sub-float v0, v4, v0

    .line 782
    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v6

    .line 784
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 785
    return-void

    .line 781
    :cond_29
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private g()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 789
    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-nez v0, :cond_7

    .line 808
    :goto_6
    return-void

    .line 791
    :cond_7
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    .line 793
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    .line 794
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 795
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 796
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    .line 798
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 801
    new-instance v0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    const/high16 v1, 0x40a0

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->G:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    .line 802
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->G:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 803
    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 804
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 802
    invoke-virtual {v0, v1, v2, v3, v4}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_6
.end method

.method private getPrefferedHeight()I
    .registers 4

    .prologue
    .line 733
    const/high16 v0, 0x4348

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 735
    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v1, :cond_12

    .line 736
    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 739
    :cond_12
    return v0
.end method

.method private getPrefferedWidth()I
    .registers 4

    .prologue
    .line 720
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 722
    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v1, :cond_10

    .line 723
    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 727
    :cond_10
    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    add-float/2addr v0, v1

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .registers 2

    .prologue
    .line 833
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    return v0
.end method

.method public getColor()I
    .registers 5

    .prologue
    .line 841
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .registers 2

    .prologue
    .line 890
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .registers 2

    .prologue
    .line 927
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->x:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_15

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    .line 232
    :cond_15
    :goto_15
    return-void

    .line 228
    :cond_16
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b(Landroid/graphics/Canvas;)V

    .line 230
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->c(Landroid/graphics/Canvas;)V

    goto :goto_15
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 657
    .line 660
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 661
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 663
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 664
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 667
    invoke-direct {p0, v0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(II)I

    move-result v2

    .line 668
    invoke-direct {p0, v1, v3}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b(II)I

    move-result v0

    .line 671
    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-nez v1, :cond_35

    .line 672
    int-to-float v1, v2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    sub-float/2addr v1, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 675
    if-le v1, v0, :cond_32

    .line 677
    int-to-float v1, v0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 699
    :cond_2e
    :goto_2e
    invoke-virtual {p0, v1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setMeasuredDimension(II)V

    .line 700
    return-void

    :cond_32
    move v0, v1

    move v1, v2

    .line 682
    goto :goto_2e

    .line 685
    :cond_35
    int-to-float v1, v0

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    sub-float/2addr v1, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 687
    if-le v1, v2, :cond_2e

    .line 689
    int-to-float v0, v2

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->b:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v2

    .line 690
    goto :goto_2e
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 748
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    .line 749
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 750
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 751
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 752
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->C:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->B:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 754
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->e()V

    .line 755
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->f()V

    .line 756
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->g()V

    .line 757
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 570
    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    move v1, v2

    .line 598
    :goto_a
    if-eqz v1, :cond_52

    .line 600
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_2b

    .line 601
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v5, v4, v2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    aput v2, v4, v0

    const/4 v2, 0x2

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 604
    :cond_2b
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    .line 609
    :goto_2e
    return v0

    .line 576
    :pswitch_2f
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    .line 578
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_a

    .line 584
    :pswitch_45
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_a

    .line 590
    :pswitch_4a
    const/4 v1, 0x0

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->H:Landroid/graphics/Point;

    .line 592
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_a

    .line 609
    :cond_52
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2e

    .line 572
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_4a
        :pswitch_45
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter

    .prologue
    const/high16 v8, 0x4120

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1b

    .line 477
    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->A:I

    packed-switch v5, :pswitch_data_a8

    :cond_1b
    move v0, v3

    .line 553
    :goto_1c
    if-eqz v0, :cond_9e

    .line 555
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_3d

    .line 556
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v5, v2, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    aput v3, v2, v4

    const/4 v3, 0x2

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    aput v5, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 559
    :cond_3d
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    move v0, v4

    .line 564
    :goto_41
    return v0

    .line 483
    :pswitch_42
    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    const/high16 v7, 0x4248

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    .line 484
    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    const/high16 v7, 0x4248

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    .line 486
    cmpg-float v6, v5, v0

    if-gez v6, :cond_5d

    move v5, v0

    .line 493
    :cond_53
    :goto_53
    cmpg-float v6, v2, v0

    if-gez v6, :cond_63

    .line 500
    :goto_57
    iput v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    .line 501
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    move v0, v4

    .line 505
    goto :goto_1c

    .line 489
    :cond_5d
    cmpl-float v6, v5, v1

    if-lez v6, :cond_53

    move v5, v1

    .line 490
    goto :goto_53

    .line 496
    :cond_63
    cmpl-float v0, v2, v1

    if-lez v0, :cond_a5

    move v0, v1

    .line 497
    goto :goto_57

    .line 509
    :pswitch_69
    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    mul-float v2, v6, v8

    sub-float/2addr v1, v2

    .line 511
    cmpg-float v2, v1, v0

    if-gez v2, :cond_76

    .line 518
    :goto_72
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    move v0, v4

    .line 522
    goto :goto_1c

    .line 514
    :cond_76
    const/high16 v0, 0x43b4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_a3

    .line 515
    const/high16 v0, 0x43b4

    goto :goto_72

    .line 526
    :pswitch_7f
    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->F:Landroid/graphics/RectF;

    if-nez v0, :cond_89

    :cond_87
    move v0, v3

    .line 528
    goto :goto_1c

    .line 531
    :cond_89
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    int-to-float v0, v0

    mul-float v1, v2, v8

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 533
    if-gez v0, :cond_97

    move v0, v3

    .line 540
    :cond_93
    :goto_93
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    move v0, v4

    .line 543
    goto :goto_1c

    .line 536
    :cond_97
    const/16 v1, 0xff

    if-le v0, v1, :cond_93

    .line 537
    const/16 v0, 0xff

    goto :goto_93

    .line 564
    :cond_9e
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_41

    :cond_a3
    move v0, v1

    goto :goto_72

    :cond_a5
    move v0, v2

    goto :goto_57

    .line 477
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_42
        :pswitch_69
        :pswitch_7f
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .registers 3
    .parameter

    .prologue
    .line 936
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-virtual {p0, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->w:Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    .line 948
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 900
    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    if-eq v0, p1, :cond_12

    .line 901
    iput-boolean p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->z:Z

    .line 908
    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->o:Landroid/graphics/Shader;

    .line 909
    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->p:Landroid/graphics/Shader;

    .line 910
    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->q:Landroid/graphics/Shader;

    .line 911
    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->r:Landroid/graphics/Shader;

    .line 913
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->requestLayout()V

    .line 916
    :cond_12
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2
    .parameter

    .prologue
    .line 825
    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->y:I

    .line 826
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    .line 827
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setColor(IZ)V

    .line 850
    return-void
.end method

.method public setColor(IZ)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 860
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 861
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 862
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 863
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 865
    new-array v4, v8, [F

    .line 867
    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 869
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    .line 870
    aget v0, v4, v5

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    .line 871
    aget v0, v4, v6

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    .line 872
    aget v0, v4, v7

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    .line 874
    if-eqz p2, :cond_46

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_46

    .line 875
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->s:I

    new-array v2, v8, [F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->t:F

    aput v3, v2, v5

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->u:F

    aput v3, v2, v6

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->v:F

    aput v3, v2, v7

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 878
    :cond_46
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    .line 879
    return-void
.end method

.method public setOnColorChangedListener(Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;)V
    .registers 2
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->g:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    .line 818
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .registers 4
    .parameter

    .prologue
    .line 919
    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->x:I

    .line 921
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    .line 924
    return-void
.end method
