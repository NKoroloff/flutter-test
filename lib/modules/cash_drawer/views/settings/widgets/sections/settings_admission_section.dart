import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/admission_option_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SettingsAdmissionSection extends StatelessWidget {
  const SettingsAdmissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AdmissionOptionsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'adms_options'),
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
                  value: controller.admissionOptionsModel.value.enablePrintingFeature,
                  onChanged: controller.toggleEnablePrintingFeature,
                  label: 'enable_print_feature',
                ),
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.admissionOptionsModel.value.enableAdmitting,
                  onChanged: controller.toggleEnableAdmitting,
                  label: 'enable_admitting_feature',
                ),
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.admissionOptionsModel.value.enableTicketIssuing,
                  onChanged: controller.toggleEnableTicketIssuing,
                  label: 'enable_ticket_issuing',
                ),
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  disabled: !controller.admissionOptionsModel.value.enableTicketIssuing,
                  value: controller.admissionOptionsModel.value.enableScanIn,
                  onChanged: controller.toggleEnableScanIn,
                  label: 'enable_scan_in',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
