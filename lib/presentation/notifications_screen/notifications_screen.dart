import '../notifications_screen/widgets/sectionlisttoday_item_widget.dart';import 'controller/notifications_controller.dart';import 'models/sectionlisttoday_item_model.dart';import 'package:app/core/app_export.dart';import 'package:app/widgets/app_bar/appbar_image.dart';import 'package:app/widgets/app_bar/appbar_title.dart';import 'package:app/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';class NotificationsScreen extends GetWidget<NotificationsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(50), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 11), onTap: onTapArrowleft6), title: AppbarTitle(text: "lbl_notifications".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock, margin: getMargin(left: 24, top: 11, right: 24, bottom: 11))]), body: Padding(padding: getPadding(top: 31, bottom: 5), child: Obx(() => GroupedListView<SectionlisttodayItemModel, String>(shrinkWrap: true, useStickyGroupSeparators: true, stickyHeaderBackgroundColor: Colors.transparent, elements: controller.notificationsModelObj.value.sectionlisttodayItemList, groupBy: (element) => element.groupBy!.value, groupSeparatorBuilder: (String value) {return Padding(padding: getPadding(right: 328), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text(value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18.copyWith(color: ColorConstant.whiteA700))]));}, itemBuilder: (context, model) {return SectionlisttodayItemWidget(model);}))))); } 
onTapArrowleft6() { Get.back(); } 
 }
