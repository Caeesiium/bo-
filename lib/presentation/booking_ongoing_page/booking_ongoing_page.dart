import '../booking_ongoing_page/widgets/listrectangle2_item_widget.dart';
import 'controller/booking_ongoing_controller.dart';
import 'models/booking_ongoing_model.dart';
import 'models/listrectangle2_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookingOngoingPage extends StatelessWidget {
  BookingOngoingController controller =
      Get.put(BookingOngoingController(BookingOngoingModel().obs));

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
                    itemCount: controller.bookingOngoingModelObj.value
                        .listrectangle2ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectangle2ItemModel model = controller
                          .bookingOngoingModelObj
                          .value
                          .listrectangle2ItemList[index];
                      return Listrectangle2ItemWidget(
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
