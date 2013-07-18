.class public Lhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/londatiga/android/QuickAction$OnActionItemClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lnet/londatiga/android/QuickAction;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 753
    packed-switch p3, :pswitch_data_66

    .line 782
    :goto_7
    return-void

    .line 756
    :pswitch_8
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 757
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 758
    iget-object v1, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, v1, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    .line 759
    iget-object v0, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->s(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7

    .line 763
    :pswitch_27
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 765
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 767
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 769
    const v2, 0x3f733333

    const v3, 0x3f1eb852

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 770
    invoke-virtual {v0, v1, v0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 772
    iget-object v1, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    .line 773
    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 772
    iput-object v2, v1, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    .line 774
    iget-object v0, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->s(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7

    .line 778
    :pswitch_57
    iget-object v0, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->s(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 779
    iget-object v0, p0, Lhe;->a:Lcom/tndev/funnyframes/EditActivity;

    iput-object v2, v0, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    goto :goto_7

    .line 753
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_8
        :pswitch_27
        :pswitch_57
    .end packed-switch
.end method
