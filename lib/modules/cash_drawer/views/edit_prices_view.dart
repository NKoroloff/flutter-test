import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_imports.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_number_input.dart';

class EditPricesView extends StatelessWidget {
  const EditPricesView({super.key});

  @override
  Widget build(BuildContext context) {
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
                      child: CustomInput(label: 'Name', value: '', onChanged: (value) {}),
                    ),
                  ],
                ),
              ),
              SettingsContainerWrapper(
                child: Column(
                  spacing: 10,
                  children: [
                    CustomLabeledSwitch(
                      value: true,
                      onChanged: (value) {},
                      label: 'custom_price_qty',
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        SizedBox(width: 20),

                        Expanded(
                          child: CustomInput(label: 'price', onChanged: (value) {}, value: ''),
                        ),
                      ],
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                          child: CustomInput(
                            label: 'quantity_available',
                            onChanged: (value) {},
                            value: '',
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
                        Text('default'.tr),
                        SizedBox(width: 20),
                      ],
                    ),
                    CustomDivider(),
                    CustomLabeledSwitch(
                      value: true,
                      onChanged: (value) {},
                      label: 'hide_ticket_type',
                    ),
                    CustomDivider(),
                    Row(
                      spacing: 20,
                      children: [
                        Text('priority_high_on_top'.tr),
                        Flexible(
                          child: SettingsNumberInput(onSubtruct: () {}, onAdd: () {}, value: 0),
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
                onPressed: () {},
                child: Text('save'.tr),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () {},
                child: Text('cancel'.tr),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () {},
                child: Text('delete_price'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
