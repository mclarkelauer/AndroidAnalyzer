.class public Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhi;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lhi;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/EditActivity;->finish()V

    .line 986
    return-void
.end method
