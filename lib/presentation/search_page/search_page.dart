import '../search_page/widgets/listrectanglefour2_item_widget.dart';
import '../search_page/widgets/listsizemediumtypef2_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/listrectanglefour2_item_model.dart';
import 'models/listsizemediumtypef2_item_model.dart';
import 'models/search_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    focusNode: FocusNode(),
                    controller: controller.searchbarController,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
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
                        top: 20,
                        right: 21,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.cyan600,
                        border: Border.all(
                          color: ColorConstant.black900,
                          width: getHorizontalSize(
                            1,
                          ),
                          strokeAlign: strokeAlignCenter,
                        ),
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgMenuCyan600,
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
                          itemCount: controller.searchModelObj.value
                              .listsizemediumtypef2ItemList.length,
                          itemBuilder: (context, index) {
                            Listsizemediumtypef2ItemModel model = controller
                                .searchModelObj
                                .value
                                .listsizemediumtypef2ItemList[index];
                            return Listsizemediumtypef2ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: Row(
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
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 22,
                      right: 24,
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
                        itemCount: controller.searchModelObj.value
                            .listrectanglefour2ItemList.length,
                        itemBuilder: (context, index) {
                          Listrectanglefour2ItemModel model = controller
                              .searchModelObj
                              .value
                              .listrectanglefour2ItemList[index];
                          return Listrectanglefour2ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
