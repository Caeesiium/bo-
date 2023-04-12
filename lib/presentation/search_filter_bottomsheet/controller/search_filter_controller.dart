import 'package:app/core/app_export.dart';import 'package:app/presentation/search_filter_bottomsheet/models/search_filter_model.dart';class SearchFilterController extends GetxController {Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

RxBool checkbox = false.obs;

RxBool checkbox1 = false.obs;

RxBool checkbox2 = false.obs;

RxBool checkbox3 = false.obs;

RxBool checkbox4 = false.obs;

RxBool checkbox5 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
