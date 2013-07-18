.class public Lcom/tndev/funnyframes/CameraPreview;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/view/SurfaceView;

.field b:Landroid/view/SurfaceHolder;

.field c:Landroid/hardware/Camera$Size;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/hardware/Camera;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "Preview"

    iput-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->f:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->a:Landroid/view/SurfaceView;

    .line 33
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/CameraPreview;->addView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->b:Landroid/view/SurfaceHolder;

    .line 38
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 39
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 40
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method

.method private a(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .registers 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 128
    .line 129
    move/from16 v0, p2

    int-to-double v1, v0

    move/from16 v0, p3

    int-to-double v3, v0

    div-double v5, v1, v3

    .line 130
    if-nez p1, :cond_c

    const/4 v4, 0x0

    .line 157
    :cond_b
    return-object v4

    .line 132
    :cond_c
    const/4 v3, 0x0

    .line 133
    const-wide v1, 0x7fefffffffffffffL

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    :cond_19
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 148
    if-nez v4, :cond_b

    .line 149
    const-wide v1, 0x7fefffffffffffffL

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v1

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 151
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v6, v6, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_2b

    .line 153
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v1

    goto :goto_2b

    .line 138
    :cond_4f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 139
    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 140
    sub-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_19

    .line 141
    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_19

    .line 143
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v1

    goto :goto_19
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 81
    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->getChildCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 82
    invoke-virtual {p0, v7}, Lcom/tndev/funnyframes/CameraPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 84
    sub-int v3, p4, p2

    .line 85
    sub-int v1, p5, p3

    .line 89
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_30

    .line 90
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 91
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 95
    :goto_1d
    mul-int v5, v3, v0

    mul-int v6, v1, v2

    if-le v5, v6, :cond_2a

    .line 96
    mul-int/2addr v2, v1

    div-int v0, v2, v0

    .line 97
    invoke-virtual {v4, v7, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 105
    :cond_29
    :goto_29
    return-void

    .line 100
    :cond_2a
    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    .line 101
    invoke-virtual {v4, v7, v7, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_29

    :cond_30
    move v0, v1

    move v2, v3

    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/tndev/funnyframes/CameraPreview;->resolveSize(II)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/tndev/funnyframes/CameraPreview;->resolveSize(II)I

    move-result v1

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/tndev/funnyframes/CameraPreview;->setMeasuredDimension(II)V

    .line 74
    iget-object v2, p0, Lcom/tndev/funnyframes/CameraPreview;->d:Ljava/util/List;

    if-eqz v2, :cond_1f

    .line 75
    iget-object v2, p0, Lcom/tndev/funnyframes/CameraPreview;->d:Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lcom/tndev/funnyframes/CameraPreview;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    .line 77
    :cond_1f
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    .line 45
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_15

    .line 46
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->d:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->requestLayout()V

    .line 49
    :cond_15
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->requestLayout()V

    .line 168
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 169
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 117
    :cond_9
    :goto_9
    return-void

    .line 114
    :catch_a
    move-exception v0

    .line 115
    const-string v1, "Preview"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 124
    :cond_9
    return-void
.end method

.method public switchCamera(Landroid/hardware/Camera;)V
    .registers 5
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/tndev/funnyframes/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 54
    :try_start_3
    iget-object v0, p0, Lcom/tndev/funnyframes/CameraPreview;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1e

    .line 58
    :goto_8
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/tndev/funnyframes/CameraPreview;->c:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 60
    invoke-virtual {p0}, Lcom/tndev/funnyframes/CameraPreview;->requestLayout()V

    .line 62
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 63
    return-void

    .line 55
    :catch_1e
    move-exception v0

    .line 56
    const-string v1, "Preview"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
