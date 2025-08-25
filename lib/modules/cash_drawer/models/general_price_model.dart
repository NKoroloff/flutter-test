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
  GeneralPrice copyWith({
    PriceButtonVariant? variant,
    PriceColor? priceColor,
    PriceType? type,
    bool? disabled,
    int? quantity,
    double? price,
    String? name,
    int? id,
    VoidCallback? onTap,
    CustomPrice? customPrice,
    bool? hideTicket,
    int? priority,
  }) {
    return GeneralPrice(
      customPrice: customPrice ?? this.customPrice,
      quantity: quantity ?? this.quantity,
      priceColor: priceColor ?? this.priceColor,
      id: id ?? this.id,
      name: name ?? this.name,
      variant: variant ?? this.variant,
      disabled: disabled ?? this.disabled,
      onTap: onTap ?? this.onTap,
      price: price ?? this.price,
      priority: priority ?? this.priority,
      hideTicket: hideTicket ?? this.hideTicket,
    );
  }
}
