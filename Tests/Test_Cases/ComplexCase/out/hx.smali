.class public final enum Lhx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhx;

.field public static final enum b:Lhx;

.field public static final enum c:Lhx;

.field private static final synthetic d:[Lhx;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lhx;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->a:Lhx;

    .line 126
    new-instance v0, Lhx;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->b:Lhx;

    .line 127
    new-instance v0, Lhx;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->c:Lhx;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lhx;

    sget-object v1, Lhx;->a:Lhx;

    aput-object v1, v0, v2

    sget-object v1, Lhx;->b:Lhx;

    aput-object v1, v0, v3

    sget-object v1, Lhx;->c:Lhx;

    aput-object v1, v0, v4

    sput-object v0, Lhx;->d:[Lhx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhx;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lhx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhx;

    return-object v0
.end method

.method public static values()[Lhx;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lhx;->d:[Lhx;

    array-length v1, v0

    new-array v2, v1, [Lhx;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
