import 'package:get/get.dart';

class DeviceNameController extends GetxController {
  final deviceName = ''.obs;

  void updateDeviceName(String value) => deviceName.value = value;
}
