import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/ase_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/general_price_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class PriceController extends GetxController {
  var prices = <Price>[
    AsePrice(
      priceColor: PriceColor(color: Colors.blue, name: 'Blue', id: 'blue3'),
      rowName: '1',
      seatName: '2',
      section: 'vip',
      quantity: 2,
      id: 1,
      name: '',
    ),
    GeneralPrice(
      quantity: 2,
      priceColor: PriceColor(color: Colors.blue, name: 'Blue', id: 'blue3'),
      id: 2,
      name: 'name',
    ),
  ].obs;

  var defaultColors = <PriceColor>[
    PriceColor(color: Colors.red, name: 'Red', id: 'red1'),
    PriceColor(color: Colors.green, name: 'Green', id: 'green2'),
    PriceColor(color: Colors.blue, name: 'Blue', id: 'blue3'),
  ];

  void handleNameChange(int index, String value) {
    prices[index].name = value;
    prices.refresh();
  }

  void handlePriceColor(int index, PriceColor priceColor) {
    prices[index].priceColor = priceColor;
    prices.refresh();
  }
}
