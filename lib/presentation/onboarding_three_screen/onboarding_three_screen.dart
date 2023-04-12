import 'controller/onboarding_three_controller.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1420x428,
                height: getVerticalSize(
                  420,
                ),
                width: getHorizontalSize(
                  428,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  338,
                ),
                margin: getMargin(
                  left: 44,
                  top: 45,
                  right: 44,
                ),
                child: Text(
                  "msg_let_s_discover_the".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtUrbanistBold32,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  363,
                ),
                margin: getMargin(
                  left: 31,
                  top: 18,
                  right: 32,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtUrbanistRegular16Gray400.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: getVerticalSize(
                  8,
                ),
                child: SmoothIndicator(
                  offset: 0,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: ColorConstant.cyan60001,
                    dotColor: ColorConstant.gray800,
                    dotHeight: getVerticalSize(
                      8,
                    ),
                    dotWidth: getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 30,
                  right: 24,
                  bottom: 48,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        55,
                      ),
                      width: getHorizontalSize(
                        180,
                      ),
                      text: "lbl_skip".tr,
                      variant: ButtonVariant.FillGray800,
                      padding: ButtonPadding.PaddingAll15,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        54,
                      ),
                      width: getHorizontalSize(
                        180,
                      ),
                      text: "lbl_next".tr,
                      margin: getMargin(
                        left: 20,
                        bottom: 1,
                      ),
                      padding: ButtonPadding.PaddingAll15,
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
