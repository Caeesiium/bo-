import '../controller/filter_result_controller.dart';
import '../models/listsizemediumtypef3_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listsizemediumtypef3ItemWidget extends StatelessWidget {
  Listsizemediumtypef3ItemWidget(this.listsizemediumtypef3ItemModelObj);

  Listsizemediumtypef3ItemModel listsizemediumtypef3ItemModelObj;

  var controller = Get.find<FilterResultController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            101,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 8,
            right: 20,
            bottom: 8,
          ),
          decoration: AppDecoration.txtFillCyan600.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Obx(
            () => Text(
              listsizemediumtypef3ItemModelObj.sizemediumtypefTxt.value,
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
