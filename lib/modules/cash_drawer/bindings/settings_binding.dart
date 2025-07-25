import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/admission_option_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/comp_tickets_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/device_name_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/device_settings_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/inventory_management_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/lock_mode_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/remain_tickets_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/sell_settings_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/server_name_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/valid_ticket_sounds_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/wireless_printing_section_controller.dart';
import 'package:purplepass_test_task/modules/translations/app_translation.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TranslationController>(TranslationController());
    Get.put<DeviceNameController>(DeviceNameController());
    Get.put<ServerNameController>(ServerNameController());
    Get.put<WirelessPrintingSectionController>(WirelessPrintingSectionController());
    Get.put<AdmissionOptionsController>(AdmissionOptionsController());
    Get.put<DeviceSettingsController>(DeviceSettingsController());
    Get.put<SellSettingsController>(SellSettingsController());
    Get.put<ValidTicketSoundsController>(ValidTicketSoundsController());
    Get.put<LockModeController>(LockModeController());
    Get.put<InventoryManagementController>(InventoryManagementController());
    Get.put<RemainTicketsController>(RemainTicketsController());
    Get.put<CompTicketsController>(CompTicketsController());
  }
}
