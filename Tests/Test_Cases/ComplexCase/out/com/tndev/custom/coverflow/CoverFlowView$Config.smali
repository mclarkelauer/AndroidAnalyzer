.class public Lcom/tndev/custom/coverflow/CoverFlowView$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BLUR_ANIMATION_DURATION:J

.field public CENTER_COVER_OFFSET:I

.field public COVER_BUFFER:I

.field public COVER_SPACING:I

.field public DROP_SHADOW_RADIUS:I

.field public FADING_EDGES_ENABLED:Z

.field public FOCUS_ANIMATION_DURATION:J

.field public HORIZONTAL_SCROLLBAR_ENABLED:Z

.field public IMAGE_SCALE_X:F

.field public IMAGE_SCALE_Y:F

.field public REFLECTION_FRACTION:F

.field public SIDE_COVER_ANGLE:F

.field public SIDE_COVER_ZPOSITION:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x28

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    .line 32
    const/16 v0, 0x46

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->CENTER_COVER_OFFSET:I

    .line 33
    const/high16 v0, 0x4282

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ANGLE:F

    .line 34
    const/16 v0, 0x78

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ZPOSITION:I

    .line 35
    const v0, 0x3e19999a

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    .line 36
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->FOCUS_ANIMATION_DURATION:J

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    .line 38
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->BLUR_ANIMATION_DURATION:J

    .line 39
    const/16 v0, 0xf

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->DROP_SHADOW_RADIUS:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->HORIZONTAL_SCROLLBAR_ENABLED:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->FADING_EDGES_ENABLED:Z

    .line 42
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->IMAGE_SCALE_X:F

    .line 43
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->IMAGE_SCALE_Y:F

    .line 30
    return-void
.end method
