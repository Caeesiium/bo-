import '../controller/booking_cancelled_controller.dart';
import '../models/listrectangle1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle1ItemWidget extends StatelessWidget {
  Listrectangle1ItemWidget(this.listrectangle1ItemModelObj);

  Listrectangle1ItemModel listrectangle1ItemModelObj;

  var controller = Get.find<BookingCancelledController>();

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
                right: 43,
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
                      top: 5,
                      bottom: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            listrectangle1ItemModelObj.royalepresidentTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 13,
                          ),
                          child: Obx(
                            () => Text(
                              listrectangle1ItemModelObj.parisfranceTxt.value,
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
                            top: 10,
                          ),
                          variant: ButtonVariant.FillRedA2001e,
                          shape: ButtonShape.RoundedBorder6,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.UrbanistSemiBold10RedA200,
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
                color: ColorConstant.blueGray70001,
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
              decoration: AppDecoration.txtFillRedA20033.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder12,
              ),
              child: Text(
                "msg_you_canceled_this".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular10RedA200.copyWith(
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
