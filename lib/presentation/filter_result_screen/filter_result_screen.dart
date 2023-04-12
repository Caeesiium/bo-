import '../filter_result_screen/widgets/listrectanglefour3_item_widget.dart';
import '../filter_result_screen/widgets/listsizemediumtypef3_item_widget.dart';
import 'controller/filter_result_controller.dart';
import 'models/listrectanglefour3_item_model.dart';
import 'models/listsizemediumtypef3_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FilterResultScreen extends GetWidget<FilterResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.searchbarController,
                hintText: "lbl_hotel".tr,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                fontStyle: SearchViewFontStyle.UrbanistSemiBold14,
                prefix: Container(
                  margin: getMargin(
                    left: 20,
                    top: 18,
                    right: 12,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 18,
                    right: 20,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgIconlyLightFilter,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    62,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            12,
                          ),
                        );
                      },
                      itemCount: controller.filterResultModelObj.value
                          .listsizemediumtypef3ItemList.length,
                      itemBuilder: (context, index) {
                        Listsizemediumtypef3ItemModel model = controller
                            .filterResultModelObj
                            .value
                            .listsizemediumtypef3ItemList[index];
                        return Listsizemediumtypef3ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  716,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          right: 24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "msg_recommended_586_379".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistBold18,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgVideocamera,
                                  height: getSize(
                                    28,
                                  ),
                                  width: getSize(
                                    28,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 22,
                              ),
                              child: Obx(
                                () => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        24,
                                      ),
                                    );
                                  },
                                  itemCount: controller.filterResultModelObj
                                      .value.listrectanglefour3ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listrectanglefour3ItemModel model =
                                        controller.filterResultModelObj.value
                                            .listrectanglefour3ItemList[index];
                                    return Listrectanglefour3ItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          90,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: ColorConstant.gray900D8,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                            topRight: Radius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
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
