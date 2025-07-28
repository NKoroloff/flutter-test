import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class PriceController extends GetxController {
  var prices = <Price>[].obs;

  handlePriceColor(int index, PriceColor priceColor) {
    prices[index].priceColor = priceColor;
    prices.refresh();
  }
}

class PriceColorController extends GetxController {
  var defaultColors = <PriceColor>[
    PriceColor(color: Colors.red, name: 'Red', id: 1),
    PriceColor(color: Colors.green, name: 'Green', id: 2),
    PriceColor(color: Colors.blue, name: 'Blue', id: 3),
  ];
}
