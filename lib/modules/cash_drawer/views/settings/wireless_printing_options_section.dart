import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class WirelessPrintingOptionsSection extends StatelessWidget {
  const WirelessPrintingOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'wireless_print_options'),
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
                  Text('Epson Bluetooth Printer'.tr),
                  const Spacer(flex: 1),
                  InkWell(onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_print_funct'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'enable_printed_receipts'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(isSelected: false, onTap: () {}, label: 'always_print'),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(
                isSelected: true,
                onTap: () {
                  print('helo');
                },
                label: 'ask_after_each_sale',
              ),

              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              const SettingsLabeledSwitch(label: 'signed_cc_receipt'),
            ],
          ),
        ),
      ],
    );
  }
}
