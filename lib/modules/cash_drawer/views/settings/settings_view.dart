import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_names_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/wireless_printing_options_section.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

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
        title: const Text('Settings', style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      backgroundColor: Colors.grey[300],
      body: const Column(
        children: [
          SizedBox(height: 25),
          SettingsNamesSection(),
          SizedBox(height: 25),
          WirelessPrintingOptionsSection(),
        ],
      ),
    );
  }
}
