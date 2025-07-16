import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/comp_tickets_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/device_settings_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/remain_tickets_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/sell_settings_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_admission_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_names_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/valid_ticket_sound_section.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_container_wrapper.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_labeled_switch.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/settings_section_title.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            spacing: 25,
            children: [
              const SettingsNamesSection(),
              const WirelessPrintingOptionsSection(),
              const SettingsAdmissionSection(),
              const DeviceSettingsSection(),
              const SellSettingsSection(),
              const ValidTicketSoundSection(),
              const Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SettingsSectionTitle(title: 'lock_mode'),
                    ],
                  ),
                  SizedBox(height: 10),
                  SettingsContainerWrapper(
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [SettingsLabeledSwitch(label: 'enable_search')],
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SettingsSectionTitle(title: 'inventory_management'),
                    ],
                  ),
                  SizedBox(height: 10),
                  SettingsContainerWrapper(
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [SettingsLabeledSwitch(label: 'enable_over_sell')],
                    ),
                  ),
                ],
              ),
              const RemainTicketsSection(),
              const CompTicketsSection(),
              TextButton(onPressed: () {}, child: Text('clear_local_data'.tr)),
              TextButton(onPressed: () {}, child: Text('reset_to_default'.tr)),
            ],
          ),
        ),
      ),
    );
  }
}
