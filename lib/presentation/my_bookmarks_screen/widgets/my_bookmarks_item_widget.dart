import '../controller/my_bookmarks_controller.dart';
import '../models/my_bookmarks_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBookmarksItemWidget extends StatelessWidget {
  MyBookmarksItemWidget(this.myBookmarksItemModelObj);

  MyBookmarksItemModel myBookmarksItemModelObj;

  var controller = Get.find<MyBookmarksController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 19,
        top: 20,
        right: 19,
        bottom: 20,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: getVerticalSize(
              120,
            ),
            width: getHorizontalSize(
              140,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              115,
            ),
            margin: getMargin(
              left: 1,
              top: 15,
            ),
            child: Obx(
              () => Text(
                myBookmarksItemModelObj.emeraldadehotelTxt.value,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistBold18WhiteA700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 9,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgStar,
                  height: getSize(
                    12,
                  ),
                  width: getSize(
                    12,
                  ),
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                  ),
                  child: Obx(
                    () => Text(
                      myBookmarksItemModelObj.fortyEightTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Obx(
                    () => Text(
                      myBookmarksItemModelObj.countryTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 9,
            ),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    myBookmarksItemModelObj.priceTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold20Cyan600,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                    top: 10,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_night".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
