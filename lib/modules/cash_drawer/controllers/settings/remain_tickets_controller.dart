import 'package:get/get.dart';

enum RemainingTicketsMode { always, lessThan25 }

class RemainTicketsController extends GetxController {
  final Rx<RemainingTicketsMode> showRemainingTicketsMode = RemainingTicketsMode.always.obs;

  void handleRemainTickets(RemainingTicketsMode value) {
    showRemainingTicketsMode.value = value;
  }
}
