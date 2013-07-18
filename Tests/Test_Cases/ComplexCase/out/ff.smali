.class public final enum Lff;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lff;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lff;

.field public static final enum b:Lff;

.field public static final enum c:Lff;

.field public static final enum d:Lff;

.field public static final enum e:Lff;

.field public static final enum f:Lff;

.field public static final enum g:Lff;

.field public static final enum h:Lff;

.field private static final synthetic i:[Lff;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lff;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->a:Lff;

    .line 37
    new-instance v0, Lff;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->b:Lff;

    .line 43
    new-instance v0, Lff;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->c:Lff;

    .line 49
    new-instance v0, Lff;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->d:Lff;

    .line 55
    new-instance v0, Lff;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->e:Lff;

    .line 60
    new-instance v0, Lff;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->f:Lff;

    .line 65
    new-instance v0, Lff;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->g:Lff;

    .line 70
    new-instance v0, Lff;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->h:Lff;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lff;

    sget-object v1, Lff;->a:Lff;

    aput-object v1, v0, v3

    sget-object v1, Lff;->b:Lff;

    aput-object v1, v0, v4

    sget-object v1, Lff;->c:Lff;

    aput-object v1, v0, v5

    sget-object v1, Lff;->d:Lff;

    aput-object v1, v0, v6

    sget-object v1, Lff;->e:Lff;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lff;->f:Lff;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lff;->g:Lff;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lff;->h:Lff;

    aput-object v2, v0, v1

    sput-object v0, Lff;->i:[Lff;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lff;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lff;

    return-object v0
.end method

.method public static values()[Lff;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lff;->i:[Lff;

    invoke-virtual {v0}, [Lff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lff;

    return-object v0
.end method
