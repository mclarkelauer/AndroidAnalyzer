.class public Lcom/tndev/hdframes/model/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public frame:Ljava/lang/String;

.field public frameThumb:Ljava/lang/String;

.field public frameUrl:Ljava/lang/String;

.field public free:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFree()Z
    .registers 3

    .prologue
    .line 18
    const-string v0, "1"

    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameInfo;->free:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
