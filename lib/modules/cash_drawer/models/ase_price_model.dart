// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/custom_price.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class AsePrice extends Price {
  final String? info;
  final Color? infoBackgroundColor;
  AsePrice({
    required CustomPrice customPrice,
    required PriceColor priceColor,
    required int quantity,
    required double price,
    required int id,
    required String name,
    this.info,
    this.infoBackgroundColor,
    PriceButtonVariant variant = PriceButtonVariant.outlined,
    bool disabled = false,
    VoidCallback? onTap,
    int priority = 0,
    bool hideTicket = false,
  }) : super(
         customPrice: customPrice,
         priceColor: priceColor,
         quantity: quantity,
         id: id,
         price: price,
         name: name,
         type: PriceType.ase,
         variant: variant,
         disabled: disabled,
         hideTicket: hideTicket,
         onTap: onTap,
         priority: priority,
       );
}
