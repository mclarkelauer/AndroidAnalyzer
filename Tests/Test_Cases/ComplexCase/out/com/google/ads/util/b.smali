.class public final Lcom/google/ads/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/ads/util/b$b;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/b$b;

    .line 261
    const/4 v0, 0x5

    sput v0, Lcom/google/ads/util/b;->b:I

    return-void
.end method

.method private static a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method private static a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/b$b;

    if-eqz v0, :cond_9

    .line 70
    sget-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/b$b;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/ads/util/b$b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->b:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->b:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 270
    sget v0, Lcom/google/ads/util/b;->b:I

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {p1}, Lcom/google/ads/util/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->e:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 129
    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->e:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 143
    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->c:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->c:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    const-string v0, "Ads"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->a:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 237
    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 238
    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->d:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 206
    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 207
    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->d:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    .line 211
    return-void
.end method
