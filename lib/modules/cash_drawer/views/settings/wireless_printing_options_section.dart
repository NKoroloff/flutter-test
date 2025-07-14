import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';

class WirelessPrintingOptionsSection extends StatelessWidget {
  const WirelessPrintingOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(width: 20),
            SettingsSectionTitle(title: 'wirelessPrintOptions'),
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
                  const Text('Epson Bluetooth Printer'),
                  const Spacer(flex: 1),
                  InkWell(onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  Text('enablePrintFunct'.tr),
                  const Spacer(flex: 1),
                  CupertinoSwitch(value: false, onChanged: (value) {}),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  Text('enablePrintedReceipts'.tr),
                  const Spacer(flex: 1),
                  CupertinoSwitch(value: false, onChanged: (value) {}),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text('alwaysPrint'.tr),
                  const Spacer(flex: 1),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.check, color: Colors.blue),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text('askAfterEachSale'.tr),
                  const Spacer(flex: 1),

                  const SizedBox(width: 20),
                ],
              ),
              const Divider(height: 1, color: Color.fromARGB(255, 202, 202, 202)),
              Row(
                children: [
                  Text('signedCCReceipt'.tr),
                  const Spacer(flex: 1),
                  CupertinoSwitch(value: true, onChanged: (value) {}),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
