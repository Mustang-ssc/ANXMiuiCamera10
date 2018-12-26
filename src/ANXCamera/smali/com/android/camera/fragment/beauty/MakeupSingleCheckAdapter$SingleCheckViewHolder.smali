.class Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MakeupSingleCheckAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleCheckViewHolder"
.end annotation


# instance fields
.field private itemView:Landroid/view/View;

.field private mAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

.field private mBase:Lcom/android/camera/ui/ColorImageView;

.field private mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    iput-object p3, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 97
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    .line 98
    const p3, 0x7f0d000b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    .line 99
    const p3, 0x7f0d000a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 100
    iget-object p3, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 101
    invoke-virtual {p3}, Lcom/android/camera/ui/ColorImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 103
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 104
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$200(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result p1

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 107
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)Landroid/view/View;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method private colorAnimate(Lcom/android/camera/ui/ColorImageView;II)V
    .locals 3

    .line 182
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 184
    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    new-instance p3, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder$2;-><init>(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 193
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 194
    return-void
.end method

.method private textColorAnimate(Landroid/widget/TextView;II)V
    .locals 3

    .line 167
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 169
    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 170
    new-instance p3, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder$1;-><init>(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->getAdapterPosition()I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onItemHolderClick(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)V

    .line 134
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$602(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;I)I

    .line 137
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$502(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;I)I

    .line 138
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 139
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$700(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$600(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    .line 140
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 141
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$700(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    .line 142
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    const v2, 0x7f0a0059

    const v3, 0x7f0a005a

    if-eqz p1, :cond_1

    .line 144
    iget-object v4, p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 145
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 144
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->colorAnimate(Lcom/android/camera/ui/ColorImageView;II)V

    .line 148
    :cond_1
    iget-object v4, v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 150
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 148
    invoke-direct {p0, v4, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->colorAnimate(Lcom/android/camera/ui/ColorImageView;II)V

    .line 152
    const v2, 0x7f0a005b

    const v3, 0x7f0a005c

    if-eqz p1, :cond_2

    .line 153
    iget-object v4, p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    .line 154
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 153
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->textColorAnimate(Landroid/widget/TextView;II)V

    .line 157
    :cond_2
    iget-object v0, v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 159
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 157
    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->textColorAnimate(Landroid/widget/TextView;II)V

    .line 160
    if-nez p1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$600(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->notifyItemChanged(I)V

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onItemHolderClick(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)V

    .line 164
    return-void
.end method

.method public setDataToView(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->getTextResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 115
    const v2, 0x7f0a005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 116
    :cond_0
    const v2, 0x7f0a005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 114
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->getTextResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0b00f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->getTextResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0b00f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->getImageResource()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ColorImageView;->setImageResource(I)V

    .line 124
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 125
    const p2, 0x7f0a005a

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_2

    .line 126
    :cond_3
    const p2, 0x7f0a0059

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 124
    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 127
    return-void
.end method
