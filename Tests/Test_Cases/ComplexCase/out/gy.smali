.class public Lgy;
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
    iput-object p1, p0, Lgy;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lgy;)Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;
    .registers 2
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lgy;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 262
    new-instance v0, Lafzkl/development/mColorPicker/ColorPickerDialog;

    iget-object v1, p0, Lgy;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-virtual {v1}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lgy;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-static {v2}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;

    move-result-object v2

    iget v2, v2, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    new-instance v3, Lgz;

    invoke-direct {v3, p0}, Lgz;-><init>(Lgy;)V

    invoke-direct {v0, v1, v2, v3}, Lafzkl/development/mColorPicker/ColorPickerDialog;-><init>(Landroid/content/Context;ILafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;)V

    .line 273
    invoke-virtual {v0}, Lafzkl/development/mColorPicker/ColorPickerDialog;->show()V

    .line 274
    return-void
.end method
