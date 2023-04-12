import '../search_filter_bottomsheet/widgets/listcountry_item_widget.dart';
import '../search_filter_bottomsheet/widgets/listsizemediumtypef_item_widget.dart';
import '../search_filter_bottomsheet/widgets/liststar_item_widget.dart';
import 'controller/search_filter_controller.dart';
import 'models/listcountry_item_model.dart';
import 'models/listsizemediumtypef_item_model.dart';
import 'models/liststar_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:app/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchFilterBottomsheet extends StatelessWidget {
  SearchFilterBottomsheet(this.controller);

  SearchFilterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineGray800.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrameGray700,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "lbl_filter_hotel".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 49,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_country".tr,
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
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    56,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 24,
                        top: 18,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            12,
                          ),
                        );
                      },
                      itemCount: controller.searchFilterModelObj.value
                          .listcountryItemList.length,
                      itemBuilder: (context, index) {
                        ListcountryItemModel model = controller
                            .searchFilterModelObj
                            .value
                            .listcountryItemList[index];
                        return ListcountryItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 23,
                  ),
                  child: Text(
                    "lbl_sort_results".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold18,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    58,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            12,
                          ),
                        );
                      },
                      itemCount: controller.searchFilterModelObj.value
                          .listsizemediumtypefItemList.length,
                      itemBuilder: (context, index) {
                        ListsizemediumtypefItemModel model = controller
                            .searchFilterModelObj
                            .value
                            .listsizemediumtypefItemList[index];
                        return ListsizemediumtypefItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 25,
                  ),
                  child: Text(
                    "msg_price_range_per".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold18,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 78,
                    top: 18,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getVerticalSize(
                          24,
                        ),
                        width: getHorizontalSize(
                          36,
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMail,
                              height: getVerticalSize(
                                24,
                              ),
                              width: getHorizontalSize(
                                36,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_18".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSourceSansProSemiBold14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          24,
                        ),
                        width: getHorizontalSize(
                          36,
                        ),
                        margin: getMargin(
                          left: 83,
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMail,
                              height: getVerticalSize(
                                24,
                              ),
                              width: getHorizontalSize(
                                36,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_50".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSourceSansProSemiBold14,
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
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 2,
                  right: 24,
                ),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: ColorConstant.cyan60001,
                    inactiveTrackColor: ColorConstant.gray700,
                    thumbColor: ColorConstant.gray800,
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: RangeSlider(
                    values: RangeValues(
                      0,
                      0,
                    ),
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 25,
                  ),
                  child: Text(
                    "lbl_star_rating".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold18,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    56,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 24,
                        top: 18,
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
                          .searchFilterModelObj.value.liststarItemList.length,
                      itemBuilder: (context, index) {
                        ListstarItemModel model = controller
                            .searchFilterModelObj.value.liststarItemList[index];
                        return ListstarItemWidget(
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
                  top: 23,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_facilities".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold18,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 20,
                    right: 99,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_wifi".tr,
                          value: controller.checkbox.value,
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox.value = value;
                          },
                        ),
                      ),
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_swimming_pool".tr,
                          value: controller.checkbox1.value,
                          margin: getMargin(
                            left: 12,
                          ),
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox1.value = value;
                          },
                        ),
                      ),
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_parking".tr,
                          iconSize: getHorizontalSize(
                            24,
                          ),
                          value: controller.checkbox2.value,
                          margin: getMargin(
                            left: 12,
                          ),
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox2.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 25,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_accommodation_type".tr,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 18,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_hotels".tr,
                          value: controller.checkbox3.value,
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox3.value = value;
                          },
                        ),
                      ),
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_resorts".tr,
                          iconSize: getHorizontalSize(
                            24,
                          ),
                          value: controller.checkbox4.value,
                          margin: getMargin(
                            left: 12,
                          ),
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox4.value = value;
                          },
                        ),
                      ),
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_villas".tr,
                          value: controller.checkbox5.value,
                          margin: getMargin(
                            left: 12,
                          ),
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14,
                          onChange: (value) {
                            controller.checkbox5.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 48,
                  right: 24,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        58,
                      ),
                      width: getHorizontalSize(
                        184,
                      ),
                      text: "lbl_reset".tr,
                      variant: ButtonVariant.FillGray800,
                      padding: ButtonPadding.PaddingAll15,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        58,
                      ),
                      width: getHorizontalSize(
                        184,
                      ),
                      text: "lbl_apply_filter".tr,
                      margin: getMargin(
                        left: 12,
                      ),
                      variant: ButtonVariant.OutlineGreenA7003f,
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
