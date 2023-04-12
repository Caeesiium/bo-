import '../controller/booking_completed_controller.dart';
import '../models/listrectangle_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrectangleItemWidget extends StatelessWidget {
  ListrectangleItemWidget(this.listrectangleItemModelObj);

  ListrectangleItemModel listrectangleItemModelObj;

  var controller = Get.find<BookingCompletedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          all: 20,
        ),
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 99,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4100x100,
                    height: getSize(
                      100,
                    ),
                    width: getSize(
                      100,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 8,
                      bottom: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            listrectangleItemModelObj.royalepresidentTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Obx(
                            () => Text(
                              listrectangleItemModelObj.countryTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular14.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            72,
                          ),
                          text: "lbl_completed".tr,
                          margin: getMargin(
                            top: 11,
                          ),
                          variant: ButtonVariant.FillGreenA7001e,
                          shape: ButtonShape.RoundedBorder6,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.UrbanistSemiBold10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.blueGray700,
              ),
            ),
            Container(
              width: getHorizontalSize(
                340,
              ),
              margin: getMargin(
                top: 19,
              ),
              padding: getPadding(
                left: 30,
                top: 9,
                right: 37,
                bottom: 9,
              ),
              decoration: AppDecoration.txtFillGreen40033.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder12,
              ),
              child: Text(
                "msg_yeay_you_have_completed".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular10Green500.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
