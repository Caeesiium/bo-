import '../home_screen_page/widgets/hotels_item_widget.dart';
import '../home_screen_page/widgets/listrectanglefour1_item_widget.dart';
import '../home_screen_page/widgets/options_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/hotels_item_model.dart';
import 'models/listrectanglefour1_item_model.dart';
import 'models/options_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            41,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            svgPath: ImageConstant.imgProfile,
            margin: getMargin(
              left: 24,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_comfort".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgAlarm,
              margin: getMargin(
                left: 24,
                top: 1,
                right: 3,
              ),
            ),
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgBag,
              margin: getMargin(
                left: 20,
                top: 1,
                right: 27,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 34,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_hello_daniel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold32WhiteA700,
                  ),
                  CustomSearchView(
                    focusNode: FocusNode(),
                    controller: controller.searchbarController,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
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
                        68,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 30,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                12,
                              ),
                            );
                          },
                          itemCount: controller
                              .homeScreenModelObj.value.optionsItemList.length,
                          itemBuilder: (context, index) {
                            OptionsItemModel model = controller
                                .homeScreenModelObj
                                .value
                                .optionsItemList[index];
                            return OptionsItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        430,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 30,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                24,
                              ),
                            );
                          },
                          itemCount: controller
                              .homeScreenModelObj.value.hotelsItemList.length,
                          itemBuilder: (context, index) {
                            HotelsItemModel model = controller
                                .homeScreenModelObj.value.hotelsItemList[index];
                            return HotelsItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_recently_booked".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistBold18,
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistBold16Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
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
                        itemCount: controller.homeScreenModelObj.value
                            .listrectanglefour1ItemList.length,
                        itemBuilder: (context, index) {
                          Listrectanglefour1ItemModel model = controller
                              .homeScreenModelObj
                              .value
                              .listrectanglefour1ItemList[index];
                          return Listrectanglefour1ItemWidget(
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
        ),
      ),
    );
  }
}
