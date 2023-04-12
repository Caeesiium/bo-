import 'package:app/core/app_export.dart';
import 'package:app/presentation/booking_ongoing_tab_container_screen/models/booking_ongoing_tab_container_model.dart';
import 'package:flutter/material.dart';

class BookingOngoingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BookingOngoingTabContainerModel> bookingOngoingTabContainerModelObj =
      BookingOngoingTabContainerModel().obs;

  late TabController group137Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
