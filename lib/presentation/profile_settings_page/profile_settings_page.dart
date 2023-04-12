import 'controller/profile_settings_controller.dart';
import 'models/profile_settings_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatelessWidget {
  ProfileSettingsController controller =
      Get.put(ProfileSettingsController(ProfileSettingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            svgPath: ImageConstant.imgProfile,
            margin: getMargin(
              left: 24,
              top: 9,
              bottom: 9,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_profile".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgClock,
              margin: getMargin(
                left: 24,
                top: 11,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 30,
            right: 24,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse120x120,
                height: getSize(
                  120,
                ),
                width: getSize(
                  120,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    60,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "lbl_daniel_austin".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold24,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "lbl_uder_domain_com".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold14WhiteA7001.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 60,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgUserWhiteA700,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_edit_profile".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgClockWhiteA70028x28,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_payment".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgAlarm,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_notifications".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkWhiteA700,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_security".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgInfo,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 4,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_help".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgEye,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_dark_theme".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Obx(
                      () => CustomSwitch(
                        margin: getMargin(
                          top: 2,
                          bottom: 2,
                        ),
                        value: controller.isSelectedSwitch.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgRefresh,
                      height: getSize(
                        28,
                      ),
                      width: getSize(
                        28,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_logout".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18RedA200.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
