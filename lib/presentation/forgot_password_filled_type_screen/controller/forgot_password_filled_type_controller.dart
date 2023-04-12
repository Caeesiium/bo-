import 'package:app/core/app_export.dart';import 'package:app/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class ForgotPasswordFilledTypeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordFilledTypeModel> forgotPasswordFilledTypeModelObj = ForgotPasswordFilledTypeModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
