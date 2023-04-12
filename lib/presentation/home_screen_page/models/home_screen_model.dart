import 'package:get/get.dart';import 'options_item_model.dart';import 'hotels_item_model.dart';import 'listrectanglefour1_item_model.dart';class HomeScreenModel {RxList<OptionsItemModel> optionsItemList = RxList.generate(4,(index) => OptionsItemModel());

RxList<HotelsItemModel> hotelsItemList = RxList.generate(2,(index) => HotelsItemModel());

RxList<Listrectanglefour1ItemModel> listrectanglefour1ItemList = RxList.generate(5,(index) => Listrectanglefour1ItemModel());

 }
