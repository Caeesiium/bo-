import 'package:app/core/app_export.dart';import 'package:app/presentation/filter_result_screen/models/filter_result_model.dart';import 'package:flutter/material.dart';class FilterResultController extends GetxController {TextEditingController searchbarController = TextEditingController();

Rx<FilterResultModel> filterResultModelObj = FilterResultModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchbarController.dispose(); } 
 }
