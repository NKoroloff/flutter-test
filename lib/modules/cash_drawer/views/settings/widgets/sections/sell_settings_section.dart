import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
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
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'enable_coup_codes'),
              const CustomDivider(),
              SettingsLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'enable_checkout_questions',
              ),
              const CustomDivider(),
              SettingsLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'collect_signature_on_cc',
              ),
              const CustomDivider(),
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'email_cc_receipt'),
              const CustomDivider(),
              SettingsLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'email_cash_receipt',
              ),
              const CustomDivider(),
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'hide_comp'),
              const CustomDivider(),
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'hide_ref'),
              const CustomDivider(),
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'enable_discounts'),
              const CustomDivider(),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text('default'.tr),
                  const SizedBox(width: 10),
                  Expanded(child: CustomInput(onChanged: (value) {})),
                  const SizedBox(width: 20),
                ],
              ),
              CustomDivider(),
              SettingsLabeledSwitch(value: true, onChanged: (value) {}, label: 'enable_tips'),
            ],
          ),
        ),
      ],
    );
  }
}
