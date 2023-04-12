import 'package:app/core/app_export.dart';import 'package:app/presentation/my_bookmarks_screen/models/my_bookmarks_model.dart';class MyBookmarksController extends GetxController {Rx<MyBookmarksModel> myBookmarksModelObj = MyBookmarksModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
