.class public Lct;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcu;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    new-instance v0, Lcu;

    invoke-direct {v0}, Lcu;-><init>()V

    iput-object v0, p0, Lct;->b:Lcu;

    .line 84
    iput-object p1, p0, Lct;->a:Ljava/lang/Appendable;

    .line 85
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Appendable;Lcs;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lct;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lct;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lct;->b:Lcu;

    iput-object p1, v0, Lcu;->a:[C

    .line 89
    iget-object v0, p0, Lct;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lct;->b:Lcu;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 90
    return-void
.end method
