import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/comp_tickets_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';

class CompTicketsSection extends StatelessWidget {
  const CompTicketsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CompTicketsController>();
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
              Obx(
                () => SettingsSelectOption(
                  label: 'should_always',
                  isSelected: controller.compDeductionMode.value == 'always',
                  onTap: () => controller.handleCompDeductionMode('always'),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'should_never',
                  isSelected: controller.compDeductionMode.value == 'never',
                  onTap: () => controller.handleCompDeductionMode('never'),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'give_option',
                  isSelected: controller.compDeductionMode.value == 'choose',
                  onTap: () => controller.handleCompDeductionMode('choose'),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled: controller.compDeductionMode.value != 'choose',
                  label: 'deduct_from',
                  isSelected: controller.compDefaultChoise.value == 'deduct',
                  onTap: () => controller.handleCompDefaultChoise('deduct'),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled: controller.compDeductionMode.value != 'choose',
                  label: 'not_deduct_from',
                  isSelected: controller.compDefaultChoise.value == 'notDeduct',
                  onTap: () => controller.handleCompDefaultChoise('notDeduct'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
