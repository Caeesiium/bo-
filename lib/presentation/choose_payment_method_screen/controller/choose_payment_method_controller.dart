import 'package:app/core/app_export.dart';import 'package:app/presentation/choose_payment_method_screen/models/choose_payment_method_model.dart';class ChoosePaymentMethodController extends GetxController {Rx<ChoosePaymentMethodModel> choosePaymentMethodModelObj = ChoosePaymentMethodModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
