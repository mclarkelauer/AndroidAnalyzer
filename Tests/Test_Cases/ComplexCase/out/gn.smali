.class public Lgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgn;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lgn;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-virtual {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->dismiss()V

    .line 348
    iget-object v0, p0, Lgn;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget-object v0, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

    if-eqz v0, :cond_12

    .line 349
    iget-object v0, p0, Lgn;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget-object v0, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

    invoke-interface {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;->onCancel()V

    .line 351
    :cond_12
    return-void
.end method
