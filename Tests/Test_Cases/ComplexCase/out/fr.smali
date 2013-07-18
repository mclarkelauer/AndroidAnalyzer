.class Lfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfp;


# direct methods
.method constructor <init>(Lfp;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr;->a:Lfp;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lfr;->a:Lfp;

    invoke-static {v0}, Lfp;->a(Lfp;)Lcom/tndev/common/activity/MoreGameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/common/activity/MoreGameActivity;->finish()V

    .line 185
    return-void
.end method
