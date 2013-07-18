.class public Lhd;
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
    iput-object p1, p0, Lhd;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lnet/londatiga/android/QuickAction;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    packed-switch p3, :pswitch_data_10

    .line 732
    :goto_3
    return-void

    .line 726
    :pswitch_4
    iget-object v0, p0, Lhd;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->h(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_3

    .line 729
    :pswitch_a
    iget-object v0, p0, Lhd;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->v(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_3

    .line 724
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
