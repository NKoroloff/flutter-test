import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/credit_card_input_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_imports.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_divider.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/custom_input.dart';

class CreditCardInputView extends StatelessWidget {
  const CreditCardInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put<CreditCardInputController>(CreditCardInputController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () {},
          label: const Text('Back'),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('Credit Card Input', style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      // backgroundColor: Colors.grey[300],
      backgroundColor: const Color.fromARGB(128, 241, 241, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),

          child: Column(
            spacing: 25,
            children: [
              Text(
                'Total Due: \$50',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue),
              ),
              SettingsContainerWrapper(
                child: Column(
                  spacing: 10,
                  children: [
                    CustomInput(
                      label: 'Credit Card Number',
                      value: controller.creditCardModel.value.number,
                      onChanged: (value) {
                        controller.handleCreditCard('number', value);
                      },
                    ),
                    CustomDivider(),
                    CustomInput(
                      label: 'Expiration Date',
                      value: controller.creditCardModel.value.expDate,
                      onChanged: (value) {
                        controller.handleCreditCard('expDate', value);
                      },
                    ),
                    CustomDivider(),
                    CustomInput(
                      label: 'CVV Code',
                      value: controller.creditCardModel.value.cvv,
                      onChanged: (value) {
                        controller.handleCreditCard('cvv', value);
                      },
                    ),
                    CustomDivider(),
                    CustomInput(
                      label: 'Zip Code',
                      value: controller.creditCardModel.value.zip,
                      onChanged: (value) {
                        controller.handleCreditCard('zip', value);
                      },
                    ),
                  ],
                ),
              ),

              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () {},
                child: Text('admit'.tr),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.fromMap({WidgetState.any: Size(200, 40)}),
                ),
                onPressed: () {},
                child: Text('cancel'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
