.class public Lcom/tndev/common/effects/ConvolutionMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SIZE:I = 0x3


# instance fields
.field public Factor:D

.field public Matrix:[[D

.field public Offset:D


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    const-wide/high16 v0, 0x3ff0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/tndev/common/effects/ConvolutionMatrix;->Factor:D

    .line 17
    iput-wide v0, p0, Lcom/tndev/common/effects/ConvolutionMatrix;->Offset:D

    .line 20
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    .line 21
    return-void
.end method


# virtual methods
.method public applyConfig([[D)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    .line 33
    return-void
.end method

.method public computeConvolution3x3(Landroid/graphics/Bitmap;)V
    .registers 21
    .parameter

    .prologue
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 41
    const/4 v1, 0x3

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 43
    const/4 v2, 0x0

    move v8, v2

    :goto_18
    add-int/lit8 v2, v10, -0x2

    if-lt v8, v2, :cond_1d

    .line 87
    return-void

    .line 44
    :cond_1d
    const/4 v2, 0x0

    move v7, v2

    :goto_1f
    add-int/lit8 v2, v9, -0x2

    if-lt v7, v2, :cond_27

    .line 43
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_18

    .line 46
    :cond_27
    const/4 v2, 0x0

    move v3, v2

    :goto_29
    const/4 v2, 0x3

    if-lt v3, v2, :cond_7c

    .line 53
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    .line 56
    const/4 v4, 0x0

    .line 59
    const/4 v2, 0x0

    move v6, v2

    move v3, v4

    move v5, v4

    :goto_3b
    const/4 v2, 0x3

    if-lt v6, v2, :cond_95

    .line 68
    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Factor:D

    div-double/2addr v5, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Offset:D

    add-double/2addr v5, v12

    double-to-int v2, v5

    .line 69
    if-gez v2, :cond_ec

    const/4 v2, 0x0

    .line 73
    :cond_4d
    :goto_4d
    int-to-double v5, v3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Factor:D

    div-double/2addr v5, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Offset:D

    add-double/2addr v5, v12

    double-to-int v3, v5

    .line 74
    if-gez v3, :cond_f4

    const/4 v3, 0x0

    .line 78
    :cond_5c
    :goto_5c
    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Factor:D

    div-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Offset:D

    add-double/2addr v4, v12

    double-to-int v4, v4

    .line 79
    if-gez v4, :cond_fc

    const/4 v4, 0x0

    .line 82
    :cond_6b
    :goto_6b
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v6, v8, 0x1

    invoke-static {v11, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 44
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1f

    .line 47
    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    const/4 v4, 0x3

    if-lt v2, v4, :cond_84

    .line 46
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_29

    .line 48
    :cond_84
    aget-object v4, v1, v3

    add-int v5, v7, v3

    add-int v6, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v4, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 60
    :cond_95
    const/4 v2, 0x0

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    :goto_9b
    const/4 v12, 0x3

    if-lt v2, v12, :cond_a7

    .line 59
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto :goto_3b

    .line 61
    :cond_a7
    int-to-double v12, v5

    aget-object v5, v1, v6

    aget v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-double v14, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    aget-object v5, v5, v6

    aget-wide v16, v5, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v5, v12

    .line 62
    int-to-double v12, v4

    aget-object v4, v1, v6

    aget v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    aget-object v4, v4, v6

    aget-wide v16, v4, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v4, v12

    .line 63
    int-to-double v12, v3

    aget-object v3, v1, v6

    aget v3, v3, v2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-double v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    aget-object v3, v3, v6

    aget-wide v16, v3, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v3, v12

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 70
    :cond_ec
    const/16 v5, 0xff

    if-le v2, v5, :cond_4d

    const/16 v2, 0xff

    goto/16 :goto_4d

    .line 75
    :cond_f4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5c

    const/16 v3, 0xff

    goto/16 :goto_5c

    .line 80
    :cond_fc
    const/16 v5, 0xff

    if-le v4, v5, :cond_6b

    const/16 v4, 0xff

    goto/16 :goto_6b
.end method

.method public setAll(D)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 24
    move v2, v1

    :goto_3
    if-lt v2, v4, :cond_6

    .line 29
    return-void

    :cond_6
    move v0, v1

    .line 25
    :goto_7
    if-lt v0, v4, :cond_d

    .line 24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 26
    :cond_d
    iget-object v3, p0, Lcom/tndev/common/effects/ConvolutionMatrix;->Matrix:[[D

    aget-object v3, v3, v2

    aput-wide p1, v3, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
