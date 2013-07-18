.class public Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/ResultActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/ResultActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lis;->a:Lcom/tndev/funnyframes/ResultActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 262
    :goto_7
    return-void

    .line 250
    :pswitch_8
    iget-object v0, p0, Lis;->a:Lcom/tndev/funnyframes/ResultActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/ResultActivity;->a(Lcom/tndev/funnyframes/ResultActivity;)V

    goto :goto_7

    .line 253
    :pswitch_e
    iget-object v0, p0, Lis;->a:Lcom/tndev/funnyframes/ResultActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/ResultActivity;->b(Lcom/tndev/funnyframes/ResultActivity;)V

    goto :goto_7

    .line 256
    :pswitch_14
    iget-object v0, p0, Lis;->a:Lcom/tndev/funnyframes/ResultActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/ResultActivity;->c(Lcom/tndev/funnyframes/ResultActivity;)V

    goto :goto_7

    .line 259
    :pswitch_1a
    iget-object v0, p0, Lis;->a:Lcom/tndev/funnyframes/ResultActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/ResultActivity;->finish()V

    goto :goto_7

    .line 248
    :pswitch_data_20
    .packed-switch 0x7f09001f
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
