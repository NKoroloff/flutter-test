import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';

class CompTicketsSection extends StatelessWidget {
  const CompTicketsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'comp_tickets'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsSelectOption(label: 'should_always', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'should_never', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'give_option', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'deduct_from', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'not_deduct_from', isSelected: true, onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
