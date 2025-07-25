import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/remain_tickets_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';

class RemainTicketsSection extends StatelessWidget {
  const RemainTicketsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RemainTicketsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'show_remain_tickets'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => SettingsSelectOption(
                  label: 'when_less_than25',
                  isSelected: controller.showRemainingTicketsMode == 'lessThan25',
                  onTap: () => controller.handleRemainTickets('lessThan25'),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'always',
                  isSelected: controller.showRemainingTicketsMode == 'always',
                  onTap: () => controller.handleRemainTickets('always'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
