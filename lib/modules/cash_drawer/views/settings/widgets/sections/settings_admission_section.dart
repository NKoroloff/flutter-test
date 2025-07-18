import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SettingsAdmissionSection extends StatelessWidget {
  const SettingsAdmissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: const [SizedBox(width: 20), SettingsSectionTitle(title: 'adms_options')]),
        SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'enable_print_feature',
              ),
              CustomDivider(),
              CustomLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'enable_admitting_feature',
              ),
              CustomDivider(),
              CustomLabeledSwitch(
                value: true,
                onChanged: (value) {},
                label: 'enable_ticket_issuing',
              ),
              CustomDivider(),
              CustomLabeledSwitch(value: true, onChanged: (value) {}, label: 'enable_scan_in'),
            ],
          ),
        ),
      ],
    );
  }
}
