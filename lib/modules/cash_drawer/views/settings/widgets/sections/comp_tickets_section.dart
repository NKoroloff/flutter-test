import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/comp_tickets_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/comp_tickets_section_model.dart';
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
                  isSelected:
                      controller.compTicketsSectionModel.value.compDeductionMode ==
                      CompDeductionMode.always,
                  onTap: () => controller.handleCompDeductionMode(CompDeductionMode.always),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'should_never',
                  isSelected:
                      controller.compTicketsSectionModel.value.compDeductionMode ==
                      CompDeductionMode.never,
                  onTap: () => controller.handleCompDeductionMode(CompDeductionMode.never),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'give_option',
                  isSelected:
                      controller.compTicketsSectionModel.value.compDeductionMode ==
                      CompDeductionMode.choose,
                  onTap: () => controller.handleCompDeductionMode(CompDeductionMode.choose),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled:
                      controller.compTicketsSectionModel.value.compDeductionMode !=
                      CompDeductionMode.choose,
                  label: 'deduct_from',
                  isSelected:
                      controller.compTicketsSectionModel.value.compDefaultChoise ==
                      CompDefaultChoise.deduct,
                  onTap: () => controller.handleCompDefaultChoise(CompDefaultChoise.deduct),
                ),
              ),
              const CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled:
                      controller.compTicketsSectionModel.value.compDeductionMode !=
                      CompDeductionMode.choose,
                  label: 'not_deduct_from',
                  isSelected:
                      controller.compTicketsSectionModel.value.compDefaultChoise ==
                      CompDefaultChoise.notDeduct,
                  onTap: () => controller.handleCompDefaultChoise(CompDefaultChoise.notDeduct),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
