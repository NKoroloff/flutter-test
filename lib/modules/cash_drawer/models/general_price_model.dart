import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/custom_price.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class GeneralPrice extends Price {
  GeneralPrice({
    required CustomPrice customPrice,
    required PriceColor priceColor,
    required int quantity,
    required double price,
    required int id,
    required String name,
    PriceButtonVariant variant = PriceButtonVariant.filled,
    bool disabled = false,
    VoidCallback? onTap,
    int priority = 0,
    bool hideTicket = false,
  }) : super(
         customPrice: customPrice,
         quantity: quantity,
         priceColor: priceColor,
         id: id,
         name: name,
         type: PriceType.general,
         variant: variant,
         disabled: disabled,
         onTap: onTap,
         price: price,
         priority: priority,
         hideTicket: hideTicket,
       );

  @override
  GeneralPrice clone() {
    return GeneralPrice(
      customPrice: customPrice.clone(),
      quantity: quantity,
      priceColor: priceColor,
      id: id,
      name: name,
      variant: variant,
      disabled: disabled,
      onTap: onTap,
      price: price,
      priority: priority,
      hideTicket: hideTicket,
    );
  }
}
