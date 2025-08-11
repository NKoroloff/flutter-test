import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/ase_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/custom_price.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/general_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class PriceController extends GetxController {
  final defaultColors = <PriceColor>[
    PriceColor(color: Colors.red, name: 'Red', id: 'red1'),
    PriceColor(color: Colors.green, name: 'Green', id: 'green2'),
    PriceColor(color: Colors.blue, name: 'Blue', id: 'blue3'),
    PriceColor(color: Colors.orange, name: 'Orange', id: 'orange4'),
  ];

  late final RxList<Price> prices = _initializePrices();

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
    ].obs;
  }

  void handleNameChange(int index, String value) {
    prices[index].name = value;
    prices.refresh();
  }

  void handleChangePrice(int index, double value) {
    prices[index].price = value;
    prices.refresh();
  }

  void handleChangeQuantity(int index, int value) {
    prices[index].quantity = value;
    prices.refresh();
  }

  void handlePriceColor(int index, PriceColor priceColor) {
    prices[index].priceColor = priceColor;
    prices.refresh();
  }

  void handleHideTicket(int index, bool value) {
    prices[index].hideTicket = value;
    prices.refresh();
  }

  void changePriority(int index, int step, {int min = 0, int max = 10}) {
    final newPriority = (prices[index].priority + step).clamp(min, max);
    prices[index].priority = newPriority;
    prices.refresh();
  }

  void handleCustomPriceActive(int index, bool value) {
    prices[index].customPrice.isActive = value;
    prices.refresh();
  }

  void handleCustomPriceValue(int index, String value) {
    prices[index].customPrice.value = value;
    prices.refresh();
  }

  void handleCustomPriceQuantity(int index, String value) {
    prices[index].customPrice.quantity = int.parse(value);
    prices.refresh();
  }
}
