.class public Lcom/tndev/common/utils/AdsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideAd(Lcom/google/ads/AdView;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 70
    :cond_a
    return-void
.end method

.method public static loadAd(Lcom/google/ads/AdView;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 48
    const-string v1, "4D4FFD093EFD9F559100B1B302DF406C"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 50
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 51
    return-void
.end method

.method public static setupAds(Ljava/lang/String;Landroid/app/Activity;I[I[I)Lcom/google/ads/AdView;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 25
    new-instance v3, Lcom/google/ads/AdView;

    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v3, p1, v0, p0}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 29
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move v1, v2

    .line 30
    :goto_15
    array-length v5, p3

    if-lt v1, v5, :cond_2a

    .line 34
    aget v1, p4, v2

    const/4 v2, 0x1

    aget v2, p4, v2

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v6, 0x3

    aget v6, p4, v6

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-object v3

    .line 31
    :cond_2a
    aget v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public static showAd(Lcom/google/ads/AdView;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 59
    invoke-static {p0}, Lcom/tndev/common/utils/AdsUtils;->loadAd(Lcom/google/ads/AdView;)V

    .line 61
    :cond_d
    return-void
.end method
