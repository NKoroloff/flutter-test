import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/price_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_labeled_switch.dart';

class EditPricesHeader extends StatelessWidget {
  const EditPricesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PriceController>();

    Widget _toolsHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        spacing: 10,
        children: [
          Wrap(
            spacing: 10,
            children: [
              OutlinedButton(
                onPressed: () {
                  controller.headerMode.value = EditPricesHeaderMode.assignColor;
                },
                child: Text('assing_color'.tr),
              ),
              OutlinedButton(
                onPressed: () {
                  controller.headerMode.value = EditPricesHeaderMode.changeVisibility;
                },
                child: Text('change_visibility'.tr),
              ),
              SizedBox(
                width: 170,
                child: Obx(
                  () => CustomLabeledSwitch(
                    onChanged: controller.handleSortByColor,
                    label: 'sort_by_color',
                    value: controller.isSortedByColor.value,
                  ),
                ),
              ),
            ],
          ),

          Text('click_price_below_to_edit'.tr),
        ],
      );
    }

    Widget _assignColorHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            spacing: 20,
            children: [
              const Text('Color:'),

              DropdownButton<PriceColor>(
                value: controller.colorToAssign.value,
                onChanged: (value) {
                  controller.colorToAssign.value = value!;
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

              OutlinedButton(
                onPressed: () {
                  controller.headerMode.value = EditPricesHeaderMode.tools;
                },
                child: Text('Done'),
              ),
            ],
          ),
          Text('click_price_below_to_assign_color'.tr),
        ],
      );
    }

    Widget _changeVisibilityHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            spacing: 10,
            children: [
              OutlinedButton(child: Text('Hide All'), onPressed: controller.hideAllPrices),
              OutlinedButton(child: Text('Show All'), onPressed: controller.showAllPrices),
              OutlinedButton(
                child: Text('Done'),
                onPressed: () {
                  controller.headerMode.value = EditPricesHeaderMode.tools;
                },
              ),
            ],
          ),
          Text('click_price_below_to_change_visibility'.tr),
        ],
      );
    }

    return Obx(() {
      switch (controller.headerMode.value) {
        case EditPricesHeaderMode.tools:
          return _toolsHeader();
        case EditPricesHeaderMode.assignColor:
          return _assignColorHeader();
        case EditPricesHeaderMode.changeVisibility:
          return _changeVisibilityHeader();
      }
    });
  }
}
