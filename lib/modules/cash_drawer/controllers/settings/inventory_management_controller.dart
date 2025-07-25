import 'package:get/get.dart';

class InventoryManagementController extends GetxController {
  final RxBool isEnabledOverSell = false.obs;

  void toggleOverSell(value) {
    isEnabledOverSell.value = value;
  }
}
