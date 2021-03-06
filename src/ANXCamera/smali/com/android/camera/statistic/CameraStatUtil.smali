.class public Lcom/android/camera/statistic/CameraStatUtil;
.super Ljava/lang/Object;
.source "CameraStatUtil.java"


# static fields
.field private static final AUTO:Ljava/lang/String; = "auto"

.field public static final AUTO_OFF:Ljava/lang/String; = "auto-off"

.field public static final AUTO_ON:Ljava/lang/String; = "auto-on"

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final OTHERS:Ljava/lang/String; = "others"

.field private static final TAG:Ljava/lang/String;

.field private static sBeautyTypeToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExposureTimeLessThan1sToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterTypeToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPictureQualityIndexToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTriggerModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    const-class v0, Lcom/android/camera/statistic/CameraStatUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    .line 61
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u5c0f\u89c6\u9891"

    const/16 v2, 0xa1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u62cd\u7167"

    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u65b9\u5f62"

    const/16 v2, 0xa5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u5168\u666f"

    const/16 v2, 0xa6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u624b\u52a8"

    const/16 v2, 0xa7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u4eba\u50cf"

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u6162\u52a8\u4f5c"

    const/16 v2, 0xac

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u591c\u666f"

    const/16 v2, 0xad

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    .line 74
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u62cd\u7167\u952e"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u97f3\u91cf\u952e"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u6307\u7eb9"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u76f8\u673a\u952e"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "dpad\u952e"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u7269\u4f53\u8ffd\u8e2a"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u58f0\u63a7\u5feb\u95e8"

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u957f\u6309\u5c4f\u5e55"

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u66dd\u5149\u73af"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    .line 91
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u6700\u4f4e"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u66f4\u4f4e"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u4f4e"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u6807\u51c6"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u9ad8"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u66f4\u9ad8"

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const-string v1, "\u6700\u9ad8"

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    .line 103
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "auto"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/1000s"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/500s"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/250s"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/250s"

    const/16 v2, 0x1388

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/125s"

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/60s"

    const/16 v2, 0x411b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/30s"

    const v2, 0x8235

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/15s"

    const v2, 0x1046b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/8s"

    const v2, 0x1e848

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/4s"

    const v2, 0x3d090

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/2s"

    const v2, 0x7a120

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1s"

    const v2, 0xf4240

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "2s"

    const v2, 0x1e8480

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "4s"

    const v2, 0x3d0900

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "8s"

    const v2, 0x7a1200

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "16s"

    const v2, 0xf42400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "32s"

    const v2, 0x1e84800

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    .line 126
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->WHITEN_STRENGTH:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u7f8e\u767d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u7626\u8138"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u5927\u773c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->SMOOTH_STRENGTH:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u5ae9\u80a4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->NOSE_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u82ad\u6bd4\u9f3b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->RISORIUS_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u82f9\u679c\u808c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->LIPS_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u82b1\u74e3\u5507"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->CHIN_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u7fd8\u4e0b\u5df4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->NECK_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u5929\u9e45\u9888"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->SMILE_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u5fae\u7b11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->SLIM_NOSE_RATIO:Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v1

    const-string v2, "\u7626\u9f3b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    .line 144
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BERRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u6d46\u679c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_COOKIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u66f2\u5947"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_DELICACY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u7f8e\u5473"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FADE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u892a\u8272"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_KOIZORA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u604b\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LATTE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u62ff\u94c1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u6d6e\u5149"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIVELY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u751f\u52a8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_QUIET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u9759\u8c27"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_SODA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u6c7d\u6c34"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WARM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u6696\u9633"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_FAIRYTALE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u7ae5\u8bdd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u65e5\u7cfb"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u8584\u8377"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u5fc3\u5883"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u81ea\u7136"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u7c89\u5ae9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_ROMANCE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u6d6a\u6f2b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MAZE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u8ff7\u5bab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u4eba\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u90a3\u4e9b\u5e74"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_POLAROID:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u62cd\u7acb\u5f97"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FOREST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u5c0f\u68ee\u6797"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_BYGONE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u5f80\u4e8b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 510
    if-eqz p0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 512
    return-object p0

    .line 515
    :cond_1
    return-object p0
.end method

