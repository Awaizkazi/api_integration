import 'package:api_integration/controllers/controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(
      Controller(),
    );
  }
}
