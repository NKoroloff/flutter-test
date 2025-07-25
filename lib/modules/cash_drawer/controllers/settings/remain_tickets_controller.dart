import 'package:get/get.dart';

class RemainTicketsController extends GetxController {
  final RxString showRemainingTicketsMode = 'always'.obs;

  void handleRemainTickets(String value) {
    showRemainingTicketsMode.value = value;
  }
}
