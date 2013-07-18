.class public final Lcom/google/gson/JsonObject;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/internal/StringMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 37
    new-instance v0, Lcom/google/gson/internal/StringMap;

    invoke-direct {v0}, Lcom/google/gson/internal/StringMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .registers 3
    .parameter

    .prologue
    .line 122
    if-nez p1, :cond_5

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p2, :cond_4

    .line 55
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->a(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->a(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->a(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->a(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 80
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/gson/JsonObject;

    iget-object v0, p1, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    iget-object v1, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/StringMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 153
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 154
    if-nez v0, :cond_14

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 156
    :cond_14
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .registers 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .registers 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
    .registers 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gson/JsonObject;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    return-object v0
.end method
