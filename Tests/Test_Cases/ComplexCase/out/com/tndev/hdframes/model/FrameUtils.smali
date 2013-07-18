.class public Lcom/tndev/hdframes/model/FrameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAME_SIZE_S1024:Ljava/lang/String; = "s1024"

.field private static final FRAME_SIZE_S1280:Ljava/lang/String; = "s1280"

.field private static final FRAME_SIZE_S800:Ljava/lang/String; = "s600"

.field public static final PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String; = null

.field private static final SIZE_HOLDER:Ljava/lang/String; = "XXX_SIZE_IMG"

.field private static final THUMB_SIZE:Ljava/lang/String; = "s144"

.field private static instance:Lcom/tndev/hdframes/model/FrameUtils;


# instance fields
.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const-string v1, "/data/photoframes/funnyframes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    sput-object v0, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    .line 146
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/frames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/thumbs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 149
    return-void

    .line 143
    :cond_78
    const-string v0, "/data/photoframes/funnyframes/"

    sput-object v0, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    goto :goto_29
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "frames/frame_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameInfo;->frame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".frm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrameThumbPath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "thumbs/thumb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameInfo;->frame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".thb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tndev/hdframes/model/FrameUtils;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/tndev/hdframes/model/FrameUtils;->instance:Lcom/tndev/hdframes/model/FrameUtils;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/tndev/hdframes/model/FrameUtils;

    invoke-direct {v0}, Lcom/tndev/hdframes/model/FrameUtils;-><init>()V

    sput-object v0, Lcom/tndev/hdframes/model/FrameUtils;->instance:Lcom/tndev/hdframes/model/FrameUtils;

    .line 32
    :cond_b
    sget-object v0, Lcom/tndev/hdframes/model/FrameUtils;->instance:Lcom/tndev/hdframes/model/FrameUtils;

    return-object v0
.end method

.method public static isFrameDownloaded(Lcom/tndev/hdframes/model/FrameInfo;)Z
    .registers 2
    .parameter

    .prologue
    .line 119
    invoke-static {p0}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameThumbPath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 120
    invoke-static {p0}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public isTwoFrameDownloaded()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 101
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isFrameDownloaded(Lcom/tndev/hdframes/model/FrameInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    .line 110
    :goto_19
    return v0

    .line 105
    :cond_1a
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_32

    .line 106
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isFrameDownloaded(Lcom/tndev/hdframes/model/FrameInfo;)Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v1

    .line 107
    goto :goto_19

    :cond_32
    move v0, v2

    .line 110
    goto :goto_19
.end method

.method public loadFrames(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 50
    new-instance v2, Lcom/tndev/hdframes/model/FrameUtils$1;

    invoke-direct {v2, p0}, Lcom/tndev/hdframes/model/FrameUtils$1;-><init>(Lcom/tndev/hdframes/model/FrameUtils;)V

    invoke-virtual {v2}, Lcom/tndev/hdframes/model/FrameUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 51
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 57
    const-wide/32 v4, 0x1800000

    cmp-long v0, v2, v4

    if-lez v0, :cond_35

    .line 59
    const/4 v0, 0x2

    .line 68
    :goto_27
    const-string v2, ""

    .line 69
    packed-switch v0, :pswitch_data_7a

    .line 84
    :goto_2c
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4c

    .line 93
    return-void

    .line 60
    :cond_35
    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3e

    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_27

    :cond_3e
    move v0, v1

    .line 65
    goto :goto_27

    .line 72
    :pswitch_40
    const-string v0, "s600"

    move-object v2, v0

    .line 73
    goto :goto_2c

    .line 76
    :pswitch_44
    const-string v0, "s1024"

    move-object v2, v0

    .line 77
    goto :goto_2c

    .line 80
    :pswitch_48
    const-string v0, "s1280"

    move-object v2, v0

    goto :goto_2c

    .line 85
    :cond_4c
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    .line 87
    iget-object v3, v0, Lcom/tndev/hdframes/model/FrameInfo;->frameUrl:Ljava/lang/String;

    .line 89
    const-string v4, "XXX_SIZE_IMG"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tndev/hdframes/model/FrameInfo;->frameUrl:Ljava/lang/String;

    .line 90
    const-string v4, "XXX_SIZE_IMG"

    const-string v5, "s144"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tndev/hdframes/model/FrameInfo;->frameThumb:Ljava/lang/String;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tndev/hdframes/model/FrameInfo;->frame:Ljava/lang/String;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 69
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method
