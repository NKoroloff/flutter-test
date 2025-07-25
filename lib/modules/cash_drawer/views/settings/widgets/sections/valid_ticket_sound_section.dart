import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/valid_ticket_sounds_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class ValidTicketSoundSection extends StatelessWidget {
  const ValidTicketSoundSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ValidTicketSoundsController>();
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
              Obx(
                () => SettingsSelectOption(
                  label: 'Sound 1',
                  isSelected: controller.sound.value == '1',
                  onTap: () => controller.handleValidSound('1'),
                ),
              ),
              CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'Sound 2',
                  isSelected: controller.sound.value == '2',
                  onTap: () => controller.handleValidSound('2'),
                ),
              ),
              CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  label: 'Sound 3',
                  isSelected: controller.sound.value == '3',
                  onTap: () => controller.handleValidSound('3'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
