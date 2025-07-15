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
            SettingsSectionTitle(title: 'compTickets'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsSelectOption(label: 'shouldAlways', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'shouldNever', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'giveOption', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'deductFrom', isSelected: true, onTap: () {}),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              SettingsSelectOption(label: 'notDeductFrom', isSelected: true, onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
