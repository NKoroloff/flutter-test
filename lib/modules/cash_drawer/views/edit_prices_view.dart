import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/price_controller.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/widgets/price_button.dart';

class EditPricesView extends StatelessWidget {
  const EditPricesView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<PriceController>();

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                OutlinedButton(onPressed: () {}, child: Text('assing_color'.tr)),
                SizedBox(width: 20),
                OutlinedButton(onPressed: () {}, child: Text('change_visibility'.tr)),
              ],
            ),
            SizedBox(height: 10),
            Text('click_price_below_to_edit'),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: controller.prices.length,
                padding: const EdgeInsets.only(bottom: 8),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 79,
                ),
                itemBuilder: (context, index) {
                  final item = controller.prices[index];
                  String? info;
                  if (item.hideTicket && item.customPrice.isActive) {
                    info = 'custom hidden';
                  } else if (item.hideTicket && !item.customPrice.isActive) {
                    info = 'hidden';
                  } else if (!item.hideTicket && item.customPrice.isActive) {
                    info = 'custom';
                  } else {
                    info = null;
                  }

                  // final infoBg = item is AsePrice ? item.infoBackgroundColor : null;

                  return PriceButton(
                    customPrice: item.customPrice,
                    variant: item.variant,
                    onTap: () {
                      Get.toNamed('/mvc/edit-prices/$index');
                    },
                    name: item.name,
                    price: item.price,
                    info: info,
                    color: item.priceColor.color,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
