.class public Lbe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lbe;

.field public static final e:Lbe;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 31
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    sput-object v0, Lbe;->d:Lbe;

    .line 36
    new-instance v0, Lbe;

    const-string v1, "unknown"

    const-string v2, "generic"

    const-string v3, "generic"

    invoke-direct {v0, v1, v2, v3}, Lbe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbe;->e:Lbe;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lbe;->a:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lbe;->b:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lbe;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lbe;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lbe;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lbe;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    if-eqz p0, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    :goto_6
    return v0

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lbe;

    if-nez v1, :cond_6

    .line 66
    :cond_5
    :goto_5
    return v0

    .line 65
    :cond_6
    check-cast p1, Lbe;

    .line 66
    iget-object v1, p0, Lbe;->a:Ljava/lang/String;

    iget-object v2, p1, Lbe;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lbe;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbe;->b:Ljava/lang/String;

    iget-object v2, p1, Lbe;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lbe;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbe;->c:Ljava/lang/String;

    iget-object v2, p1, Lbe;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lbe;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lbe;->a:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 90
    iget-object v1, p0, Lbe;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_c
    iget-object v1, p0, Lbe;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 93
    iget-object v1, p0, Lbe;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_17
    iget-object v1, p0, Lbe;->c:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 96
    iget-object v1, p0, Lbe;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_22
    return v0
.end method
