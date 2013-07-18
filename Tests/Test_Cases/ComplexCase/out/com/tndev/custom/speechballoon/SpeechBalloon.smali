.class public Lcom/tndev/custom/speechballoon/SpeechBalloon;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field private f:Lcom/tndev/custom/speechballoon/BalloonInfo;

.field private g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/text/TextPaint;

.field private o:[Ljava/lang/String;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tndev/custom/speechballoon/BalloonInfo;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xff

    const/high16 v5, 0x4000

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput-boolean v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->g:Z

    .line 49
    iput v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    iput v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    .line 56
    iput-object p2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->h:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 63
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->h:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_96

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->k:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->l:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->m:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    .line 80
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 83
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b()V

    .line 84
    return-void

    .line 65
    nop

    :array_96
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/high16 v5, -0x100

    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-boolean v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    if-eqz v0, :cond_4b

    .line 101
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x3f80

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 102
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 110
    :goto_41
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-object v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    return-void

    .line 103
    :cond_4b
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-boolean v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    if-eqz v0, :cond_5e

    .line 104
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 105
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_41

    .line 107
    :cond_5e
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 108
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_41
.end method

.method private c()V
    .registers 7

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 201
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    if-nez v0, :cond_31

    .line 202
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v3, v3, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v4, v4, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 210
    :goto_30
    return-void

    .line 205
    :cond_31
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v3, v3, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v4, v4, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v5, v5, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    int-to-float v2, v2

    .line 207
    iget-object v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v3, v3, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    int-to-float v3, v3

    .line 208
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 205
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_30
.end method

.method private d()V
    .registers 7

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 218
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v3, v3, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v4, v4, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v5, v5, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 219
    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    const v4, 0x3f99999a

    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 227
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 232
    return-void
.end method

.method private f()V
    .registers 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a()V

    .line 239
    return-void
.end method


# virtual methods
.method a()V
    .registers 11

    .prologue
    const/16 v4, 0x32

    const/16 v5, 0x14

    const/4 v1, 0x0

    .line 245
    .line 248
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 249
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 250
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-object v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    const-string v2, "Ig"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    float-to-double v2, v0

    const-wide v7, 0x3ff3333333333333L

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->p:I

    move v0, v1

    move v2, v1

    move v3, v1

    .line 257
    :goto_41
    iget-object v7, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    array-length v7, v7

    if-lt v0, v7, :cond_63

    .line 267
    if-ge v2, v5, :cond_49

    move v2, v5

    .line 271
    :cond_49
    if-ge v3, v4, :cond_4c

    move v3, v4

    .line 276
    :cond_4c
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    int-to-double v1, v2

    const-wide v4, 0x3ffccccccccccccdL

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    .line 277
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    int-to-float v1, v3

    const v2, 0x3fa66666

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    .line 278
    return-void

    .line 258
    :cond_63
    iget v7, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->p:I

    add-int/2addr v2, v7

    .line 260
    iget-object v7, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v1, v9, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 262
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v3, v7, :cond_81

    .line 263
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 257
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_41
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->balloonRotation:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    return-void
.end method

.method public getBalloonInfo()Lcom/tndev/custom/speechballoon/BalloonInfo;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->g:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    iget v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 120
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    iget v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    iget v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 137
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    const/4 v0, 0x0

    :goto_a2
    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_a8

    .line 146
    return-void

    .line 143
    :cond_a8
    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    iget v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->e:I

    iget v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->p:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 144
    iget-object v4, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->n:Landroid/text/TextPaint;

    .line 143
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4040

    .line 160
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f()V

    .line 162
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    .line 164
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    .line 166
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    if-eqz v0, :cond_b5

    .line 167
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    .line 171
    :goto_41
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    if-eqz v0, :cond_b8

    .line 172
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    .line 176
    :goto_50
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    .line 177
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    .line 179
    iget v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    add-int/2addr v0, v1

    .line 180
    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    add-int/2addr v1, v2

    .line 182
    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setMeasuredDimension(II)V

    .line 184
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->p:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->p:I

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->o:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    iget v2, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->e:I

    .line 186
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    if-nez v0, :cond_bb

    .line 187
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c()V

    .line 192
    :goto_b1
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->e()V

    .line 193
    return-void

    .line 169
    :cond_b5
    iput v5, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->c:I

    goto :goto_41

    .line 174
    :cond_b8
    iput v5, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d:I

    goto :goto_50

    .line 189
    :cond_bb
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->d()V

    goto :goto_b1
.end method

.method public rotate(I)V
    .registers 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iput p1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->balloonRotation:I

    .line 296
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->invalidate()V

    .line 297
    return-void
.end method

.method public setBalloonInfo(Lcom/tndev/custom/speechballoon/BalloonInfo;)V
    .registers 7
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->f:Lcom/tndev/custom/speechballoon/BalloonInfo;

    .line 310
    invoke-direct {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->b()V

    .line 313
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->onMeasure(II)V

    .line 316
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->layout(IIII)V

    .line 319
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->invalidate()V

    .line 320
    return-void
.end method

.method public setFocused(Z)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/tndev/custom/speechballoon/SpeechBalloon;->g:Z

    .line 291
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->invalidate()V

    .line 292
    return-void
.end method
