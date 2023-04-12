import 'package:get/get.dart';import 'liststar1_item_model.dart';import 'listellipseone_item_model.dart';class ReviewModel {RxList<Liststar1ItemModel> liststar1ItemList = RxList.generate(6,(index) => Liststar1ItemModel());

RxList<ListellipseoneItemModel> listellipseoneItemList = RxList.generate(5,(index) => ListellipseoneItemModel());

 }
