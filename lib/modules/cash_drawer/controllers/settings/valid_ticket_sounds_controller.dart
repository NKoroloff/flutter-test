import 'package:get/get.dart';

class ValidTicketSoundsController extends GetxController {
  final sound = '1'.obs;

  void handleValidSound(String newSound) {
    sound.value = newSound;
  }
}
