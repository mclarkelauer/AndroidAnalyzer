.class public Lcom/tndev/common/utils/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/tndev/common/utils/ImageLoader;


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/tndev/common/utils/MemoryCache;

.field c:Ljava/util/concurrent/ExecutorService;

.field public final d:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tndev/common/utils/ImageLoader;->e:Lcom/tndev/common/utils/ImageLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tndev/common/utils/MemoryCache;

    invoke-direct {v0}, Lcom/tndev/common/utils/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->b:Lcom/tndev/common/utils/MemoryCache;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->f:Ljava/util/Map;

    .line 45
    sget v0, Lcom/tndev/common/R$drawable;->stub:I

    iput v0, p0, Lcom/tndev/common/utils/ImageLoader;->d:I

    .line 41
    iput-object p1, p0, Lcom/tndev/common/utils/ImageLoader;->a:Landroid/content/Context;

    .line 42
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lgb;

    invoke-direct {v0, p0, p1, p2}, Lgb;-><init>(Lcom/tndev/common/utils/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 60
    iget-object v1, p0, Lcom/tndev/common/utils/ImageLoader;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lgc;

    invoke-direct {v2, p0, v0}, Lgc;-><init>(Lcom/tndev/common/utils/ImageLoader;Lgb;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 61
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/tndev/common/utils/ImageLoader;
    .registers 2
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/tndev/common/utils/ImageLoader;->e:Lcom/tndev/common/utils/ImageLoader;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/tndev/common/utils/ImageLoader;

    invoke-direct {v0, p0}, Lcom/tndev/common/utils/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tndev/common/utils/ImageLoader;->e:Lcom/tndev/common/utils/ImageLoader;

    .line 31
    :cond_b
    sget-object v0, Lcom/tndev/common/utils/ImageLoader;->e:Lcom/tndev/common/utils/ImageLoader;

    return-object v0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 74
    :goto_1a
    return-object v0

    .line 72
    :catch_1b
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->b:Lcom/tndev/common/utils/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/tndev/common/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_11

    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :goto_10
    return-void

    .line 53
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/tndev/common/utils/ImageLoader;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 54
    iget v0, p0, Lcom/tndev/common/utils/ImageLoader;->d:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method

.method public a(Lgb;)Z
    .registers 4
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->f:Ljava/util/Map;

    iget-object v1, p1, Lgb;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    if-eqz v0, :cond_14

    iget-object v1, p1, Lgb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 113
    :cond_14
    const/4 v0, 0x1

    .line 114
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tndev/common/utils/ImageLoader;->b:Lcom/tndev/common/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/tndev/common/utils/MemoryCache;->clear()V

    .line 139
    return-void
.end method
