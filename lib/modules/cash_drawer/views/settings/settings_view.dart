import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import './settings_imports.dart';

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
      // backgroundColor: Colors.grey[300],
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            spacing: 25,
            children: [
              DeviceNameSection(),
              ServerNameSection(),
              WirelessPrintingOptionsSection(),
              SettingsAdmissionSection(),
              DeviceSettingsSection(),
              SellSettingsSection(),
              ValidTicketSoundSection(),
              LockModeSection(),
              InventManagementSection(),
              RemainTicketsSection(),
              CompTicketsSection(),
              TextButton(onPressed: () {}, child: Text('clear_local_data'.tr)),
              TextButton(onPressed: () {}, child: Text('reset_to_default'.tr)),
            ],
          ),
        ),
      ),
    );
  }
}
