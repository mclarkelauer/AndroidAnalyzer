.class public Lcom/tndev/custom/speechballoon/BalloonInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BALLOON_TYPE_ECLIPSE:I = 0x1

.field public static final BALLOON_TYPE_RECTANGLE:I


# instance fields
.field public backgroundColor:I

.field public balloonRotation:I

.field public font:Landroid/graphics/Typeface;

.field public height:I

.field public rectConerRadius:I

.field public strokeColor:I

.field public tailLength:I

.field public tailRotation:I

.field public tailVisible:Z

.field public tailWidth:I

.field public text:Ljava/lang/String;

.field public textBlur:Z

.field public textColor:I

.field public textShadow:Z

.field public textSize:I

.field public type:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    .line 20
    const/high16 v0, -0x100

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->backgroundColor:I

    .line 26
    iput v1, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    .line 28
    iput v2, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    .line 31
    iput v2, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    .line 34
    const/16 v0, 0x37

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    .line 37
    const/16 v0, 0x73

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailVisible:Z

    .line 43
    const-string v0, "Your Text Here!"

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    .line 46
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->font:Landroid/graphics/Typeface;

    .line 49
    const/16 v0, 0x16

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textSize:I

    .line 52
    iput-boolean v1, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    .line 54
    iput-boolean v1, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    .line 56
    const v0, -0x777778

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    .line 58
    iput v1, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->balloonRotation:I

    .line 62
    return-void
.end method


# virtual methods
.method public copy(Lcom/tndev/custom/speechballoon/BalloonInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->type:I

    .line 69
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->width:I

    .line 70
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->height:I

    .line 71
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->strokeColor:I

    .line 72
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->backgroundColor:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->backgroundColor:I

    .line 73
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->rectConerRadius:I

    .line 74
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailLength:I

    .line 75
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailRotation:I

    .line 76
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->tailWidth:I

    .line 77
    iget-object v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->font:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->font:Landroid/graphics/Typeface;

    .line 79
    iget-boolean v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    iput-boolean v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textShadow:Z

    .line 80
    iget-boolean v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    iput-boolean v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textBlur:Z

    .line 81
    iget-object v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->text:Ljava/lang/String;

    .line 82
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textColor:I

    .line 83
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->textSize:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->textSize:I

    .line 84
    iget v0, p1, Lcom/tndev/custom/speechballoon/BalloonInfo;->balloonRotation:I

    iput v0, p0, Lcom/tndev/custom/speechballoon/BalloonInfo;->balloonRotation:I

    .line 85
    return-void
.end method
