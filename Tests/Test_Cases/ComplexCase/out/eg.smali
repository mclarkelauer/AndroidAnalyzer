.class public final Leg;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_f

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 79
    const/4 v0, 0x0

    .line 114
    :goto_e
    return-object v0

    .line 82
    :cond_f
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    move v1, v2

    .line 86
    :goto_1c
    sget-object v5, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v5, :cond_86

    .line 88
    sget-object v5, Lev;->a:[I

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8c

    .line 105
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v3

    .line 107
    :goto_4b
    if-eqz v0, :cond_50

    .line 108
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 110
    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 111
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_1c

    :cond_57
    move v0, v2

    .line 90
    goto :goto_4b

    .line 93
    :pswitch_59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_4b

    .line 96
    :pswitch_5e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :try_start_62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_65} :catch_6c

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v3

    goto :goto_4b

    :cond_6a
    move v0, v2

    goto :goto_4b

    .line 99
    :catch_6c
    move-exception v1

    .line 100
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_86
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    move-object v0, v4

    .line 114
    goto :goto_e

    .line 88
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_59
        :pswitch_5e
    .end packed-switch
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p2, :cond_7

    .line 119
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 129
    :goto_6
    return-void

    .line 123
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    move v0, v1

    .line 124
    :goto_b
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 125
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .line 126
    :goto_18
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move v2, v1

    .line 125
    goto :goto_18

    .line 128
    :cond_21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    goto :goto_6
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Leg;->a(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Leg;->a(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method
