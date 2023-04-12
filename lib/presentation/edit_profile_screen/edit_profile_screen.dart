import 'controller/edit_profile_controller.dart';import 'package:app/core/app_export.dart';import 'package:app/core/utils/validation_functions.dart';import 'package:app/widgets/app_bar/appbar_image.dart';import 'package:app/widgets/app_bar/appbar_title.dart';import 'package:app/widgets/app_bar/custom_app_bar.dart';import 'package:app/widgets/custom_button.dart';import 'package:app/widgets/custom_drop_down.dart';import 'package:app/widgets/custom_phone_number.dart';import 'package:app/widgets/custom_text_form_field.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: onTapArrowleft22), title: AppbarTitle(text: "lbl_edit_profile".tr, margin: getMargin(left: 16))), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 47, right: 24, bottom: 47), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(focusNode: FocusNode(), controller: controller.statusfilltypedController, hintText: "lbl_daniel_austin".tr), CustomTextFormField(focusNode: FocusNode(), controller: controller.firstnameController, hintText: "lbl_daniel".tr, margin: getMargin(top: 24)), CustomTextFormField(focusNode: FocusNode(), controller: controller.dobController, hintText: "lbl_12_27_1995".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgCart)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), CustomTextFormField(focusNode: FocusNode(), controller: controller.emailController, hintText: "lbl_uder_domain_com".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgIconlyCurvedMessage)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}), CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 20), child: CustomImageView(svgPath: ImageConstant.imgFavoriteWhiteA700)), hintText: "lbl_united_states".tr, margin: getMargin(top: 24), items: controller.editProfileModelObj.value.dropdownItemList, onChanged: (value) {controller.onSelected(value);}), Padding(padding: getPadding(top: 24), child: Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country country) {controller.selectedCountry.value = country;}))), CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 20), child: CustomImageView(svgPath: ImageConstant.imgFavoriteWhiteA700)), hintText: "lbl_male".tr, margin: getMargin(top: 24, bottom: 5), items: controller.editProfileModelObj.value.dropdownItemList1, onChanged: (value) {controller.onSelected1(value);})]))), bottomNavigationBar: CustomButton(height: getVerticalSize(55), text: "lbl_update".tr, margin: getMargin(left: 24, right: 24, bottom: 48), variant: ButtonVariant.OutlineGreenA7003f))); } 
onTapArrowleft22() { Get.back(); } 
 }
