import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/price_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_imports.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_number_input.dart';

class EditPriceView extends StatelessWidget {
  const EditPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<PriceController>();
    var isNew = Get.currentRoute.contains('/new');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () {},
          label: const Text('Back'),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('edit_prices'.tr, style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      // backgroundColor: Colors.grey[300],
      backgroundColor: const Color.fromARGB(128, 241, 241, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            spacing: 25,
            children: [
              SettingsContainerWrapper(
                child: Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: CustomInput(
                        label: 'Name',
                        value: controller.temporaryPrice.value!.name,
                        onChanged: (value) => controller.handleNameChange(value),
                      ),
                    ),
                  ],
                ),
              ),
              SettingsContainerWrapper(
                child: Column(
                  spacing: 10,
                  children: [
                    Obx(
                      () => CustomLabeledSwitch(
                        value: controller.temporaryPrice.value!.customPrice.isActive,
                        onChanged: (value) {
                          controller.handleCustomPriceActive(value);
                        },
                        label: 'custom_price_qty',
                      ),
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        SizedBox(width: 20),

                        Expanded(
                          child: Obx(
                            () => CustomInput(
                              disabled: !controller.temporaryPrice.value!.customPrice.isActive,
                              label: 'price',
                              onChanged: (value) {
                                controller.handleCustomPriceValue(value);
                              },
                              value: controller.temporaryPrice.value!.customPrice.value,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                          child: Obx(
                            () => CustomInput(
                              disabled: !controller.temporaryPrice.value!.customPrice.isActive,
                              label: 'quantity_available',
                              onChanged: (value) {
                                controller.handleCustomPriceQuantity(value);
                              },
                              value: controller.temporaryPrice.value!.customPrice.quantity
                                  .toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SettingsContainerWrapper(
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Text('color'.tr),
                        Spacer(),

                        Obx(
                          () => DropdownButton<PriceColor>(
                            value: controller.temporaryPrice.value!.priceColor,
                            onChanged: (value) {
                              controller.handlePriceColor(value!);
                            },
                            items: controller.defaultColors.map((priceColor) {
                              return DropdownMenuItem<PriceColor>(
                                value: priceColor,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: priceColor.color,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: priceColor.color),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),

                        SizedBox(width: 10),
                      ],
                    ),
                    CustomDivider(),
                    Obx(
                      () => CustomLabeledSwitch(
                        value: controller.temporaryPrice.value!.hideTicket,
                        onChanged: (value) {
                          controller.editHideTicket(value);
                        },
                        label: 'hide_ticket_type',
                      ),
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        Text('priority_high_on_top'.tr),
                        Flexible(
                          child: Obx(
                            () => SettingsNumberInput(
                              onDecrement: () {
                                controller.changePriority(-1);
                              },
                              onIncrement: () {
                                controller.changePriority(1);
                              },
                              value: controller.temporaryPrice.value!.priority,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () {
                  if (Get.currentRoute.contains('/new')) {
                    controller.saveNewPrice();
                  } else {
                    controller.saveEditedPrice();
                  }
                },
                child: Text('save'.tr),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () => controller.canselSave(),
                child: Text('cancel'.tr),
              ),
              if (!isNew)
                OutlinedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                  ),
                  onPressed: () => controller.deletePrice(),
                  child: Text('delete_price'.tr),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
