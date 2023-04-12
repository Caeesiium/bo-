import 'controller/notification_settings_controller.dart';import 'package:app/core/app_export.dart';import 'package:app/widgets/app_bar/appbar_image.dart';import 'package:app/widgets/app_bar/appbar_title.dart';import 'package:app/widgets/app_bar/custom_app_bar.dart';import 'package:app/widgets/custom_switch.dart';import 'package:flutter/material.dart';class NotificationSettingsScreen extends GetWidget<NotificationSettingsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: onTapArrowleft21), title: AppbarTitle(text: "lbl_notifications".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 32, right: 24, bottom: 32), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 2), child: Text("msg_general_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChanged: (value) {controller.isSelectedSwitch.value = value;}))]), Padding(padding: getPadding(top: 30), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 2), child: Text("lbl_sound".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChanged: (value) {controller.isSelectedSwitch1.value = value;}))])), Padding(padding: getPadding(top: 30), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 2), child: Text("lbl_vibrate".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch2.value, onChanged: (value) {controller.isSelectedSwitch2.value = value;}))])), Padding(padding: getPadding(top: 31), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2), child: Text("lbl_app_updates".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch3.value, onChanged: (value) {controller.isSelectedSwitch3.value = value;}))])), Padding(padding: getPadding(top: 30), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 2), child: Text("msg_new_service_available".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch4.value, onChanged: (value) {controller.isSelectedSwitch4.value = value;}))])), Padding(padding: getPadding(top: 31, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2), child: Text("msg_new_tips_available".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch5.value, onChanged: (value) {controller.isSelectedSwitch5.value = value;}))]))])))); } 
onTapArrowleft21() { Get.back(); } 
 }
