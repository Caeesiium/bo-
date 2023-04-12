import 'package:app/core/app_export.dart';import 'package:app/presentation/booking_name_screen/models/booking_name_model.dart';import 'package:flutter/material.dart';class BookingNameController extends GetxController {TextEditingController statusfilltypedController = TextEditingController();

TextEditingController firstnameController = TextEditingController();

TextEditingController dobController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj = BookingNameModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusfilltypedController.dispose(); firstnameController.dispose(); dobController.dispose(); emailController.dispose(); phoneController.dispose(); } 
 }
