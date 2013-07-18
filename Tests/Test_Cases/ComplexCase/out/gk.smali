.class public Lgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->g(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 291
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    .line 292
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    .line 301
    :goto_1e
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/SpeechBalloon;

    move-result-object v0

    iget-object v1, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setBalloonInfo(Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    .line 302
    return-void

    .line 293
    :cond_2e
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->h(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 294
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v2, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    .line 295
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    goto :goto_1e

    .line 297
    :cond_4b
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    .line 298
    iget-object v0, p0, Lgk;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput-boolean v2, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    goto :goto_1e
.end method
