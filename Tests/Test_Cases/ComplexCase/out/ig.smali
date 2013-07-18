.class public Lig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 427
    :goto_7
    return-void

    .line 412
    :pswitch_8
    iget-object v0, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->a(Lcom/tndev/funnyframes/MenuActivity;)V

    goto :goto_7

    .line 415
    :pswitch_e
    iget-object v0, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->b(Lcom/tndev/funnyframes/MenuActivity;)V

    goto :goto_7

    .line 418
    :pswitch_14
    iget-object v0, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    const-string v1, "com.tndev.funnyframes"

    invoke-static {v0, v1}, Lcom/tndev/common/utils/ActivityUtils;->openMarket(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_7

    .line 421
    :pswitch_1c
    iget-object v0, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/common/utils/ActivityUtils;->openMoreApps(Landroid/app/Activity;)V

    goto :goto_7

    .line 424
    :pswitch_22
    iget-object v0, p0, Lig;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->c(Lcom/tndev/funnyframes/MenuActivity;)V

    goto :goto_7

    .line 410
    :pswitch_data_28
    .packed-switch 0x7f090016
        :pswitch_8
        :pswitch_e
        :pswitch_1c
        :pswitch_14
        :pswitch_22
    .end packed-switch
.end method
