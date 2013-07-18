.class public Lnet/londatiga/android/ActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lnet/londatiga/android/ActionItem;->d:I

    .line 31
    iput-object p2, p0, Lnet/londatiga/android/ActionItem;->c:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lnet/londatiga/android/ActionItem;->a:Landroid/graphics/drawable/Drawable;

    .line 33
    iput p1, p0, Lnet/londatiga/android/ActionItem;->d:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lnet/londatiga/android/ActionItem;->d:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->e:Z

    return v0
.end method

.method public isSticky()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->f:Z

    return v0
.end method

.method public setActionId(I)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lnet/londatiga/android/ActionItem;->d:I

    .line 114
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->a:Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->e:Z

    .line 146
    return-void
.end method

.method public setSticky(Z)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->f:Z

    .line 130
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->b:Landroid/graphics/Bitmap;

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->c:Ljava/lang/String;

    .line 79
    return-void
.end method
