import 'controller/onboarding_one_controller.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
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
                imagePath: ImageConstant.imgRectangle1,
                height: getVerticalSize(
                  420,
                ),
                width: getHorizontalSize(
                  428,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  307,
                ),
                margin: getMargin(
                  left: 60,
                  top: 44,
                  right: 60,
                ),
                child: Text(
                  "msg_travel_safely_comfortably".tr,
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
                  top: 11,
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
                  top: 32,
                  right: 24,
                  bottom: 47,
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
