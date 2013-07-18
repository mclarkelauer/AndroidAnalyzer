.class public Lafzkl/development/mColorPicker/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;


# instance fields
.field private a:Lafzkl/development/mColorPicker/views/ColorPickerView;

.field private b:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private c:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private d:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p2}, Lafzkl/development/mColorPicker/ColorPickerDialog;->a(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lafzkl/development/mColorPicker/ColorPickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    iput-object p3, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->d:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    .line 50
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 56
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/ColorPickerDialog;->b(I)V

    .line 58
    return-void
.end method

.method private b(I)V
    .registers 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    sget v1, Lafzkl/development/mColorPicker/R$layout;->dialog_color_picker:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Lafzkl/development/mColorPicker/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 68
    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Lafzkl/development/mColorPicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    sget v0, Lafzkl/development/mColorPicker/R$id;->color_picker_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPickerView;

    .line 71
    iput-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    .line 73
    sget v0, Lafzkl/development/mColorPicker/R$id;->old_color_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    .line 74
    sget v0, Lafzkl/development/mColorPicker/R$id;->new_color_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->c:Lafzkl/development/mColorPicker/views/ColorPanelView;

    .line 76
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    iget-object v1, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 78
    iget-object v2, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 76
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setOnColorChangedListener(Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6a

    .line 83
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, v4, v5}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    :cond_6a
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    .line 87
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p1, v4}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setColor(IZ)V

    .line 89
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->c:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    .line 96
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->d:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_e

    .line 97
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->d:Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;

    invoke-interface {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 100
    :cond_e
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 109
    return-void
.end method

.method public setOldNewVisible(I)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lafzkl/development/mColorPicker/ColorPickerDialog;->c:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setVisibility(I)V

    .line 105
    return-void
.end method
