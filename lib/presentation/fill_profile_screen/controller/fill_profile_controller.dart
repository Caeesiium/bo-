import 'package:app/core/app_export.dart';import 'package:app/presentation/fill_profile_screen/models/fill_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';class FillProfileController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController nicknameController = TextEditingController();

TextEditingController dateofbirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<FillProfileModel> fillProfileModelObj = FillProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullnameController.dispose(); nicknameController.dispose(); dateofbirthController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; fillProfileModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); fillProfileModelObj.value.dropdownItemList.refresh(); } 
 }
