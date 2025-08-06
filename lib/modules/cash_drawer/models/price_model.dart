import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';

enum PriceType { general, ase }

abstract class Price {
  int quantity;
  PriceColor priceColor;
  int id;
  String name;
  PriceType type;
  Price({
    required this.priceColor,
    required this.quantity,
    required this.id,
    required this.name,
    required this.type,
  });

  @override
  String toString() => 'Price(quantity: $quantity, id: $id, name: $name)';
}
