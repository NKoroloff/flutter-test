import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/price_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';

class EditPricesHeader extends StatelessWidget {
  const EditPricesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PriceController>();

    Widget _toolsHeader() {
      return Row(
        children: [
          OutlinedButton(
            onPressed: () {
              controller.headerMode.value = EditPricesHeaderMode.assignColor;
            },
            child: Text('assing_color'.tr),
          ),
          SizedBox(width: 10),
          OutlinedButton(onPressed: () {}, child: Text('change_visibility'.tr)),
        ],
      );
    }

    Widget _assignColorHeader() {
      return Row(
        spacing: 20,
        children: [
          const Text('Color:'),

          DropdownButton<PriceColor>(
            value: controller.colorToAssign.value,
            onChanged: (value) {
              controller.defaultColors.first;
              // controller.colorToAssign.value = value;
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
      );
    }

    Widget _changeVisibilityHeader() {
      return Row(
        spacing: 10,
        children: [OutlinedButton(child: Text('Done'), onPressed: () {})],
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
