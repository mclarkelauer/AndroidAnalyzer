.class public Liq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Liq;->a:Lcom/tndev/funnyframes/MenuActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/tndev/billing/util/IabResult;)V
    .registers 4
    .parameter

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/tndev/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 257
    iget-object v0, p0, Liq;->a:Lcom/tndev/funnyframes/MenuActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    .line 263
    :goto_b
    return-void

    .line 262
    :cond_c
    iget-object v0, p0, Liq;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    iget-object v1, p0, Liq;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/MenuActivity;->i:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/tndev/billing/util/IabHelper;->queryInventoryAsync(Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_b
.end method
