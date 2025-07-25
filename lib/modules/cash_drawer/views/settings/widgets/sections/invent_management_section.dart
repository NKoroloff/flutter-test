import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/inventory_management_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class InventManagementSection extends StatelessWidget {
  const InventManagementSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InventoryManagementController>();
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'inventory_management'),
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
                  label: 'enable_over_sell',
                  onChanged: controller.toggleOverSell,
                  value: controller.isEnabledOverSell.value,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
