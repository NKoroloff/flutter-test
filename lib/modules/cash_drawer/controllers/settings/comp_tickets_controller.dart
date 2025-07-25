import 'package:get/get.dart';

class CompTicketsController extends GetxController {
  final RxString compDeductionMode = 'always'.obs;
  final RxString compDefaultChoise = 'deduct'.obs;

  void handleCompDeductionMode(String value) {
    compDeductionMode.value = value;
  }

  void handleCompDefaultChoise(String value) {
    compDefaultChoise.value = value;
  }
}
