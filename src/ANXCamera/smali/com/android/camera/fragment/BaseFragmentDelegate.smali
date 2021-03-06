.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;
    }
.end annotation


# static fields
.field public static final BEAUTY_FRAGMENT_CONTAINER_ID:I = 0x7f0d001a

.field public static final EYE_LIGHT_POPU_TIP_FRAGMENT_CONTAINER_ID:I = 0x7f0d00f0

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_BEAUTY:I = 0xffa

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xff1

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_DUAL_STEREO:I = 0xff5

.field public static final FRAGMENT_EYE_LIGHT_POPU_TIP:I = 0xff9

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_BEAUTY:I = 0xf9

.field public static final FRAGMENT_POPUP_BEAUTYLEVEL:I = 0xff2

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_LIVE_STICKER:I = 0xffc

.field public static final FRAGMENT_POPUP_MAKEUP:I = 0xfc

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_STICKER:I = 0xff

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_TOP_CONFIG_EXTRA:I = 0xf5

.field public static final FRAGMENT_VERTICAL:I = 0xff8

.field public static final MAKE_UP_POPU_FRAGMENT_CONTAINER_ID:I = 0x7f0d00ef

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/camera/Camera;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 133
    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 134
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    .line 135
    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    .line 293
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 297
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 307
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 308
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 311
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    .line 417
    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    .line 418
    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 421
    :cond_1
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_5

    .line 400
    :pswitch_1
    if-eq v3, v4, :cond_2

    .line 401
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 402
    if-eqz v5, :cond_2

    .line 403
    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 404
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 408
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 409
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 410
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 411
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 413
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 414
    goto/16 :goto_5

    .line 372
    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 373
    move v8, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 374
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 375
    if-ne v9, v4, :cond_3

    .line 376
    goto :goto_3

    .line 378
    :cond_3
    iget-object v10, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 379
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    .line 381
    if-eqz v10, :cond_5

    .line 382
    if-eq v9, v3, :cond_4

    .line 383
    invoke-virtual {v10, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_2

    .line 385
    :cond_4
    invoke-virtual {v10, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 387
    :goto_2
    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 373
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 391
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 392
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 393
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 394
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 396
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 397
    goto/16 :goto_5

    .line 351
    :pswitch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 352
    if-eqz v5, :cond_7

    .line 353
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 354
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 357
    if-eqz v5, :cond_8

    .line 358
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 359
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    .line 361
    :cond_8
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    .line 362
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 365
    :goto_4
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 367
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 369
    goto :goto_5

    .line 336
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 337
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    .line 338
    if-eqz v4, :cond_9

    .line 339
    invoke-virtual {v4, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 340
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 345
    :cond_9
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 348
    goto :goto_5

    .line 323
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 325
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragment;

    .line 326
    if-eqz v3, :cond_a

    .line 327
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 328
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 331
    :cond_a
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 333
    goto :goto_5

    .line 313
    :pswitch_6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 314
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 315
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 316
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 317
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 319
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 320
    nop

    .line 426
    :goto_5
    goto/16 :goto_0

    .line 428
    :cond_b
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 429
    return-void

    .line 294
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "need operation info"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bindLifeCircle(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 768
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 769
    new-instance v0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;-><init>()V

    .line 770
    invoke-virtual {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->getLifecycle()Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/BaseFragmentDelegate$2;

    invoke-direct {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate$2;-><init>()V

    const-string v3, "com.android.camera.bind"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->addListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "com.android.camera.bind"

    .line 799
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 800
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 801
    return-void
.end method

.method private constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    .line 500
    nop

    .line 502
    const/16 v0, 0xf7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 586
    :pswitch_0
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;-><init>()V

    goto/16 :goto_0

    .line 583
    :pswitch_1
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;-><init>()V

    .line 584
    goto/16 :goto_0

    .line 580
    :pswitch_2
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;-><init>()V

    .line 581
    goto/16 :goto_0

    .line 577
    :pswitch_3
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;-><init>()V

    .line 578
    goto/16 :goto_0

    .line 574
    :pswitch_4
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;-><init>()V

    .line 575
    goto/16 :goto_0

    .line 571
    :pswitch_5
    new-instance v1, Lcom/android/camera/fragment/FragmentVertical;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentVertical;-><init>()V

    .line 572
    goto/16 :goto_0

    .line 568
    :pswitch_6
    new-instance v1, Lcom/android/camera/fragment/FragmentFullScreen;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentFullScreen;-><init>()V

    .line 569
    goto :goto_0

    .line 564
    :pswitch_7
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    .line 565
    goto :goto_0

    .line 560
    :pswitch_8
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    .line 561
    goto :goto_0

    .line 556
    :pswitch_9
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    .line 557
    goto :goto_0

    .line 548
    :pswitch_a
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    .line 549
    goto :goto_0

    .line 552
    :pswitch_b
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    .line 553
    goto :goto_0

    .line 544
    :pswitch_c
    new-instance v1, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    .line 545
    goto :goto_0

    .line 532
    :pswitch_d
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;-><init>()V

    .line 533
    goto :goto_0

    .line 528
    :pswitch_e
    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    .line 529
    goto :goto_0

    .line 520
    :pswitch_f
    new-instance v1, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    .line 521
    goto :goto_0

    .line 536
    :pswitch_10
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    .line 537
    goto :goto_0

    .line 516
    :pswitch_11
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    .line 517
    goto :goto_0

    .line 512
    :pswitch_12
    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    .line 513
    goto :goto_0

    .line 508
    :pswitch_13
    new-instance v1, Lcom/android/camera/fragment/bottom/FragmentBottomAction;

    invoke-direct {v1}, Lcom/android/camera/fragment/bottom/FragmentBottomAction;-><init>()V

    .line 509
    goto :goto_0

    .line 505
    :pswitch_14
    return-object v1

    .line 540
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    .line 541
    goto :goto_0

    .line 524
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v1}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    .line 525
    nop

    .line 590
    :goto_0
    invoke-virtual {v1, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 591
    invoke-virtual {v1, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 592
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 593
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    .line 594
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf3
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xff0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xff8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 253
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 254
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    .line 255
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method private updateCurrentFragments(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 434
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 435
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_7

    .line 478
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_7

    .line 479
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_0

    .line 480
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 481
    goto/16 :goto_7

    .line 478
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :goto_1
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_1

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 471
    goto :goto_2

    .line 468
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_2
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    goto :goto_7

    .line 463
    :pswitch_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 464
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    goto :goto_7

    .line 459
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    goto :goto_7

    .line 450
    :goto_3
    :pswitch_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_3

    .line 452
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 453
    goto :goto_4

    .line 450
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 456
    :cond_4
    :goto_4
    goto :goto_7

    .line 442
    :goto_5
    :pswitch_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_6

    .line 443
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_5

    .line 444
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    goto :goto_6

    .line 442
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 448
    :cond_6
    :goto_6
    goto :goto_7

    .line 437
    :pswitch_6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 438
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    nop

    .line 486
    :cond_7
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delegateEvent(I)V
    .locals 9

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    const/16 v1, 0xff1

    const v2, 0x7f0d00ee

    const/16 v3, 0xf1

    const v4, 0x7f0d00ef

    const v5, 0x7f0d001b

    const v6, 0x7f0d001a

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 678
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffd

    if-eq p1, v1, :cond_0

    .line 679
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 681
    :cond_0
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    goto/16 :goto_1

    .line 670
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffc

    if-eq p1, v1, :cond_1

    .line 671
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 673
    :cond_1
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    goto/16 :goto_1

    .line 630
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 631
    const/16 v1, 0xffa

    if-eq p1, v1, :cond_2

    .line 632
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 634
    :cond_2
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    goto/16 :goto_1

    .line 728
    :pswitch_4
    const p1, 0x7f0d00f0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_3

    .line 729
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff9

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 731
    :cond_3
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 710
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v3, :cond_d

    .line 711
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 686
    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff3

    const v4, 0x7f0d00ec

    const v6, 0x7f0d00e7

    const v7, 0x7f0d00eb

    const v8, 0x7f0d00ea

    if-eq p1, v1, :cond_5

    .line 687
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_4

    .line 691
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_4
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 696
    :cond_5
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_6

    .line 700
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_6
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/mi/config/b;->hd()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 704
    :cond_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 662
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff2

    if-eq p1, v1, :cond_8

    .line 663
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff2

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 665
    :cond_8
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    goto/16 :goto_1

    .line 639
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 640
    const/16 v6, 0xff

    if-eq p1, v6, :cond_9

    .line 641
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 644
    :cond_9
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    goto/16 :goto_1

    .line 654
    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfc

    if-eq p1, v1, :cond_a

    .line 655
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfc

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 657
    :cond_a
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    goto :goto_1

    .line 622
    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 623
    const/16 v1, 0xfb

    if-eq p1, v1, :cond_b

    .line 624
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfb

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 626
    :cond_b
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    goto :goto_1

    .line 612
    :pswitch_b
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 613
    const/16 v1, 0xfa

    if-eq p1, v1, :cond_c

    .line 614
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfa

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_c
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :goto_0
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    nop

    .line 738
    :cond_d
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 739
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    return-object v1

    .line 277
    :cond_0
    nop

    .line 278
    if-eqz p3, :cond_1

    .line 279
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 288
    :cond_1
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3, p1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public getActiveFragment(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 743
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 744
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 748
    return p1

    .line 745
    :cond_1
    :goto_0
    const/16 p1, 0xf0

    return p1
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object v0
.end method

.method public getOriginalFragment(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 752
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 753
    return p1
.end method

.method public init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 17

    move-object/from16 v0, p0

    .line 159
    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    .line 165
    const/4 v2, 0x1

    const/16 v3, 0xf0

    const/16 v4, 0xf4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    .line 169
    const/16 v5, 0xf7

    invoke-direct {v0, v2, v5, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    .line 171
    const/16 v6, 0xff1

    invoke-direct {v0, v2, v6, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v6

    .line 173
    const/16 v7, 0xf1

    invoke-direct {v0, v2, v7, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v7

    .line 175
    const/16 v8, 0xf3

    invoke-direct {v0, v2, v8, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    .line 177
    const/16 v9, 0xff0

    invoke-direct {v0, v2, v9, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    .line 179
    const/16 v10, 0xff6

    invoke-direct {v0, v2, v10, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v10

    .line 181
    const/16 v11, 0xff8

    invoke-direct {v0, v2, v11, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 184
    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0d00ee

    invoke-virtual {v12, v14, v6, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d001b

    invoke-virtual {v12, v15, v7, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 186
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00ea

    invoke-virtual {v12, v15, v4, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00eb

    invoke-virtual {v12, v15, v5, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 189
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00e7

    invoke-virtual {v12, v15, v8, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00e8

    invoke-virtual {v12, v15, v9, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 191
    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00f1

    invoke-virtual {v12, v15, v10, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0d00e9

    invoke-virtual {v12, v15, v11, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    nop

    .line 196
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 197
    const/16 v13, 0xff4

    invoke-direct {v0, v2, v13, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v13

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/mi/config/b;->hd()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 199
    const/16 v13, 0xff5

    invoke-direct {v0, v2, v13, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v13

    goto :goto_0

    .line 202
    :cond_1
    const/4 v13, 0x0

    :goto_0
    const v15, 0x7f0d00ec

    if-eqz v13, :cond_2

    .line 203
    iget-object v14, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v14, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v2, v14, v13}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 205
    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v15, v13, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 207
    :cond_2
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    :goto_1
    invoke-static {}, Lcom/android/camera/Util;->UI_DEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    const/16 v2, 0xffb

    const/4 v13, 0x1

    invoke-direct {v0, v13, v2, v3, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    .line 212
    iget-object v13, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    const v15, 0x7f0d00ed

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    iget-object v13, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v13, v14, v2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 214
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v15, v2, v13}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 217
    :cond_3
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00ee

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d001b

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00ea

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v13, 0x7f0d00ef

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00eb

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00e7

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00e8

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v13

    const v14, 0x7f0d00f1

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v13, 0x7f0d001a

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v13, 0x7f0d00f0

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 234
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 236
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 237
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 238
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 239
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 240
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v10}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 241
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v11}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 243
    iget-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 247
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 249
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    .line 250
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 140
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 147
    return-void
.end method
