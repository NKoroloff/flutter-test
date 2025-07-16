import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class ServerNameSection extends StatelessWidget {
  const ServerNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SettingsSectionTitle(title: 'server_name'),
        ),
        SettingsContainerWrapper(
          padding: EdgeInsetsGeometry.fromLTRB(20, 0, 0, 0),
          child: CustomInput(onChanged: (value) {}),
        ),
      ],
    );
  }
}
