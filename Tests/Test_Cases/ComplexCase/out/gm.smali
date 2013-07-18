.class public Lgm;
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
    iput-object p1, p0, Lgm;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lgm;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-virtual {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->dismiss()V

    .line 335
    iget-object v0, p0, Lgm;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget-object v0, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

    if-eqz v0, :cond_18

    .line 336
    iget-object v0, p0, Lgm;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget-object v0, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

    iget-object v1, p0, Lgm;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;->onOK(Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    .line 338
    :cond_18
    return-void
.end method
