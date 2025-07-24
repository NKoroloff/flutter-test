import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/device_settings_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';

class DeviceSettingsSection extends StatelessWidget {
  const DeviceSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DeviceSettingsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'device_settings'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Authorize.net EMV'),
                  const Spacer(),
                  InkWell(onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(width: 20),
                ],
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  label: 'check_unknown_serials',
                  onChanged: (newValue) =>
                      controller.handleDeviceSettingsToggle('checkUnknownSerials', newValue),
                  value: controller.deviceSettingsModel.value.checkUnknownSerials,
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  onChanged: (newValue) =>
                      controller.handleDeviceSettingsToggle('enableGear', newValue),
                  value: controller.deviceSettingsModel.value.enableGear,
                  label: 'enable_infinite_peripheral_gear',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  onChanged: (newValue) =>
                      controller.handleDeviceSettingsToggle('continuousScan', newValue),
                  value: controller.deviceSettingsModel.value.continuousScan,
                  label: 'continuous_scan',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'you_can_use_lineapro'.tr,
            style: const TextStyle(color: Color.fromARGB(255, 131, 129, 129), fontSize: 14),
          ),
        ),
      ],
    );
  }
}
