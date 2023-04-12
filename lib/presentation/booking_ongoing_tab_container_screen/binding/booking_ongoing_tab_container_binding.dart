import '../controller/booking_ongoing_tab_container_controller.dart';
import 'package:get/get.dart';

class BookingOngoingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingOngoingTabContainerController());
  }
}
