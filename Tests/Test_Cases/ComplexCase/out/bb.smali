.class public Lbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/admob/AdMobAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Laz;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lbb;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .registers 4
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 321
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1, p2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 311
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .registers 4
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 326
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .registers 4
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 316
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .registers 4
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lbb;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 306
    return-void
.end method
