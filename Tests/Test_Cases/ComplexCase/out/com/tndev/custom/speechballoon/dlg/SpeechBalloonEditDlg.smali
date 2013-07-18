.class public Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tndev/custom/speechballoon/BalloonInfo;

.field private f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/SeekBar;

.field private k:Landroid/widget/RadioButton;

.field private l:Landroid/widget/RadioButton;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/RadioButton;

.field private o:Landroid/widget/RadioButton;

.field private p:Lcom/tndev/common/ui/HorizontalListView;

.field private q:Lcom/tndev/custom/speechballoon/dlg/FontListAdapter;

.field private r:Landroid/widget/SeekBar;

.field private s:Landroid/widget/SeekBar;

.field private t:Landroid/widget/SeekBar;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tndev/custom/speechballoon/BalloonInfo;Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 386
    new-instance v0, Lgj;

    invoke-direct {v0, p0}, Lgj;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->x:Landroid/view/View$OnTouchListener;

    .line 75
    invoke-virtual {p0, v3}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->requestWindowFeature(I)Z

    .line 77
    sget v0, Lcom/tndev/common/R$layout;->edit_balloon_dlg:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->setContentView(I)V

    .line 80
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 84
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    iput-object p3, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->c:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg$OnBalloonEditDlgClose;

    .line 90
    iput-object p2, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    .line 92
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    if-nez v0, :cond_3d

    .line 93
    new-instance v0, Lcom/tndev/custom/speechballoon/BalloonInfo;

    invoke-direct {v0}, Lcom/tndev/custom/speechballoon/BalloonInfo;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    .line 97
    :cond_3d
    sget v0, Lcom/tndev/common/R$id;->BtnApplyText:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->h:Landroid/widget/ImageButton;

    .line 98
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->h:Landroid/widget/ImageButton;

    new-instance v1, Lgp;

    invoke-direct {v1, p0}, Lgp;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lcom/tndev/custom/speechballoon/SpeechBalloon;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    invoke-direct {v0, p1, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;-><init>(Landroid/content/Context;Lcom/tndev/custom/speechballoon/BalloonInfo;)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

    .line 109
    sget v0, Lcom/tndev/common/R$id;->BalloonWrapper:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->g:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

    invoke-virtual {v0, v3}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setFocused(Z)V

    .line 113
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->x:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/tndev/custom/speechballoon/SpeechBalloon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    sget v0, Lcom/tndev/common/R$id;->TxtBalloonText:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->i:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-object v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v0, Lcom/tndev/common/R$id;->TextSizeSlider:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->j:Landroid/widget/SeekBar;

    .line 121
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->j:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textSize:I

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 123
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->j:Landroid/widget/SeekBar;

    new-instance v1, Lgq;

    invoke-direct {v1, p0}, Lgq;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    sget v0, Lcom/tndev/common/R$id;->Radio1:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->k:Landroid/widget/RadioButton;

    .line 146
    sget v0, Lcom/tndev/common/R$id;->Radio2:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->l:Landroid/widget/RadioButton;

    .line 147
    sget v0, Lcom/tndev/common/R$id;->Radio3:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->m:Landroid/widget/RadioButton;

    .line 150
    sget v0, Lcom/tndev/common/R$id;->TailLengthSlider:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->r:Landroid/widget/SeekBar;

    .line 151
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->r:Landroid/widget/SeekBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 152
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->r:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->r:Landroid/widget/SeekBar;

    new-instance v1, Lgr;

    invoke-direct {v1, p0}, Lgr;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 171
    sget v0, Lcom/tndev/common/R$id;->TailWidthSlider:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->s:Landroid/widget/SeekBar;

    .line 172
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->s:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 173
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->s:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 174
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->s:Landroid/widget/SeekBar;

    new-instance v1, Lgs;

    invoke-direct {v1, p0}, Lgs;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 192
    sget v0, Lcom/tndev/common/R$id;->TailRotateSlider:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->t:Landroid/widget/SeekBar;

    .line 193
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->t:Landroid/widget/SeekBar;

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 194
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->t:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 195
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->t:Landroid/widget/SeekBar;

    new-instance v1, Lgt;

    invoke-direct {v1, p0}, Lgt;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 212
    sget v0, Lcom/tndev/common/R$id;->BtnStrokeColor:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->u:Landroid/widget/ImageButton;

    .line 213
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 215
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->u:Landroid/widget/ImageButton;

    new-instance v1, Lgu;

    invoke-direct {v1, p0}, Lgu;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    sget v0, Lcom/tndev/common/R$id;->BtnBgColor:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->v:Landroid/widget/ImageButton;

    .line 235
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->v:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 236
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->v:Landroid/widget/ImageButton;

    new-instance v1, Lgw;

    invoke-direct {v1, p0}, Lgw;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lcom/tndev/common/R$id;->BtnTextColor:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->w:Landroid/widget/ImageButton;

    .line 257
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->w:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v1, v1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 258
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->w:Landroid/widget/ImageButton;

    new-instance v1, Lgy;

    invoke-direct {v1, p0}, Lgy;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-boolean v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    if-nez v0, :cond_28c

    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-boolean v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    if-nez v0, :cond_28c

    .line 279
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 286
    :goto_1a2
    sget v0, Lcom/tndev/common/R$id;->RadioGroup:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lgk;

    invoke-direct {v1, p0}, Lgk;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 305
    sget v0, Lcom/tndev/common/R$id;->RadioRectangle:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->n:Landroid/widget/RadioButton;

    .line 306
    sget v0, Lcom/tndev/common/R$id;->RadioElipse:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->o:Landroid/widget/RadioButton;

    .line 308
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    if-nez v0, :cond_2a0

    .line 309
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 314
    :goto_1d1
    sget v0, Lcom/tndev/common/R$id;->TypeRadioGroup:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lgl;

    invoke-direct {v1, p0}, Lgl;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 329
    sget v0, Lcom/tndev/common/R$id;->BtnOK:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lgm;

    invoke-direct {v1, p0}, Lgm;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    sget v0, Lcom/tndev/common/R$id;->BtnCancel:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lgn;

    invoke-direct {v1, p0}, Lgn;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    .line 355
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font1.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font2.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font3.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font4.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font5.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font6.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font7.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font8.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font9.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font10.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font11.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font12.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    const-string v1, "font13.ttf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v0, Lcom/tndev/custom/speechballoon/dlg/FontListAdapter;

    invoke-virtual {p0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tndev/custom/speechballoon/dlg/FontListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->q:Lcom/tndev/custom/speechballoon/dlg/FontListAdapter;

    .line 369
    sget v0, Lcom/tndev/common/R$id;->FontList:I

    invoke-virtual {p0, v0}, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tndev/common/ui/HorizontalListView;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->p:Lcom/tndev/common/ui/HorizontalListView;

    .line 370
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->p:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v1, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->q:Lcom/tndev/custom/speechballoon/dlg/FontListAdapter;

    invoke-virtual {v0, v1}, Lcom/tndev/common/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->p:Lcom/tndev/common/ui/HorizontalListView;

    new-instance v1, Lgo;

    invoke-direct {v1, p0}, Lgo;-><init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V

    invoke-virtual {v0, v1}, Lcom/tndev/common/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    return-void

    .line 280
    :cond_28c
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    iget-boolean v0, v0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    if-eqz v0, :cond_299

    .line 281
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1a2

    .line 283
    :cond_299
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1a2

    .line 311
    :cond_2a0
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1d1
.end method

.method public static synthetic a(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/BalloonInfo;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->e:Lcom/tndev/custom/speechballoon/BalloonInfo;

    return-object v0
.end method

.method public static synthetic b(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Lcom/tndev/custom/speechballoon/SpeechBalloon;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->f:Lcom/tndev/custom/speechballoon/SpeechBalloon;

    return-object v0
.end method

.method public static synthetic d(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->u:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->v:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic f(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->w:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->k:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static synthetic h(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->m:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static synthetic i(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->n:Landroid/widget/RadioButton;

    return-object v0
.end method
