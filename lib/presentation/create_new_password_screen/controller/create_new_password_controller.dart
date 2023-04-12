import 'package:app/core/app_export.dart';import 'package:app/presentation/create_new_password_screen/models/create_new_password_model.dart';import 'package:flutter/material.dart';class CreateNewPasswordController extends GetxController {TextEditingController confirmpasswordinputController = TextEditingController();

TextEditingController confirmpasswordinputOneController = TextEditingController();

Rx<CreateNewPasswordModel> createNewPasswordModelObj = CreateNewPasswordModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); confirmpasswordinputController.dispose(); confirmpasswordinputOneController.dispose(); } 
 }
