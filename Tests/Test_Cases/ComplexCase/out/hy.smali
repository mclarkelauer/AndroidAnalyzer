.class public final enum Lhy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhy;

.field public static final enum b:Lhy;

.field private static final synthetic c:[Lhy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lhy;

    const-string v1, "IMAGEVIEW"

    invoke-direct {v0, v1, v2}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->a:Lhy;

    .line 143
    new-instance v0, Lhy;

    const-string v1, "CAMERAVIEW"

    invoke-direct {v0, v1, v3}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->b:Lhy;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Lhy;

    sget-object v1, Lhy;->a:Lhy;

    aput-object v1, v0, v2

    sget-object v1, Lhy;->b:Lhy;

    aput-object v1, v0, v3

    sput-object v0, Lhy;->c:[Lhy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhy;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lhy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhy;

    return-object v0
.end method

.method public static values()[Lhy;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lhy;->c:[Lhy;

    array-length v1, v0

    new-array v2, v1, [Lhy;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
