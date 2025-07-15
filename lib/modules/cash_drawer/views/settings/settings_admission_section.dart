import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SettingsAdmissionSection extends StatelessWidget {
  const SettingsAdmissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'admsOptions'),
          ],
        ),
        SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsLabeledSwitch(label: 'enablePrintFeature'),
              Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsLabeledSwitch(label: 'enableAdmittingFeature'),
              Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsLabeledSwitch(label: 'enableTicketIssuing'),
              Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsLabeledSwitch(label: 'enableScanIn'),
            ],
          ),
        ),
      ],
    );
  }
}
