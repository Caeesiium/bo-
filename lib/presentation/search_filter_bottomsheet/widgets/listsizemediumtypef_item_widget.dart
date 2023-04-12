import '../controller/search_filter_controller.dart';
import '../models/listsizemediumtypef_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsizemediumtypefItemWidget extends StatelessWidget {
  ListsizemediumtypefItemWidget(this.listsizemediumtypefItemModelObj);

  ListsizemediumtypefItemModel listsizemediumtypefItemModelObj;

  var controller = Get.find<SearchFilterController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            173,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 7,
            right: 20,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillCyan600.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Obx(
            () => Text(
              listsizemediumtypefItemModelObj.sizemediumtypefTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
