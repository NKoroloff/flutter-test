import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/wireless_printing_section_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_select_option.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class WirelessPrintingOptionsSection extends StatelessWidget {
  const WirelessPrintingOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WirelessPrintingSectionController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'wireless_print_options'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Epson Bluetooth Printer'.tr),
                  const Spacer(),
                  InkWell(onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(width: 20),
                ],
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.wirelessPrintingOptionsModel.value.enablePrintingFunc,
                  onChanged: controller.toggleEnablePrintingFunc,
                  label: 'enable_print_funct',
                ),
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  disabled: !controller.wirelessPrintingOptionsModel.value.enablePrintingFunc,
                  value: controller.wirelessPrintingOptionsModel.value.enablePrintedReceipts,
                  onChanged: controller.toggleEnablePrintedReceipts,
                  label: 'enable_printed_receipts',
                ),
              ),

              CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled: !controller.wirelessPrintingOptionsModel.value.enablePrintingFunc,
                  isSelected:
                      controller.wirelessPrintingOptionsModel.value.printingMethod == 'always',
                  onTap: () => controller.toggleMethod('always'),
                  label: 'always_print',
                ),
              ),
              CustomDivider(),
              Obx(
                () => SettingsSelectOption(
                  disabled: !controller.wirelessPrintingOptionsModel.value.enablePrintingFunc,
                  isSelected:
                      controller.wirelessPrintingOptionsModel.value.printingMethod == 'after',
                  onTap: () => controller.toggleMethod('after'),
                  label: 'ask_after_each_sale',
                ),
              ),

              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  disabled: !controller.wirelessPrintingOptionsModel.value.enablePrintingFunc,
                  value: controller.wirelessPrintingOptionsModel.value.signedCcReceipt,
                  onChanged: controller.toggleSignedCcReceipt,
                  label: 'signed_cc_receipt',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
