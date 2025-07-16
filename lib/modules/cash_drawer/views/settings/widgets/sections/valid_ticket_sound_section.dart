import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class ValidTicketSoundSection extends StatelessWidget {
  const ValidTicketSoundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'valid_tickets_sound'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsSelectOption(label: 'Sound 1', isSelected: true, onTap: () {}),
              CustomDivider(),
              SettingsSelectOption(label: 'Sound 2', isSelected: false, onTap: () {}),
              CustomDivider(),
              SettingsSelectOption(label: 'Sound 3', isSelected: false, onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
