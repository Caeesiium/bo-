import 'package:get/get.dart';import 'sliderrectanglesix_item_model.dart';import 'hotel_details_item_model.dart';import 'package:app/data/models/selectionPopupModel/selection_popup_model.dart';class HotelDetailsModel {RxList<SliderrectanglesixItemModel> sliderrectanglesixItemList = RxList.generate(1,(index) => SliderrectanglesixItemModel());

RxList<HotelDetailsItemModel> hotelDetailsItemList = RxList.generate(3,(index) => HotelDetailsItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)].obs;

 }
