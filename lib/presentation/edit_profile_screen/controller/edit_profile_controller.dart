import 'package:app/core/app_export.dart';import 'package:app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController statusfilltypedController = TextEditingController();

TextEditingController firstnameController = TextEditingController();

TextEditingController dobController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusfilltypedController.dispose(); firstnameController.dispose(); dobController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; editProfileModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); editProfileModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; editProfileModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); editProfileModelObj.value.dropdownItemList1.refresh(); } 
 }
