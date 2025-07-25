import 'package:get/get.dart';

class LockModeController extends GetxController {
  final RxBool isEnabledSearch = false.obs;

  void toggleEnableSearch(value) {
    isEnabledSearch.value = value;
  }
}
