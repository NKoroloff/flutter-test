import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/lock_mode_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class LockModeSection extends StatelessWidget {
  const LockModeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LockModeController>();
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'lock_mode'),
          ],
        ),
        SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.isEnabledSearch.value,
                  onChanged: controller.toggleEnableSearch,
                  label: 'enable_search',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
