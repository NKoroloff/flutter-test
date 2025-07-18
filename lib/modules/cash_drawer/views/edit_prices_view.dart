import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_imports.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';

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
        title: const Text('Edit Prices', style: TextStyle(fontWeight: FontWeight.w600)),
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
                    Text('Name'),
                    Expanded(child: CustomInput(onChanged: (value) {}, onClear: () {})),
                  ],
                ),
              ),
              SettingsContainerWrapper(
                child: Column(
                  spacing: 10,
                  children: [
                    CustomLabeledSwitch(value: true, onChanged: (value) {}, label: 'Label'),
                    CustomDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
