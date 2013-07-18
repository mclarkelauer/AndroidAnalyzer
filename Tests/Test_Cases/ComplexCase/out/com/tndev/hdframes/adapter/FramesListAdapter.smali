.class public Lcom/tndev/hdframes/adapter/FramesListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tndev/hdframes/model/FrameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    const v0, 0x7f03000a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p2, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-virtual {p0, p1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->add(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 115
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFrames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/tndev/hdframes/model/FrameInfo;
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->getItem(I)Lcom/tndev/hdframes/model/FrameInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 47
    if-nez p2, :cond_83

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v1, Liw;

    invoke-direct {v1, p0, v2}, Liw;-><init>(Lcom/tndev/hdframes/adapter/FramesListAdapter;Liw;)V

    .line 51
    const v0, 0x7f09003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Liw;->a:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f09003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Liw;->b:Landroid/widget/ProgressBar;

    .line 53
    const v0, 0x7f09003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Liw;->c:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f09003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Liw;->d:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 61
    :goto_48
    iget-object v1, v0, Liw;->a:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->getItem(I)Lcom/tndev/hdframes/model/FrameInfo;

    move-result-object v2

    .line 68
    iget-object v3, v0, Liw;->b:Landroid/widget/ProgressBar;

    .line 70
    iget v4, v2, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8a

    .line 71
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    const v3, 0x7f02002d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :cond_61
    :goto_61
    invoke-virtual {v2}, Lcom/tndev/hdframes/model/FrameInfo;->isFree()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 86
    iget-object v1, v0, Liw;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_6e
    iget-object v0, v0, Liw;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2

    .line 58
    :cond_83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liw;

    goto :goto_48

    .line 74
    :cond_8a
    iget v4, v2, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_61

    .line 75
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    :try_start_93
    invoke-static {v2}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameThumbPath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFileFullSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a1} :catch_a2

    goto :goto_61

    .line 80
    :catch_a2
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 88
    :cond_a7
    iget-object v1, v0, Liw;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6e
.end method

.method public insert(Lcom/tndev/hdframes/model/FrameInfo;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->insert(Lcom/tndev/hdframes/model/FrameInfo;I)V

    return-void
.end method

.method public remove(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-virtual {p0, p1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->remove(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tndev/hdframes/adapter/FramesListAdapter;->a:Ljava/util/List;

    .line 108
    return-void
.end method
