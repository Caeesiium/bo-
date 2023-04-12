import '../controller/booking_ongoing_controller.dart';
import '../models/listrectangle2_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2ItemWidget extends StatelessWidget {
  Listrectangle2ItemWidget(this.listrectangle2ItemModelObj);

  Listrectangle2ItemModel listrectangle2ItemModelObj;

  var controller = Get.find<BookingOngoingController>();

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
                right: 25,
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
                            listrectangle2ItemModelObj
                                .royalepresidentOneTxt.value,
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
                              listrectangle2ItemModelObj.countryTxt.value,
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
                            60,
                          ),
                          text: "lbl_paid".tr,
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
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      height: getVerticalSize(
                        38,
                      ),
                      text: "lbl_cancel_booking".tr,
                      margin: getMargin(
                        right: 6,
                      ),
                      variant: ButtonVariant.OutlineCyan600,
                      shape: ButtonShape.CircleBorder19,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold16Cyan600,
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      height: getVerticalSize(
                        38,
                      ),
                      text: "lbl_view_ticket".tr,
                      margin: getMargin(
                        left: 6,
                      ),
                      shape: ButtonShape.CircleBorder19,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
