import 'package:app/core/app_export.dart';import 'package:app/presentation/search_type_screen/models/search_type_model.dart';import 'package:flutter/material.dart';class SearchTypeController extends GetxController {TextEditingController searchbarController = TextEditingController();

Rx<SearchTypeModel> searchTypeModelObj = SearchTypeModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchbarController.dispose(); } 
 }
