.class public Lgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgs;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lgs;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v0

    add-int/lit8 v1, p2, 0xf

    iput v1, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    .line 187
    iget-object v0, p0, Lgs;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/SpeechBalloon;

    move-result-object v0

    iget-object v1, p0, Lgs;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setBalloonInfo(Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    .line 188
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    return-void
.end method
