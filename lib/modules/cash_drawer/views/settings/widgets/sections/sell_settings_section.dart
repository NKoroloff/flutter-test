import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/settings/sell_settings_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class SellSettingsSection extends StatelessWidget {
  const SellSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SellSettingsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'sell_settigs'),
          ],
        ),
        const SizedBox(height: 10),
        SettingsContainerWrapper(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.enableCouponCodes,
                  onChanged: (value) => controller.handleSellSettings('enableCouponCodes', value),
                  label: 'enable_coup_codes',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.enableCheckoutQuestions,
                  onChanged: (value) =>
                      controller.handleSellSettings('enableCheckoutQuestions', value),
                  label: 'enable_checkout_questions',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.collectSignature,
                  onChanged: (value) => controller.handleSellSettings('collectSignature', value),
                  label: 'collect_signature_on_cc',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.emailCcReceipt,
                  onChanged: (value) => controller.handleSellSettings('emailCcReceipt', value),
                  label: 'email_cc_receipt',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.emailCashReceipt,
                  onChanged: (value) => controller.handleSellSettings('emailCashReceipt', value),
                  label: 'email_cash_receipt',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.hideComp,
                  onChanged: (value) => controller.handleSellSettings('hideComp', value),
                  label: 'hide_comp',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.hideRefund,
                  onChanged: (value) => controller.handleSellSettings('hideRefund', value),
                  label: 'hide_ref',
                ),
              ),
              const CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.enableDiscount,
                  onChanged: (value) => controller.handleSellSettings('enableDiscount', value),
                  label: 'enable_discounts',
                ),
              ),
              const CustomDivider(),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Obx(
                    () => Expanded(
                      child: CustomInput(
                        label: 'default',
                        value: controller.sellSettingsModel.value.discountDefault,
                        onChanged: (value) =>
                            controller.handleSellSettings('discountDefault', value),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              CustomDivider(),
              Obx(
                () => CustomLabeledSwitch(
                  value: controller.sellSettingsModel.value.enableTips,
                  onChanged: (value) => controller.handleSellSettings('enableTips', value),
                  label: 'enable_tips',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
