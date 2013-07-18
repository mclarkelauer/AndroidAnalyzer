.class Lim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lij;


# direct methods
.method constructor <init>(Lij;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lim;->a:Lij;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lim;->a:Lij;

    invoke-static {v0}, Lij;->a(Lij;)Lcom/tndev/funnyframes/MenuActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->h(Lcom/tndev/funnyframes/MenuActivity;)Lcom/google/ads/AdView;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->hideAd(Lcom/google/ads/AdView;)V

    .line 510
    iget-object v0, p0, Lim;->a:Lij;

    invoke-static {v0}, Lij;->a(Lij;)Lcom/tndev/funnyframes/MenuActivity;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    return-void
.end method
