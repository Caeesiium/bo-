import '../controller/home_screen_controller.dart';
import '../models/hotels_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HotelsItemWidget extends StatelessWidget {
  HotelsItemWidget(this.hotelsItemModelObj);

  HotelsItemModel hotelsItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            400,
          ),
          width: getHorizontalSize(
            300,
          ),
          margin: getMargin(
            right: 24,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3,
                height: getVerticalSize(
                  400,
                ),
                width: getHorizontalSize(
                  300,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    36,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        71,
                      ),
                      text: "lbl_4_8".tr,
                      margin: getMargin(
                        right: 23,
                      ),
                      shape: ButtonShape.RoundedBorder16,
                      padding: ButtonPadding.PaddingT7,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                      prefixWidget: Container(
                        margin: getMargin(
                          right: 8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarWhiteA700,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 172,
                      ),
                      padding: getPadding(
                        left: 32,
                        top: 23,
                        right: 32,
                        bottom: 23,
                      ),
                      decoration:
                          AppDecoration.gradientGray80000Gray90096.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL36,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Text(
                              "msg_emeralda_de_hotel".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistBold24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "lbl_paris_france".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular16.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_29".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistBold24,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 9,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_per_night".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRegular14WhiteA700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBookmarkWhiteA700,
                                  height: getSize(
                                    28,
                                  ),
                                  width: getSize(
                                    28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
