import 'package:get/get.dart';import 'listcountry_item_model.dart';import 'listsizemediumtypef_item_model.dart';import 'liststar_item_model.dart';class SearchFilterModel {RxList<ListcountryItemModel> listcountryItemList = RxList.generate(4,(index) => ListcountryItemModel());

RxList<ListsizemediumtypefItemModel> listsizemediumtypefItemList = RxList.generate(4,(index) => ListsizemediumtypefItemModel());

RxList<ListstarItemModel> liststarItemList = RxList.generate(5,(index) => ListstarItemModel());

 }
