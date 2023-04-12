import 'package:app/core/app_export.dart';import 'package:app/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';class AddNewCardController extends GetxController {TextEditingController cardholdernameController = TextEditingController();

TextEditingController cardnumberController = TextEditingController();

TextEditingController expirydateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardholdernameController.dispose(); cardnumberController.dispose(); expirydateController.dispose(); cvvController.dispose(); } 
 }
