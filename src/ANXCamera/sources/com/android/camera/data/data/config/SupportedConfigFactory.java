package com.android.camera.data.data.config;

import com.android.camera.CameraAppImpl;
import com.android.camera.CameraSettings;
import com.android.camera.Util;
import com.android.camera.data.DataRepository;
import com.android.camera.data.cloud.DataCloud.CloudFeature;
import com.android.camera2.CameraCapabilities;
import com.mi.config.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public class SupportedConfigFactory {
    public static final int AI_DETECT = 242;
    public static final int AI_SCENE = 201;
    public static final int BACKLIGHT = 249;
    public static final int BEAUTY = 239;
    public static final String CLOSE_BY_AI = "e";
    public static final String CLOSE_BY_BURST_SHOOT = "d";
    public static final String CLOSE_BY_GROUP = "b";
    public static final String CLOSE_BY_HDR = "g";
    public static final String CLOSE_BY_HHT = "a";
    public static final String CLOSE_BY_SUPER_RESOLUTION = "c";
    public static final String CLOSE_BY_VIDEO = "h";
    public static final int DUAL_WATER_MARK = 240;
    public static final int FAST = 233;
    public static final int FILTER = 196;
    public static final int FLASH = 193;
    public static final int FOCUS_PEAK = 199;
    public static final int GENDER_AGE = 238;
    public static final int GRADIENTER = 229;
    public static final int GROUP = 235;
    public static final int HDR = 194;
    public static final int HFR = 202;
    public static final int HHT = 230;
    public static final int INVALID = 198;
    public static final int LIGHTING = 203;
    public static final int LIVE_MUSIC_SELECT = 245;
    public static final int LIVE_SHOT = 206;
    public static final int MAGIC_FOCUS = 231;
    public static final int MAGIC_MIRROR = 236;
    public static final int MENU_ULTRA_PIXEL_PHOTOGRAPHY = 250;
    public static final int MOON = 246;
    public static final int MORE = 197;
    public static final int[] MUTEX_MENU_CONFIGS = new int[]{229, 236, 235, 228, 230, 241, 234, 195, 238, 199, 203, 206};
    public static final int NEW_SLOW_MOTION = 204;
    public static final int NIGHT = 247;
    public static final int PORTRAIT = 195;
    public static final int RAW = 237;
    public static final int SCENE = 234;
    public static final int SETTING = 225;
    public static final int SILHOUETTE = 248;
    public static final int SLOW = 232;
    public static final int SUPER_RESOLUTION = 241;
    public static final int TILT = 228;
    public static final int TIMER = 226;
    public static final int ULTRA_PIXEL_PHOTOGRAPHY = 209;
    public static final int ULTRA_WIDE = 205;
    public static final int ULTRA_WIDE_BOKEH = 207;
    public static final int USER_DEFINE_WATER_MARK = 244;
    public static final int VIDEO_BOKEH = 243;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CloseElementTrigger {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConfigItem {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MutexElement {
    }

    public static boolean isMutexConfig(int i) {
        for (int i2 : MUTEX_MENU_CONFIGS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static String getConfigKey(int i) {
        if (i == 195) {
            return "pref_camera_portrait_mode_key";
        }
        if (i == 199) {
            return "pref_camera_peak_key";
        }
        if (i == 201) {
            return "pref_camera_ai_scene_mode_key";
        }
        if (i == 206) {
            return "pref_live_shot_enabled";
        }
        if (i == 238) {
            return "pref_camera_show_gender_age_key";
        }
        if (i == 241) {
            return "pref_camera_super_resolution_key";
        }
        if (i == 250) {
            return "pref_menu_ultra_pixel_photography_48mp";
        }
        switch (i) {
            case 228:
                return "pref_camera_tilt_shift_mode";
            case 229:
                return "pref_camera_gradienter_key";
            case 230:
                return "pref_camera_hand_night_key";
            default:
                switch (i) {
                    case 234:
                        return "pref_camera_scenemode_setting_key";
                    case 235:
                        return "pref_camera_groupshot_mode_key";
                    case 236:
                        return "pref_camera_magic_mirror_key";
                    default:
                        throw new RuntimeException("unknown config item");
                }
        }
    }

    public static final SupportedConfigs getSupportedTopConfigs(int i, DataItemConfig dataItemConfig, int i2, CameraCapabilities cameraCapabilities, boolean z) {
        dataItemConfig.reInitComponent(i, cameraCapabilities);
        List arrayList = new ArrayList();
        if (dataItemConfig.supportFlash()) {
            if (CameraSettings.isUltraWideConfigOpen(i)) {
                TopConfigItem createConfigItem = createConfigItem(193);
                createConfigItem.enable = false;
                arrayList.add(createConfigItem);
            } else {
                arrayList.add(createConfigItem(193));
            }
        }
        boolean fA = DataRepository.dataItemFeature().fA();
        switch (i) {
            case 161:
                if (z && i2 != 0 && DataRepository.dataItemFeature().fc()) {
                    arrayList.add(createConfigItem(243));
                }
                if (i2 == 1) {
                    arrayList.add(createConfigItem(196, 17));
                } else {
                    arrayList.add(createConfigItem(196));
                }
                if (i2 != 0 || !cameraCapabilities.isSupportVideoBeauty()) {
                    arrayList.add(createConfigItem(225));
                    break;
                }
                arrayList.add(createConfigItem(197));
                break;
                break;
            case 162:
            case 168:
            case 169:
            case 170:
                if (i2 == 0) {
                    if (!z) {
                        arrayList.add(createConfigItem(225));
                        break;
                    }
                    if (dataItemConfig.supportHdr()) {
                        arrayList.add(createConfigItem(194));
                    }
                    if (!DataRepository.dataItemFeature().fr() && b.gh() && b.hz()) {
                        arrayList.add(createConfigItem(202));
                    }
                    arrayList.add(createConfigItem(197));
                    break;
                }
                if (z && i == 162 && DataRepository.dataItemFeature().fc()) {
                    arrayList.add(createConfigItem(243));
                }
                arrayList.add(createConfigItem(225));
                break;
            case 165:
                if (dataItemConfig.supportHdr()) {
                    arrayList.add(createConfigItem(194));
                }
                if ((b.gq() && i2 == 0) || (DataRepository.dataItemFeature().fa() && i2 == 1)) {
                    arrayList.add(createConfigItem(201));
                }
                arrayList.add(createConfigItem(196));
                arrayList.add(createConfigItem(197));
                break;
            case 166:
                arrayList.clear();
                arrayList.add(createConfigItem(225));
                break;
            case 167:
                ComponentManuallyFocus manuallyFocus = dataItemConfig.getManuallyFocus();
                if (b.gF() && !manuallyFocus.getComponentValue(i).equals(manuallyFocus.getDefaultValue(i))) {
                    arrayList.add(createConfigItem(199));
                }
                if (CameraSettings.isSupportedUltraPixelPhotography(cameraCapabilities) && z) {
                    arrayList.add(createConfigItem(209));
                }
                arrayList.add(createConfigItem(196));
                arrayList.add(createConfigItem(197));
                break;
            case 171:
                if (!Util.UI_DEBUG() && z && cameraCapabilities.isSupportPortraitLighting()) {
                    if (i2 == 0) {
                        if (DataRepository.dataItemFeature().eY()) {
                            arrayList.add(createConfigItem(203));
                        }
                    } else if (i2 == 1 && DataRepository.dataItemFeature().eZ()) {
                        arrayList.add(createConfigItem(203));
                    }
                }
                if (DataRepository.dataItemFeature().fw() && i2 == 0) {
                    arrayList.add(createConfigItem(207));
                }
                if (DataRepository.dataItemFeature().fb() && (i2 == 0 || (DataRepository.dataItemFeature().fa() && i2 == 1))) {
                    arrayList.add(createConfigItem(201));
                }
                arrayList.add(createConfigItem(196, 17));
                arrayList.add(createConfigItem(197));
                break;
            case 172:
                arrayList.add(createConfigItem(204));
                arrayList.add(createConfigItem(225));
                break;
            case 173:
                arrayList.add(createConfigItem(225));
                break;
            case 174:
                if (z && i2 != 0 && DataRepository.dataItemFeature().fc()) {
                    arrayList.add(createConfigItem(243));
                }
                arrayList.add(createConfigItem(245));
                arrayList.add(createConfigItem(225));
                break;
            default:
                if (dataItemConfig.supportHdr()) {
                    arrayList.add(createConfigItem(194));
                }
                if ((b.gq() && i2 == 0) || (DataRepository.dataItemFeature().fa() && i2 == 1)) {
                    arrayList.add(createConfigItem(201));
                }
                if (fA && z) {
                    arrayList.add(createConfigItem(206));
                }
                if (!(CameraSettings.isSupportedUltraPixelPhotography(cameraCapabilities) && CameraSettings.isMeunUltraPixelPhotographyOn())) {
                    arrayList.add(createConfigItem(196));
                }
                arrayList.add(createConfigItem(197));
                break;
        }
        TopViewPositionArray.fillNotUseViewPosition(arrayList);
        SupportedConfigs supportedConfigs = new SupportedConfigs();
        supportedConfigs.add(arrayList);
        return supportedConfigs;
    }

    private static TopConfigItem createConfigItem(int i, int i2) {
        return new TopConfigItem(i, i2);
    }

    private static TopConfigItem createConfigItem(int i) {
        return new TopConfigItem(i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:72:0x0100  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final SupportedConfigs getSupportedExtraConfigs(int i, int i2, CloudFeature cloudFeature, CameraCapabilities cameraCapabilities, boolean z) {
        SupportedConfigs supportedConfigs = new SupportedConfigs();
        if (i != 174) {
            switch (i) {
                case 161:
                    break;
                case 162:
                    if (i2 == 0) {
                    }
                    break;
                default:
                    switch (i) {
                        case 167:
                            supportedConfigs.add(225).add(226);
                            break;
                        case 168:
                        case 169:
                        case 170:
                            break;
                        case 171:
                            supportedConfigs.add(225).add(226);
                            if (i2 != 1 || !b.he()) {
                                if (i2 == 0 && !Util.UI_DEBUG() && CameraSettings.isCameraPortraitWithFaceBeauty() && b.fP()) {
                                    supportedConfigs.add(239);
                                    break;
                                }
                            }
                            if (b.fQ() && b.fP()) {
                                supportedConfigs.add(238);
                            }
                            if (b.gV()) {
                                supportedConfigs.add(236);
                                break;
                            }
                            break;
                        default:
                            supportedConfigs.add(225).add(226);
                            switch (i2) {
                                case 0:
                                    if (b.gQ()) {
                                        supportedConfigs.add(228);
                                    }
                                    if (b.gJ()) {
                                        supportedConfigs.add(229);
                                    }
                                    if (b.gp()) {
                                        supportedConfigs.add(234);
                                    }
                                    if (i != 165 && z && b.hj()) {
                                        supportedConfigs.add(235);
                                    }
                                    if (!Util.UI_DEBUG() && ((i == 165 || i == 163) && b.fP())) {
                                        supportedConfigs.add(239);
                                    }
                                    if (z && CameraSettings.checkLensAvailability(CameraAppImpl.getAndroidContext())) {
                                        supportedConfigs.add(242);
                                    }
                                    if (CameraSettings.isSupportedUltraPixelPhotography(cameraCapabilities) && z) {
                                        supportedConfigs.add(250);
                                        break;
                                    }
                                case 1:
                                    if (b.hj() && i != 165) {
                                        supportedConfigs.add(235);
                                    }
                                    if (i == 165 || i == 163) {
                                        if (b.fQ() && b.fP()) {
                                            supportedConfigs.add(238);
                                        }
                                        if (b.gV()) {
                                            supportedConfigs.add(236);
                                            break;
                                        }
                                    }
                                    break;
                            }
                            break;
                    }
                    if (i2 == 0) {
                        supportedConfigs.add(225).add(233);
                        if (b.gh() && !DataRepository.dataItemFeature().fr()) {
                            supportedConfigs.add(232);
                        }
                        if (!Util.UI_DEBUG() && cameraCapabilities.isSupportVideoBeauty()) {
                            supportedConfigs.add(239);
                            break;
                        }
                    }
                    break;
            }
        }
        if (i2 == 0 && cameraCapabilities.isSupportVideoBeauty()) {
            supportedConfigs.add(225);
            if (!Util.UI_DEBUG()) {
                supportedConfigs.add(239);
            }
        }
        return cloudFeature.filterFeature(supportedConfigs);
    }

    public static int findViewPosition(int i) {
        return TopViewPositionArray.getCurrentUseViewPositionFromConfig(i);
    }
}
