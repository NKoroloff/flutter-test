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
            SettingsSectionTitle(title: 'sellSettigs'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SettingsLabeledSwitch(label: 'enableCoupCodes'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enableCheckoutQuestions'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'collectSignatureOnCc'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'emailCcReceipt'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'emailCashReceipt'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'hideComp'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'hideRef'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enableDiscounts'),
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
              const SettingsLabeledSwitch(label: 'enableTips'),
            ],
          ),
        ),
      ],
    );
  }
}
