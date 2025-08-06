// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class AsePrice extends Price {
  PriceColor priceColor;
  int quantity;
  int id;
  String name;
  String rowName;
  String seatName;
  String section;
  AsePrice({
    required this.priceColor,
    required this.quantity,
    required this.id,
    required this.name,
    required this.rowName,
    required this.seatName,
    required this.section,
  }) : super(priceColor: priceColor, quantity: quantity, id: id, name: name, type: PriceType.ase);
}
