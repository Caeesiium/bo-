import '../my_bookmarks_screen/widgets/my_bookmarks_item_widget.dart';import 'controller/my_bookmarks_controller.dart';import 'models/my_bookmarks_item_model.dart';import 'package:app/core/app_export.dart';import 'package:app/widgets/app_bar/appbar_image.dart';import 'package:app/widgets/app_bar/appbar_title.dart';import 'package:app/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class MyBookmarksScreen extends GetWidget<MyBookmarksController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: onTapArrowleft5), title: AppbarTitle(text: "lbl_my_bookmarks".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgMenu, margin: getMargin(left: 24, top: 10, right: 13)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgGrid, margin: getMargin(left: 20, top: 10, right: 37))]), body: Padding(padding: getPadding(left: 24, top: 28, right: 24), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(281), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(24), crossAxisSpacing: getHorizontalSize(24)), physics: NeverScrollableScrollPhysics(), itemCount: controller.myBookmarksModelObj.value.myBookmarksItemList.length, itemBuilder: (context, index) {MyBookmarksItemModel model = controller.myBookmarksModelObj.value.myBookmarksItemList[index]; return MyBookmarksItemWidget(model);}))))); } 
onTapArrowleft5() { Get.back(); } 
 }
