import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/price_controller.dart';

class SelectSeatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PriceController>(PriceController());
  }
}
