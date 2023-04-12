import 'package:app/core/app_export.dart';import 'package:app/presentation/home_screen_page/models/home_screen_model.dart';import 'package:flutter/material.dart';class HomeScreenController extends GetxController {HomeScreenController(this.homeScreenModelObj);

TextEditingController searchbarController = TextEditingController();

Rx<HomeScreenModel> homeScreenModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchbarController.dispose(); } 
 }
