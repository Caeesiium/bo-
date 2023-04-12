import 'controller/welcome_controller.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 32,
            top: 45,
            right: 32,
            bottom: 45,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                "lbl_welcome_to".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistBold48,
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  "lbl_comfort".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistBlack64,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  327,
                ),
                margin: getMargin(
                  top: 40,
                  right: 36,
                ),
                child: Text(
                  "msg_the_best_hotel_booking".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold18.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
