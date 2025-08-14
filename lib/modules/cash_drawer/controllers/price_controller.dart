import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/ase_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/custom_price.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/general_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

enum EditPricesHeaderMode { tools, assignColor, changeVisibility }

class PriceController extends GetxController {
  final defaultColors = <PriceColor>[
    PriceColor(color: Colors.red, name: 'Red', id: 'red1'),
    PriceColor(color: Colors.green, name: 'Green', id: 'green2'),
    PriceColor(color: Colors.blue, name: 'Blue', id: 'blue3'),
    PriceColor(color: Colors.orange, name: 'Orange', id: 'orange4'),
    PriceColor(color: Colors.purple, name: 'Default', id: 'default5'),
  ];

  final headerMode = EditPricesHeaderMode.tools.obs;
  RxBool isSortedByColor = false.obs;

  Rx<Price?> temporaryPrice = Rx<Price?>(null);
  int? editingPriceIndex = null;

  late final RxList<Price> prices = _initializePrices();

  late Rx<PriceColor> colorToAssign = Rx<PriceColor>(defaultColors.first);

  RxList<Price> _initializePrices() {
    return <Price>[
      AsePrice(
        priceColor: defaultColors[0],
        quantity: 2,
        id: 1,
        name: 'AsePrice1',
        price: 33,
        info: 'Info',
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
      GeneralPrice(
        quantity: 2,
        priceColor: defaultColors[1],
        id: 2,
        name: 'GeneralPrice1',
        price: 22,
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
      AsePrice(
        priceColor: defaultColors[2],
        quantity: 2,
        id: 3,
        name: 'AsePrice2',
        price: 33,
        info: 'Info',
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
      GeneralPrice(
        quantity: 2,
        priceColor: defaultColors[3],
        id: 4,
        name: 'GeneralPrice2',
        price: 22,
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
      GeneralPrice(
        quantity: 2,
        priceColor: defaultColors[4],
        id: 5,
        name: 'GeneralPrice3',
        price: 2,
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
      GeneralPrice(
        quantity: 2,
        priceColor: defaultColors[4],
        id: 6,
        name: 'GeneralPrice4',
        price: 29,
        customPrice: CustomPrice(value: '0', quantity: 0),
      ),
    ].obs;
  }

  void startEditPrice(int index) {
    temporaryPrice.value = prices[index].clone();
    editingPriceIndex = index;
    Get.toNamed('/mvc/edit-prices/$index');
  }

  void handleNameChange(String value) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.name = value;
      temporaryPrice.refresh();
    }
  }

  void handlePriceColor(PriceColor priceColor) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.priceColor = priceColor;
      temporaryPrice.refresh();
    }
  }

  void handlePriceColorByIndex(int index, PriceColor priceColor) {
    prices[index].priceColor = priceColor;
    prices.refresh();
  }

  void editHideTicket(bool value) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.hideTicket = value;
      temporaryPrice.refresh();
    }
  }

  void handleHideTicketByIndex(int index, bool value) {
    prices[index].hideTicket = value;
    prices.refresh();
  }

  void changePriority(int step, {int min = 0, int max = 10}) {
    if (temporaryPrice.value != null) {
      final newPriority = (temporaryPrice.value!.priority + step).clamp(min, max);
      temporaryPrice.value!.priority = newPriority;
      temporaryPrice.refresh();
    }
  }

  void handleCustomPriceActive(bool value) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.customPrice.isActive = value;
      temporaryPrice.refresh();
    }
  }

  void handleCustomPriceValue(String value) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.customPrice.value = value;
      prices.refresh();
    }
  }

  void handleCustomPriceQuantity(String value) {
    if (temporaryPrice.value != null) {
      temporaryPrice.value!.customPrice.quantity = int.parse(value);
      prices.refresh();
    }
  }

  void saveEditedPrice() {
    if (temporaryPrice.value != null && editingPriceIndex != null) {
      prices[editingPriceIndex!] = temporaryPrice.value!;
      prices.refresh();
      // editingPrice.value = null;
      Get.toNamed('/mvc/edit-prices');
    }
  }

  void canselSave() {
    Get.toNamed('/mvc/edit-prices');
  }

  void hideAllPrices() {
    for (final p in prices) {
      p.hideTicket = true;
    }
    prices.refresh();
  }

  void showAllPrices() {
    for (final p in prices) {
      p.hideTicket = false;
    }
    prices.refresh();
  }

  void handleSortByColor(value) {
    isSortedByColor.value = value;
    if (value) {
      prices.sort((a, b) => a.priceColor.name.compareTo(b.priceColor.name));
    } else {
      prices.sort((a, b) => a.id.compareTo(b.id));
    }
  }

  void createNewPrice() {
    var newId = prices.length;
    temporaryPrice.value = GeneralPrice(
      customPrice: CustomPrice(value: '0', quantity: 0, isActive: true),
      priceColor: defaultColors[0],
      quantity: 0,
      price: 0,
      id: newId,
      name: 'New Ticket',
    );
    Get.toNamed('/mvc/edit-prices/new');
  }

  void saveNewPrice() {
    prices.add(temporaryPrice.value!);
    Get.toNamed('/mvc/edit-prices/');
  }

  void deletePrice() {
    prices.removeWhere((price) => price.id == temporaryPrice.value!.id);
    Get.toNamed('/mvc/edit-prices/');
  }
}