.method private static antiBandingToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 411
    if-nez p0, :cond_0

    .line 412
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v0, "null antiBanding"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string p0, "others"

    return-object p0

    .line 415
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 425
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected antiBanding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string p0, "others"

    return-object p0

    .line 423
    :pswitch_4
    const-string p0, "auto"

    return-object p0

    .line 421
    :pswitch_5
    const-string p0, "60hz"

    return-object p0

    .line 419
    :pswitch_6
    const-string p0, "50hz"

    return-object p0

    .line 417
    :pswitch_7
    const-string p0, "off"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static autoExposureToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 272
    if-eqz p0, :cond_2

    .line 273
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 274
    const v1, 0x7f0b010c

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string p0, "\u5e73\u5747\u6d4b\u5149"

    return-object p0

    .line 277
    :cond_0
    const v1, 0x7f0b010d

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string p0, "\u4e2d\u5fc3\u6743\u91cd"

    return-object p0

    .line 280
    :cond_1
    const v1, 0x7f0b010e

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const-string p0, "\u4e2d\u70b9\u6d4b\u5149"

    return-object p0

    .line 286
    :cond_2
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected auto exposure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string p0, "others"

    return-object p0
.end method

.method private static autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 291
    if-nez p0, :cond_0

    .line 292
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v0, "null awb"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string p0, "others"

    return-object p0

    .line 295
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "manual"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 309
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected awb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string p0, "others"

    return-object p0

    .line 307
    :pswitch_0
    const-string p0, "cloudy-daylight"

    return-object p0

    .line 305
    :pswitch_1
    const-string p0, "daylight"

    return-object p0

    .line 303
    :pswitch_2
    const-string p0, "fluorescent"

    return-object p0

    .line 301
    :pswitch_3
    const-string p0, "incandescent"

    return-object p0

    .line 299
    :pswitch_4
    const-string p0, "auto"

    return-object p0

    .line 297
    :pswitch_5
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4075183a -> :sswitch_5
        0x31 -> :sswitch_4
        0x32 -> :sswitch_3
        0x33 -> :sswitch_2
        0x35 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static burstShotNumToName(I)Ljava/lang/String;
    .locals 0

    .line 242
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cameraIdToName(Z)Ljava/lang/String;
    .locals 0

    .line 216
    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    :goto_0
    return-object p0
.end method

.method private static contrastToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 399
    const v0, 0x7f0e0015

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static divideTo10Section(I)Ljava/lang/String;
    .locals 0

    .line 246
    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 247
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 267
    const-string p0, "90+"

    return-object p0

    .line 265
    :pswitch_0
    const-string p0, "80+"

    return-object p0

    .line 263
    :pswitch_1
    const-string p0, "70+"

    return-object p0

    .line 261
    :pswitch_2
    const-string p0, "60+"

    return-object p0

    .line 259
    :pswitch_3
    const-string p0, "50+"

    return-object p0

    .line 257
    :pswitch_4
    const-string p0, "40+"

    return-object p0

    .line 255
    :pswitch_5
    const-string p0, "30+"

    return-object p0

    .line 253
    :pswitch_6
    const-string p0, "20+"

    return-object p0

    .line 251
    :pswitch_7
    const-string p0, "10+"

    return-object p0

    .line 249
    :pswitch_8
    const-string p0, "1+"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 315
    if-eqz p0, :cond_2

    .line 317
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 318
    const v1, 0xf4240

    if-ge v0, v1, :cond_1

    .line 319
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    return-object v0

    .line 323
    :cond_0
    nop

    .line 329
    goto :goto_0

    .line 324
    :cond_1
    div-int/2addr v0, v1

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string p0, "auto"

    return-object p0
.end method

