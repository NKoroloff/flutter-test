import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SellSettingsSection extends StatelessWidget {
  const SellSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'sell_settigs'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SettingsLabeledSwitch(label: 'enable_coup_codes'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_checkout_questions'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'collect_signature_on_cc'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'email_cc_receipt'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'email_cash_receipt'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'hide_comp'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'hide_ref'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_discounts'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text('default'.tr),
                  const SizedBox(width: 10),
                  const Expanded(child: CustomInput()),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_tips'),
            ],
          ),
        ),
      ],
    );
  }
}
