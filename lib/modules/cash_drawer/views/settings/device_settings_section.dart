import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class DeviceSettingsSection extends StatelessWidget {
  const DeviceSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const Spacer(flex: 1),
                  InkWell(onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'check_unknown_serials'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_infinite_peripheral_gear'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'continuous_scan'),
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
