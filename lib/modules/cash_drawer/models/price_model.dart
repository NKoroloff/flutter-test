// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/custom_price.dart';

import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';

enum PriceType { general, ase }

enum PriceButtonVariant { outlined, filled }

abstract class Price {
  PriceButtonVariant variant;
  PriceColor priceColor;
  PriceType type;
  bool disabled;
  int quantity;
  double price;
  String name;
  int id;
  VoidCallback? onTap;
  CustomPrice customPrice;
  bool hideTicket;
  int priority;
  Price({
    required this.priceColor,
    required this.customPrice,
    required this.quantity,
    required this.variant,
    required this.price,
    required this.name,
    required this.type,
    required this.id,
    this.priority = 0,
    this.disabled = false,
    this.hideTicket = true,
    this.onTap,
  });

  @override
  String toString() => 'Price(quantity: $quantity, id: $id, name: $name)';
}
