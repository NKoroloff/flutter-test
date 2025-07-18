import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/inventory_button.dart';
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
              InventoryButton(
                color: Colors.blue,
                onTap: () {},
                variant: InventoryButtonVariant.filled,
                label: 'hello',
                price: '25',
              ),
              SizedBox(
                // height: 62,
                width: 200,
                child: InventoryButton(
                  color: Colors.blue,
                  onTap: () {},
                  variant: InventoryButtonVariant.outlined,
                  label: 'helloasddddasl;ds;dfddddddsdkfgpkdf[h[dfhk[kkk[kasdk]]]]',
                  price: '2asdf[psdg5',
                  info: 'sdffdddddddddddsldflkdsgojpk',
                  // infoBackgroundColor: Colors.grey[400],
                ),
              ),
              InventoryButton(
                disabled: true,
                color: Colors.blue,
                onTap: () {},
                variant: InventoryButtonVariant.outlined,
                label: 'helloasddddasl;ds;dfddddddsdkfgpkdf[h[dfhk[kkk[kasdk]]]]',
                price: '2asdf[psdg5',
                info: 'sdffdddddddddddsldflkdsgojpk',
                // infoBackgroundColor: Colors.grey[400],
              ),
              InventoryButton(
                disabled: true,
                color: Colors.blue,
                onTap: () {},
                variant: InventoryButtonVariant.filled,
                label: 'helloasddddasl;ds;dfddddddsdkfgpkdf[h[dfhk[kkk[kasdk]]]]',
                price: '2asdf[psdg5',
                info: 'sdffdddddddddddsldflkdsgojpk',
                // infoBackgroundColor: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
