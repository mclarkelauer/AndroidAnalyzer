.class public Lic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/HelpDialog;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/HelpDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lic;->a:Lcom/tndev/funnyframes/HelpDialog;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lic;->a:Lcom/tndev/funnyframes/HelpDialog;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/HelpDialog;->dismiss()V

    .line 36
    return-void
.end method
