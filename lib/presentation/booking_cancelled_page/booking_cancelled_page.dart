import '../booking_cancelled_page/widgets/listrectangle1_item_widget.dart';
import 'controller/booking_cancelled_controller.dart';
import 'models/booking_cancelled_model.dart';
import 'models/listrectangle1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookingCancelledPage extends StatelessWidget {
  BookingCancelledController controller =
      Get.put(BookingCancelledController(BookingCancelledModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 30,
                  right: 24,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      );
                    },
                    itemCount: controller.bookingCancelledModelObj.value
                        .listrectangle1ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectangle1ItemModel model = controller
                          .bookingCancelledModelObj
                          .value
                          .listrectangle1ItemList[index];
                      return Listrectangle1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
