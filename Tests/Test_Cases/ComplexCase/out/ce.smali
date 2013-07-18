.class Lce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final a:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonSerializer;

    :goto_b
    iput-object v0, p0, Lce;->d:Lcom/google/gson/JsonSerializer;

    .line 120
    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/google/gson/JsonDeserializer;

    :goto_13
    iput-object p1, p0, Lce;->e:Lcom/google/gson/JsonDeserializer;

    .line 123
    iget-object v0, p0, Lce;->d:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lce;->e:Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 124
    iput-object p2, p0, Lce;->a:Lcom/google/gson/reflect/TypeToken;

    .line 125
    iput-boolean p3, p0, Lce;->b:Z

    .line 126
    iput-object p4, p0, Lce;->c:Ljava/lang/Class;

    .line 127
    return-void

    :cond_28
    move-object v0, v1

    .line 117
    goto :goto_b

    :cond_2a
    move-object p1, v1

    .line 120
    goto :goto_13

    .line 123
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcd;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lce;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lce;->a:Lcom/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lce;->a:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lce;->b:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lce;->a:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    :cond_1d
    const/4 v0, 0x1

    .line 134
    :goto_1e
    if-eqz v0, :cond_3a

    new-instance v0, Lcc;

    iget-object v1, p0, Lce;->d:Lcom/google/gson/JsonSerializer;

    iget-object v2, p0, Lce;->e:Lcom/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcc;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Lcd;)V

    :goto_2c
    return-object v0

    .line 131
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2f
    iget-object v0, p0, Lce;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1e

    :cond_3a
    move-object v0, v6

    .line 134
    goto :goto_2c
.end method
