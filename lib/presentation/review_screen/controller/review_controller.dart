import 'package:app/core/app_export.dart';import 'package:app/presentation/review_screen/models/review_model.dart';class ReviewController extends GetxController {Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
