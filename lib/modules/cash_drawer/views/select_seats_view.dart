import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/inventory_button.dart';

class SelectSeatsView extends StatelessWidget {
  const SelectSeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',
        'info': 'info',
        'color': Colors.green,
      },
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',

        'color': Colors.orange,
      },
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',
        'info': 'info',
        'color': Colors.red,
      },
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',
        'info': 'info',
        'color': Colors.red,
      },
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',
        'info': 'info',
        'color': Colors.red,
      },
      {
        'variant': InventoryButtonVariant.outlined,
        'onTap': () {},
        'label': 'label',
        'price': '144',
        'info': 'info',
        'color': Colors.blue,
      },
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
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 79,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InventoryButton(
              variant: item['variant'] as InventoryButtonVariant,
              onTap: item['onTap'] as VoidCallback,
              label: item['label'] as String,
              price: item['price'] as String,
              info: item['info'] != null ? item['info'] as String : null,
              color: item['color'] as Color,
            );
          },
        ),
      ),
    );
  }
}
