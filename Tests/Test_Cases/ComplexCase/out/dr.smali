.class public abstract Ldr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Ldr;->g:Ljava/lang/String;

    .line 139
    iput-boolean p2, p0, Ldr;->h:Z

    .line 140
    iput-boolean p3, p0, Ldr;->i:Z

    .line 141
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
.end method

.method public abstract a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.end method
