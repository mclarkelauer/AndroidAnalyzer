.class public Lgl;
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
    iput-object p1, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->i(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 319
    iget-object v0, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    .line 324
    :goto_15
    iget-object v0, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/SpeechBalloon;

    move-result-object v0

    iget-object v1, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setBalloonInfo(Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    .line 325
    return-void

    .line 321
    :cond_25
    iget-object v0, p0, Lgl;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    goto :goto_15
.end method
