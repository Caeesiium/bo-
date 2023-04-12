import 'package:app/core/app_export.dart';import 'package:app/presentation/search_page/models/search_model.dart';import 'package:flutter/material.dart';class SearchController extends GetxController {SearchController(this.searchModelObj);

TextEditingController searchbarController = TextEditingController();

Rx<SearchModel> searchModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchbarController.dispose(); } 
 }
