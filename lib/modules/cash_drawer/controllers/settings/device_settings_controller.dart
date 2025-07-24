import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/device_settings_model.dart';

class DeviceSettingsController extends GetxController {
  var deviceSettingsModel = DeviceSettingsModel.initial().obs;

  void handleDeviceSettingsToggle(String field, bool newValue) {
    deviceSettingsModel.update((option) {
      if (option == null) {
        return;
      }
      switch (field) {
        case 'checkUnknownSerials':
          option.checkUnknownSerials = newValue;
          break;
        case 'continuousScan':
          option.continuousScan = newValue;
          break;
        case 'enableGear':
          option.enableGear = newValue;
          break;
      }
    });
  }
}
