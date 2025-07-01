import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/cash_drawer_controller.dart';

class CashDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CashDrawerController>(CashDrawerController.new);
  }
}
