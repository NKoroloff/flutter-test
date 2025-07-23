import 'package:get/get.dart';

class ServerNameController extends GetxController {
  final serverName = ''.obs;

  void updateServerName(String value) => serverName.value = value;
}
