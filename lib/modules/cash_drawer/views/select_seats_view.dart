import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/inventory_button_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/inventory_button.dart';

class SelectSeatsView extends StatelessWidget {
  const SelectSeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      InventoryItem(
        variant: InventoryButtonVariant.outlined,
        onTap: () {},
        label: 'label',
        price: '144',
        info: 'info',
        color: Colors.green,
      ),
      InventoryItem(
        variant: InventoryButtonVariant.filled,
        onTap: () {},
        label: 'label',
        price: '144',
        color: Colors.orange,
      ),
      InventoryItem(
        variant: InventoryButtonVariant.outlined,
        onTap: () {},
        label: 'label',
        price: '144',
        info: 'info',
        color: Colors.red,
        infoBackgroundColor: Colors.black,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          label: const Text('Back'),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('edit_prices'.tr, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
      backgroundColor: const Color.fromARGB(128, 241, 241, 241),
      body: Padding(
        padding: const EdgeInsets.all(8),

        child: Column(
          spacing: 10,
          children: [
            OutlinedButton(onPressed: () {}, child: Text('select_seats'.tr)),

            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.only(bottom: 8),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 79,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InventoryButton(
                    variant: item.variant,
                    onTap: item.onTap,
                    label: item.label,
                    price: item.price,
                    info: item.info,
                    color: item.color,
                  );
                },
              ),
            ),

            OutlinedButton(onPressed: () {}, child: Text('cancel'.tr)),
          ],
        ),
      ),
    );
  }
}
