.class Lgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;


# instance fields
.field final synthetic a:Lgy;


# direct methods
.method constructor <init>(Lgy;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgz;->a:Lgy;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 4
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 267
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    iput p1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    .line 269
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/SpeechBalloon;

    move-result-object v0

    iget-object v1, p0, Lgz;->a:Lgy;

    invoke-static {v1}, Lgy;->a(Lgy;)Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    move-result-object v1

    invoke-static {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setBalloonInfo(Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    .line 270
    return-void
.end method