.method public static faceBeautyRatioToName(I)Ljava/lang/String;
    .locals 0

    .line 235
    if-nez p0, :cond_0

    .line 236
    const-string p0, "0"

    return-object p0

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static filterIdToName(I)Ljava/lang/String;
    .locals 3

    .line 175
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, p0, :cond_0

    .line 176
    const-string p0, "none"

    return-object p0

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    .line 180
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v0

    .line 185
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    if-eqz v0, :cond_1

    .line 187
    return-object v0

    .line 193
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected filter id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string p0, "none"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static flashModeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 486
    if-nez p0, :cond_0

    .line 487
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v0, "null flash mode"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string p0, "others"

    return-object p0

    .line 490
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xbdf2

    if-eq v1, v2, :cond_2

    const v2, 0xbdf4

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const-string v1, "103"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "101"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 504
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected flash mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string p0, "others"

    return-object p0

    .line 502
    :pswitch_4
    const-string p0, "off"

    return-object p0

    .line 500
    :pswitch_5
    const-string p0, "torch"

    return-object p0

    .line 498
    :pswitch_6
    const-string p0, "screen-light-on"

    return-object p0

    .line 496
    :pswitch_7
    const-string p0, "screen-light-auto"

    return-object p0

    .line 494
    :pswitch_8
    const-string p0, "on"

    return-object p0

    .line 492
    :pswitch_9
    const-string p0, "auto"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static focusPositionToName(I)Ljava/lang/String;
    .locals 1

    .line 361
    const/16 v0, 0x3e8

    if-ne v0, p0, :cond_0

    .line 362
    const-string p0, "auto"

    return-object p0

    .line 364
    :cond_0
    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0xa

    .line 365
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDualZoomName(I)Ljava/lang/String;
    .locals 1

    .line 374
    packed-switch p0, :pswitch_data_0

    .line 381
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()F

    move-result p0

    .line 382
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->zoomRatioToName(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 377
    :pswitch_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object p0

    .line 378
    const-string v0, "tele"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 379
    const-string p0, "2x"

    goto :goto_0

    :cond_0
    const-string p0, "1x"

    .line 378
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static indexOfString([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 474
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 475
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 476
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    return v0

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isoToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 345
    if-eqz p0, :cond_1

    .line 346
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string p0, "auto"

    return-object p0

    .line 349
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 351
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 352
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_1
    return-object p0
.end method

.method public static modeIdToName(I)Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 199
    if-nez p0, :cond_0

    .line 200
    const-string p0, "\u5f55\u50cf"

    .line 202
    :cond_0
    return-object p0
.end method

.method private static pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 458
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 459
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 463
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtil;->indexOfString([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 464
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 465
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length p0, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 466
    add-int/2addr p1, v0

    .line 467
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 470
    :cond_0
    const-string p0, "others"

    return-object p0

    .line 460
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture quality array size is smaller than values size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static round(JI)J
    .locals 2

    .line 605
    if-gtz p2, :cond_0

    .line 606
    return-wide p0

    .line 608
    :cond_0
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static saturationToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 403
    const v0, 0x7f0e0017

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sharpnessToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 407
    const v0, 0x7f0e0019

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static slowMotionConfigToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 206
    const-string v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string p0, "\u70b9\u51fb\u81f3120"

    return-object p0

    .line 208
    :cond_0
    const-string v0, "slow_motion_240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 209
    const-string p0, "\u70b9\u51fb\u81f3240"

    return-object p0

    .line 211
    :cond_1
    const-string p0, "\u70b9\u51fb\u81f3960"

    return-object p0
.end method

.method private static slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 431
    if-nez p0, :cond_0

    .line 432
    const-string p0, "others"

    return-object p0

    .line 434
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 440
    const-string p0, "others"

    return-object p0

    .line 438
    :pswitch_2
    const-string p0, "1080p"

    return-object p0

    .line 436
    :pswitch_3
    const-string p0, "720p"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static timeLapseIntervalToName(I)Ljava/lang/String;
    .locals 5

    .line 572
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_0

    .line 573
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.2fs"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p0, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%ds"

    new-array v1, v1, [Ljava/lang/Object;

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 580
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 582
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 583
    aget-object v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 585
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 586
    return-void
.end method

.method public static trackAISceneChanged(IILandroid/content/res/Resources;)V
    .locals 2

    .line 1005
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    return-void

    .line 1008
    :cond_0
    const-string v0, "\u672a\u77e5"

    .line 1009
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1010
    if-ltz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1011
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1015
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1016
    const-string p2, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string p0, "\u667a\u80fd\u573a\u666f\u53d1\u73b0"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string p0, "counter"

    const-string p2, "ai_scene_changed"

    invoke-static {p0, p2, p1}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1019
    return-void
.end method

.method public static trackAwbChanged(Ljava/lang/String;)V
    .locals 2

    .line 1068
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    return-void

    .line 1071
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1072
    const-string v1, "\u767d\u5e73\u8861"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string p0, "counter"

    const-string v1, "manual_awb_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1075
    return-void
.end method

.method public static trackBeautyInfo(ILjava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 4

    .line 1137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1138
    const-string v1, "\u524d\u540e\u6444"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-static {}, Lcom/mi/config/b;->hC()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1141
    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyParameters;->getInstance()Lcom/android/camera/fragment/beauty/BeautyParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyParameters;->getAdjustableTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;

    .line 1142
    sget-object v2, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/BeautyParameters$Type;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/beauty/BeautyValues;->get(Lcom/android/camera/fragment/beauty/BeautyParameters$Type;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_0
    goto :goto_0

    .line 1148
    :cond_1
    const-string p1, "\u7626\u8138"

    iget v1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 1149
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    const-string p1, "\u5927\u773c"

    iget v1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 1151
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string p1, "\u7f8e\u767d"

    iget v1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 1153
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string p1, "\u5ae9\u80a4"

    iget v1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 1155
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_2
    invoke-static {}, Lcom/mi/config/b;->hr()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1159
    const-string p1, "\u7b49\u7ea7"

    .line 1160
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAdvancedBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "advanced"

    goto :goto_1

    .line 1161
    :cond_3
    iget-object p2, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1159
    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string p1, "capture"

    const-string p2, "picture_taken_beauty_legacy"

    int-to-long v1, p0

    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_2

    .line 1165
    :cond_4
    iget-object p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result p1

    .line 1166
    const-string p2, "\u7b49\u7ea7"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string p1, "capture"

    const-string p2, "picture_taken_beauty"

    int-to-long v1, p0

    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 1170
    :goto_2
    return-void
.end method

.method public static trackBeautySwitchChanged(ILjava/lang/String;)V
    .locals 2

    .line 946
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    return-void

    .line 949
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 950
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string p0, "\u524d\u540e\u6444"

    .line 952
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_1
    const-string v1, "\u540e\u6444"

    .line 951
    :goto_0
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result p0

    .line 955
    const-string p1, "\u7b49\u7ea7"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string p0, "counter"

    const-string p1, "beauty_switch_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 958
    return-void
.end method

.method public static trackBroadcastKillService()V
    .locals 3

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 551
    const-string v1, "\u524d\u540e\u6444"

    .line 552
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 551
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "\u6a21\u5f0f"

    .line 555
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "counter"

    const-string v2, "camera_broadcast_kill_service"

    invoke-static {v1, v2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 558
    return-void
.end method

.method public static trackCameraError(Ljava/lang/String;)V
    .locals 3

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    const-string v1, "\u524d\u540e\u6444"

    .line 526
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 525
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "\u6a21\u5f0f"

    .line 529
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "error"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string p0, "counter"

    const-string v1, "camera_hardware_error"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 533
    return-void
.end method

.method public static trackCameraErrorDialogShow()V
    .locals 3

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 540
    const-string v1, "\u524d\u540e\u6444"

    .line 541
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 540
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "\u6a21\u5f0f"

    .line 544
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "counter"

    const-string v2, "camera_error_dialog_show"

    invoke-static {v1, v2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 547
    return-void
.end method

.method public static trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    .line 928
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 932
    if-eqz p3, :cond_1

    .line 933
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    .line 934
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    if-eqz p4, :cond_3

    .line 937
    const-string p3, "\u524d\u540e\u6444"

    .line 938
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 939
    const-string p4, "\u524d\u6444"

    goto :goto_0

    :cond_2
    const-string p4, "\u540e\u6444"

    .line 937
    :goto_0
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "on"

    goto :goto_1

    :cond_4
    const-string p2, "off"

    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string p1, "counter"

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 943
    return-void
.end method

.method public static trackDirectionChanged(I)V
    .locals 3

    .line 1045
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1048
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1049
    const-string v1, "\u65b9\u5411"

    .line 1050
    const/4 v2, 0x3

    if-ne v2, p0, :cond_1

    .line 1051
    const-string p0, "\u4ece\u5de6\u5f80\u53f3"

    goto :goto_0

    :cond_1
    const-string p0, "\u4ece\u53f3\u5f80\u5de6"

    .line 1049
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string p0, "counter"

    const-string v1, "panorama_direction_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1054
    return-void
.end method

.method public static trackDualWaterMarkChanged(Z)V
    .locals 2

    .line 961
    const-string v0, "settings"

    const-string v1, "pref_dualcamera_watermark"

    .line 963
    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 961
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/android/camera/statistic/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public static trackDualZoomChanged(ILjava/lang/String;)V
    .locals 2

    .line 883
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    return-void

    .line 886
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 887
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string p0, "\u53d8\u7126"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string p0, "counter"

    const-string p1, "dual_zoom_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 891
    return-void
.end method

.method public static trackEvAdjusted()V
    .locals 3

    .line 859
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 860
    const-string v1, "\u524d\u540e\u6444"

    .line 861
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 860
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v1, "\u6a21\u5f0f"

    .line 864
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v1, "counter"

    const-string v2, "ev_adjusted"

    invoke-static {v1, v2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 866
    return-void
.end method

.method public static trackExposureTimeChanged(Ljava/lang/String;)V
    .locals 2

    .line 1078
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    return-void

    .line 1081
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1082
    const-string v1, "\u5feb\u95e8"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const-string p0, "counter"

    const-string v1, "manual_exposure_time_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1085
    return-void
.end method

.method public static trackFilterChanged(IIZ)V
    .locals 2

    .line 894
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 898
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string p0, "\u6ee4\u955c"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string p0, "\u65b9\u5f0f"

    .line 901
    if-eqz p2, :cond_1

    const-string p1, "\u70b9\u51fb"

    goto :goto_0

    :cond_1
    const-string p1, "\u6ed1\u52a8"

    .line 900
    :goto_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string p0, "counter"

    const-string p1, "filter_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 903
    return-void
.end method

.method public static trackFlashChanged(ILjava/lang/String;)V
    .locals 2

    .line 906
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 910
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string p0, "\u95ea\u5149\u706f"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string p0, "counter"

    const-string p1, "flash_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 914
    return-void
.end method

.method public static trackFocusPositionChanged(I)V
    .locals 2

    .line 1034
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    return-void

    .line 1037
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1038
    const-string v1, "\u5bf9\u7126"

    .line 1039
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->focusPositionToName(I)Ljava/lang/String;

    move-result-object p0

    .line 1038
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string p0, "counter"

    const-string v1, "manual_focus_position_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1042
    return-void
.end method

.method public static trackGeneralInfo(IZIIZLcom/android/camera/MutexModeManager;Ljava/lang/String;)V
    .locals 5

    .line 655
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 657
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 658
    nop

    .line 659
    const-string v3, "\u6a21\u5f0f"

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v3, "\u5408\u5f71\u4f18\u9009"

    .line 661
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "on"

    goto :goto_0

    :cond_0
    const-string v4, "off"

    .line 660
    :goto_0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v3, "\u89e6\u53d1\u65b9\u5f0f"

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->triggerModeToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string p3, "0"

    .line 665
    if-nez p1, :cond_1

    .line 666
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v3

    .line 667
    if-eqz v3, :cond_1

    .line 668
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    .line 671
    :cond_1
    const-string v3, "\u5012\u8ba1\u65f6"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string p3, "0"

    .line 674
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    .line 675
    if-eqz v3, :cond_2

    .line 676
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    .line 677
    if-eqz p1, :cond_2

    const-string v3, "2"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 678
    const-string p3, "0"

    .line 681
    :cond_2
    if-eqz p6, :cond_3

    .line 682
    const-string p3, "\u95ea\u5149\u706f"

    invoke-interface {v2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 684
    :cond_3
    const-string p6, "\u95ea\u5149\u706f"

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p3

    const/4 p6, 0x0

    invoke-virtual {p3, p6}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result p3

    .line 688
    const-string p6, "\u6ee4\u955c"

    .line 689
    if-eqz p1, :cond_4

    const-string p3, "none"

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object p3

    .line 688
    :goto_2
    invoke-interface {v2, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    if-eqz p4, :cond_7

    .line 691
    const-string p1, "\u5e74\u9f84\u68c0\u6d4b"

    .line 692
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "on"

    goto :goto_3

    :cond_5
    const-string p2, "off"

    .line 691
    :goto_3
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string p1, "\u9b54\u955c"

    .line 694
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "on"

    goto :goto_4

    :cond_6
    const-string p2, "off"

    .line 693
    :goto_4
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string p1, "capture"

    const-string p2, "front_camera_info"

    int-to-long p3, p0

    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_a

    .line 698
    :cond_7
    const-string p3, "\u79fb\u8f74"

    .line 699
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 701
    nop

    .line 700
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object p4

    .line 701
    invoke-virtual {p4, p2}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_8
    const-string p4, "off"

    .line 698
    :goto_5
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string p3, "\u6c34\u5e73\u4eea"

    .line 703
    if-nez p1, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 704
    const-string p4, "on"

    goto :goto_6

    :cond_9
    const-string p4, "off"

    .line 702
    :goto_6
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string p3, "HHT"

    .line 706
    if-nez p1, :cond_a

    if-eqz p5, :cond_a

    invoke-virtual {p5}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 707
    const-string p4, "on"

    goto :goto_7

    :cond_a
    const-string p4, "off"

    .line 705
    :goto_7
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string p3, "off"

    .line 710
    if-nez p1, :cond_d

    if-eqz p5, :cond_d

    .line 711
    invoke-virtual {p5}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p4

    .line 712
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p6

    .line 713
    if-eqz p6, :cond_c

    const-string v0, "auto"

    .line 714
    invoke-virtual {p6, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_c

    .line 715
    if-eqz p4, :cond_b

    const-string p3, "auto-on"

    goto :goto_8

    :cond_b
    const-string p3, "auto-off"

    goto :goto_8

    .line 716
    :cond_c
    if-eqz p4, :cond_d

    .line 717
    const-string p3, "on"

    .line 720
    :cond_d
    :goto_8
    const-string p4, "HDR"

    invoke-interface {v2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string p3, "\u8d85\u5206\u8fa8\u7387"

    .line 723
    if-nez p1, :cond_e

    if-eqz p5, :cond_e

    invoke-virtual {p5}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 724
    const-string p1, "on"

    goto :goto_9

    :cond_e
    const-string p1, "off"

    .line 722
    :goto_9
    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string p1, "\u53d8\u7126"

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtil;->getDualZoomName(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string p1, "capture"

    const-string p2, "back_camera_info"

    int-to-long p3, p0

    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 729
    :goto_a
    return-void
.end method

.method public static trackGotoGallery(I)V
    .locals 2

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 788
    const-string v1, "\u6a21\u5f0f"

    .line 789
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    .line 788
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string p0, "counter"

    const-string v1, "goto_gallery"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 791
    return-void
.end method

.method public static trackGotoSettings(I)V
    .locals 2

    .line 780
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 781
    const-string v1, "\u6a21\u5f0f"

    .line 782
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string p0, "counter"

    const-string v1, "goto_settings"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 784
    return-void
.end method

.method public static trackHdrChanged(ILjava/lang/String;)V
    .locals 2

    .line 917
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    return-void

    .line 920
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 921
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string p0, "HDR"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string p0, "counter"

    const-string p1, "hdr_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 924
    return-void
.end method

.method public static trackIsoChanged(Ljava/lang/String;)V
    .locals 2

    .line 1088
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    return-void

    .line 1091
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1092
    const-string v1, "\u611f\u5149\u5ea6"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string p0, "counter"

    const-string v1, "manual_iso_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1095
    return-void
.end method

.method public static trackLensChanged(Ljava/lang/String;)V
    .locals 2

    .line 1098
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    return-void

    .line 1101
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1102
    const-string v1, "\u955c\u5934"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string p0, "counter"

    const-string v1, "manual_lens_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1105
    return-void
.end method

.method public static trackLightingChanged(ILjava/lang/String;)V
    .locals 2

    .line 1023
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    return-void

    .line 1027
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1028
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string p0, "\u5149\u6548"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string p0, "counter"

    const-string p1, "lighting_changed"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1031
    return-void
.end method

.method public static trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V
    .locals 3

    .line 846
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 847
    const-string v1, "\u524d\u540e\u6444"

    const-string v2, "\u540e\u6444"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string p0, "\u753b\u8d28"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const-string p0, "\u95ea\u5149\u706f"

    .line 851
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 852
    const-string p1, "torch"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 850
    :goto_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string p0, "\u5e27\u7387"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string p0, "\u65f6\u957f"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string p0, "capture"

    const-string p1, "video_taken"

    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 856
    return-void
.end method

.method public static trackPauseVideoRecording(Z)V
    .locals 2

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    const-string v1, "\u524d\u540e\u6444"

    .line 803
    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    .line 802
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string p0, "capture"

    const-string v1, "video_pause_recording"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 806
    return-void
.end method

.method public static trackPictureTaken(IZIZZLjava/lang/String;)V
    .locals 3

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    nop

    .line 739
    const-string v1, "\u524d\u540e\u6444"

    .line 740
    if-eqz p3, :cond_0

    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 739
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    nop

    .line 742
    const-string v1, "\u753b\u5e45"

    .line 743
    const/16 v2, 0xa5

    if-ne v2, p2, :cond_1

    const-string v2, "1x1"

    goto :goto_1

    :cond_1
    const-string v2, "4x3"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v1, "\u753b\u8d28"

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v1, "\u65f6\u95f4\u6c34\u5370"

    .line 746
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "on"

    goto :goto_2

    :cond_2
    const-string v2, "off"

    .line 745
    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v1, "\u53cc\u6444\u6c34\u5370"

    .line 748
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "on"

    goto :goto_3

    :cond_3
    const-string v2, "off"

    .line 747
    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v1, "\u5730\u7406\u4f4d\u7f6e"

    .line 750
    if-eqz p4, :cond_4

    const-string p4, "\u6709"

    goto :goto_4

    .line 751
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 752
    const-string p4, "\u65e0"

    goto :goto_4

    :cond_5
    const-string p4, "\u5173"

    .line 749
    :goto_4
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    if-eqz p5, :cond_6

    .line 756
    const-string p4, "\u667a\u80fd\u573a\u666f\u53d1\u73b0"

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_6
    const/16 p4, 0xab

    if-ne p2, p4, :cond_7

    if-nez p3, :cond_7

    .line 760
    const-string p2, "\u5149\u6548"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :cond_7
    const-string p2, "capture"

    const-string p3, "picture_taken"

    int-to-long p4, p0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 766
    if-eqz p1, :cond_9

    .line 767
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    if-le p0, p1, :cond_8

    .line 768
    add-int/lit8 p0, p0, -0x1

    .line 770
    :cond_8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 771
    const-string p2, "\u5f20\u6570"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->burstShotNumToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string p2, "capture"

    const-string p3, "picture_taken_burst"

    int-to-long p4, p0

    invoke-static {p2, p3, p4, p5, p1}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 774
    const-string p0, "capture"

    const-string p2, "burst_shot_times"

    invoke-static {p0, p2, p1}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 777
    :cond_9
    return-void
.end method

.method public static trackPictureTakenInManual(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1122
    const-string v1, "\u767d\u5e73\u8861"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string p1, "\u5bf9\u7126"

    .line 1124
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->focusPositionToName(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string p1, "\u5feb\u95e8"

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string p1, "\u611f\u5149\u5ea6"

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string p1, "\u955c\u5934"

    invoke-static {p4}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string p1, "\u5cf0\u503c\u5bf9\u7126"

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1129
    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    .line 1128
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()F

    move-result p1

    .line 1131
    const-string p2, "\u53d8\u7126"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->zoomRatioToName(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string p1, "capture"

    const-string p2, "picture_taken_manual"

    int-to-long p3, p0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 1134
    return-void
.end method

.method public static trackPictureTakenInPanorama(I)V
    .locals 5

    .line 1108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1109
    const-string v1, "\u65b9\u5411"

    .line 1110
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_0

    .line 1111
    const-string v2, "\u4ece\u5de6\u5f80\u53f3"

    goto :goto_0

    :cond_0
    const-string v2, "\u4ece\u53f3\u5f80\u5de6"

    .line 1109
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v1, "capture"

    const-string v2, "picture_taken_panorama"

    int-to-long v3, p0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 1114
    return-void
.end method

.method public static trackPocketModeEnter(Ljava/lang/String;)V
    .locals 5

    .line 869
    const-string v0, "counter"

    const-string v1, "pocket_mode_enter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u65b9\u5f0f"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public static trackPocketModeExit(Ljava/lang/String;)V
    .locals 5

    .line 874
    const-string v0, "counter"

    const-string v1, "pocket_mode_keyguard_exit"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u65b9\u5f0f"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public static trackPocketModeSensorDelay()V
    .locals 2

    .line 879
    const-string v0, "counter"

    const-string v1, "pocket_mode_sensor_delay"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public static trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1200
    if-nez p0, :cond_0

    .line 1201
    return-void

    .line 1204
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1205
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    goto :goto_0

    .line 1207
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1210
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "pref_camera_jpegquality_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "pref_video_hfr_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "pref_camera_autoexposure_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "pref_camera_antibanding_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "pref_video_new_slow_motion_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_a
    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1248
    :pswitch_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1245
    :pswitch_1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->antiBandingToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1246
    goto :goto_2

    .line 1242
    :pswitch_2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->sharpnessToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1243
    goto :goto_2

    .line 1239
    :pswitch_3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->saturationToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1240
    goto :goto_2

    .line 1236
    :pswitch_4
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->contrastToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1237
    goto :goto_2

    .line 1233
    :pswitch_5
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->autoExposureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1234
    goto :goto_2

    .line 1230
    :pswitch_6
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1231
    goto :goto_2

    .line 1227
    :pswitch_7
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1228
    goto :goto_2

    .line 1224
    :pswitch_8
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1225
    goto :goto_2

    .line 1217
    :pswitch_9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1218
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    nop

    .line 1251
    move-object p1, v0

    goto :goto_2

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    goto :goto_2

    .line 1212
    :pswitch_a
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1213
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1214
    nop

    .line 1251
    :goto_2
    const-string v0, "settings"

    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f8f075f -> :sswitch_a
        -0x34c80dc1 -> :sswitch_9
        -0x25bfd22b -> :sswitch_8
        -0x1205ef05 -> :sswitch_7
        -0x2057773 -> :sswitch_6
        0x20b91a14 -> :sswitch_5
        0x339531f4 -> :sswitch_4
        0x37d1e4b8 -> :sswitch_3
        0x399aa61b -> :sswitch_2
        0x71b59e6b -> :sswitch_1
        0x7349fa39 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trackSnapInfo(Z)V
    .locals 2

    .line 1194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1195
    const-string v1, "mode"

    if-eqz p0, :cond_0

    const-string p0, "video"

    goto :goto_0

    :cond_0
    const-string p0, "photo"

    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string p0, "capture"

    const-string v1, "snap_camera"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1197
    return-void
.end method

.method public static trackStartAppCost(J)V
    .locals 3

    .line 612
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 613
    const-string v0, "capture"

    const-string v1, "start_app_cost"

    const/16 v2, 0x32

    .line 614
    invoke-static {p0, p1, v2}, Lcom/android/camera/statistic/CameraStatUtil;->round(JI)J

    move-result-wide p0

    .line 613
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 618
    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The time cost when start app is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trackTakePictureCost(JZI)V
    .locals 2

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    const-string v1, "\u524d\u540e\u6444"

    .line 598
    if-eqz p2, :cond_0

    const-string p2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p2, "\u540e\u6444"

    .line 597
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string p2, "\u6a21\u5f0f"

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string p2, "capture"

    const-string p3, "take_picture_cost"

    const/16 v1, 0x32

    .line 601
    invoke-static {p0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtil;->round(JI)J

    move-result-wide p0

    .line 600
    invoke-static {p2, p3, p0, p1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 602
    return-void
.end method

.method public static trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 3

    .line 991
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    return-void

    .line 994
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 995
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 996
    const-string v2, "\u6a21\u5f0f"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v1, "\u79fb\u8f74"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string p0, "counter"

    const-string v1, "tiltshift_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1000
    return-void
.end method

.method public static trackTimerChanged(Ljava/lang/String;)V
    .locals 3

    .line 977
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 981
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 982
    const-string v2, "\u6a21\u5f0f"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v1, "\u524d\u540e\u6444"

    .line 984
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_1
    const-string v2, "\u540e\u6444"

    .line 983
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v1, "\u5012\u8ba1\u65f6"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string p0, "counter"

    const-string v1, "timer_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 988
    return-void
.end method

.method public static trackVideoModeChanged(Ljava/lang/String;)V
    .locals 2

    .line 967
    invoke-static {}, Lcom/android/camera/statistic/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    return-void

    .line 970
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 971
    const-string v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string p0, "counter"

    const-string v1, "video_mode_changed"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 974
    return-void
.end method

.method public static trackVideoRecorded(ZLjava/lang/String;IIIILcom/android/camera/fragment/beauty/BeautyValues;J)V
    .locals 3

    .line 816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 817
    const-string v1, "\u524d\u540e\u6444"

    .line 818
    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    .line 817
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string p0, "\u6a21\u5f0f"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string p0, "\u753b\u8d28"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string p0, "\u95ea\u5149\u706f"

    .line 822
    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 823
    const-string p2, "torch"

    goto :goto_1

    :cond_1
    const-string p2, "off"

    .line 821
    :goto_1
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string p0, "\u5e27\u7387"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    if-eqz p6, :cond_2

    .line 826
    const-string p0, "\u7b49\u7ea7"

    iget-object p2, p6, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    .line 827
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result p2

    .line 826
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    :cond_2
    const-string p0, "\u65f6\u957f"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string p0, "capture"

    const-string p2, "video_taken"

    invoke-static {p0, p2, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 832
    if-lez p5, :cond_3

    const-string p0, "fast"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 833
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 834
    const-string p1, "\u95f4\u9694"

    .line 835
    invoke-static {p5}, Lcom/android/camera/statistic/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p2

    .line 834
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string p1, "capture"

    const-string p2, "video_time_lapse_interval"

    invoke-static {p1, p2, p0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 839
    :cond_3
    return-void
.end method

.method public static trackVideoSnapshot(Z)V
    .locals 2

    .line 794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 795
    const-string v1, "\u524d\u540e\u6444"

    .line 796
    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    .line 795
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string p0, "capture"

    const-string v1, "video_snapshot"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 798
    return-void
.end method

.method public static trackVoiceControl(Landroid/content/Intent;)V
    .locals 3

    .line 1173
    if-nez p0, :cond_0

    .line 1174
    return-void

    .line 1177
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1178
    nop

    .line 1180
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    goto :goto_0

    .line 1181
    :catch_0
    move-exception v2

    .line 1184
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 1185
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraModeId()I

    move-result p0

    .line 1186
    const-string v2, "\u524d\u540e\u6444"

    if-nez v1, :cond_2

    .line 1187
    const-string v1, "\u540e\u6444"

    goto :goto_1

    :cond_2
    const-string v1, "\u524d\u6444"

    .line 1186
    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-string v1, "\u6a21\u5f0f"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string p0, "counter"

    const-string v1, "voice_assist_call_event"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1191
    return-void
.end method

.method public static trackZoomAdjusted(Ljava/lang/String;)V
    .locals 3

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    const-string v1, "\u524d\u540e\u6444"

    .line 563
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const-string v2, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v2, "\u540e\u6444"

    .line 562
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "\u6a21\u5f0f"

    .line 566
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "mode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string p0, "counter"

    const-string v1, "zoom_adjusted"

    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 569
    return-void
.end method

.method private static triggerModeToName(I)Ljava/lang/String;
    .locals 1

    .line 370
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static videoQualityToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 220
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string p0, "4k"

    return-object p0

    .line 222
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string p0, "1080p"

    return-object p0

    .line 224
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const-string p0, "720p"

    return-object p0

    .line 226
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const-string p0, "480p"

    return-object p0

    .line 229
    :cond_3
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected video quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string p0, "others"

    return-object p0
.end method

.method private static zoomRatioToName(F)Ljava/lang/String;
    .locals 5

    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 388
    const-string p0, "1x"

    return-object p0

    .line 389
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v0, p0

    if-nez v0, :cond_1

    .line 390
    const-string p0, "2x"

    return-object p0

    .line 393
    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 394
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1fx"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
