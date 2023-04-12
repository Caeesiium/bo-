import '../controller/hotel_details_controller.dart';
import '../models/sliderrectanglesix_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderrectanglesixItemWidget extends StatelessWidget {
  SliderrectanglesixItemWidget(this.sliderrectanglesixItemModelObj);

  SliderrectanglesixItemModel sliderrectanglesixItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle6,
        height: getVerticalSize(
          234,
        ),
        width: getHorizontalSize(
          412,
        ),
      ),
    );
  }
}
