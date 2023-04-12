import 'package:app/core/app_export.dart';import 'package:app/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';class SelectDateGuestController extends GetxController {TextEditingController checkinOneController = TextEditingController();

TextEditingController checkoutOneController = TextEditingController();

Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); checkinOneController.dispose(); checkoutOneController.dispose(); } 
 }
