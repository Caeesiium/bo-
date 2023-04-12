import '../controller/forgot_password_filled_type_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordFilledTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordFilledTypeController());
  }
}
