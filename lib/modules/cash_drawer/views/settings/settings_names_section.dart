import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SettingsNamesSection extends StatelessWidget {
  const SettingsNamesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SettingsSectionTitle(title: 'device_name'),
          const SizedBox(height: 10),
          const CustomInput(),
          const SizedBox(height: 10),
          Text('uniquedevice_name'.tr, style: const TextStyle(color: Colors.red)),
          const SizedBox(height: 20),
          const SettingsSectionTitle(title: 'server_name'),
          const SizedBox(height: 10),
          const CustomInput(),
        ],
      ),
    );
  }
}
