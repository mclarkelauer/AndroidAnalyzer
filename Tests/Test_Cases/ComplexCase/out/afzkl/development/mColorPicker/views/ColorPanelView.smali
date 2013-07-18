.class public Lafzkl/development/mColorPicker/views/ColorPanelView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static a:F


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/high16 v0, 0x3f80

    sput v0, Lafzkl/development/mColorPicker/views/ColorPanelView;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const v0, -0x919192

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->b:I

    .line 46
    const/high16 v0, -0x100

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->c:I

    .line 68
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->a()V

    .line 69
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->d:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->e:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lafzkl/development/mColorPicker/views/ColorPanelView;->a:F

    .line 75
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 121
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    .line 123
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    .line 124
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    .line 125
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 126
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    .line 128
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    .line 130
    new-instance v0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    const/high16 v1, 0x40a0

    sget v2, Lafzkl/development/mColorPicker/views/ColorPanelView;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->h:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    .line 132
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->h:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 133
    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 134
    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 135
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 132
    invoke-virtual {v0, v1, v2, v3, v4}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->setBounds(IIII)V

    .line 137
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->b:I

    return v0
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->g:Landroid/graphics/RectF;

    .line 84
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->h:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    if-eqz v1, :cond_19

    .line 89
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->h:Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_19
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 101
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    .line 111
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 112
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 113
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 114
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 116
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->b()V

    .line 118
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->b:I

    .line 162
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->invalidate()V

    .line 163
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->c:I

    .line 145
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->invalidate()V

    .line 146
    return-void
.end method
