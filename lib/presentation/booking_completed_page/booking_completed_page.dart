import '../booking_completed_page/widgets/listrectangle_item_widget.dart';
import 'controller/booking_completed_controller.dart';
import 'models/booking_completed_model.dart';
import 'models/listrectangle_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatelessWidget {
  BookingCompletedController controller =
      Get.put(BookingCompletedController(BookingCompletedModel().obs));

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
                    itemCount: controller.bookingCompletedModelObj.value
                        .listrectangleItemList.length,
                    itemBuilder: (context, index) {
                      ListrectangleItemModel model = controller
                          .bookingCompletedModelObj
                          .value
                          .listrectangleItemList[index];
                      return ListrectangleItemWidget(
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
