import 'package:get/get.dart';import 'my_bookmarks_item_model.dart';class MyBookmarksModel {RxList<MyBookmarksItemModel> myBookmarksItemList = RxList.generate(6,(index) => MyBookmarksItemModel());

 }
