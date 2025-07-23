import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/device_name_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/server_name_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/wireless_printing_section_controller.dart';
import 'package:purplepass_test_task/modules/translations/app_translation.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TranslationController>(TranslationController());
    Get.put<DeviceNameController>(DeviceNameController());
    Get.put<ServerNameController>(ServerNameController());
    Get.put<WirelessPrintingSectionController>(WirelessPrintingSectionController());
  }
}
