import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/price_model.dart';

class GeneralPrice extends Price {
  GeneralPrice({
    required int quantity,
    required PriceColor priceColor,
    required int id,
    required String name,
  }) : super(
         quantity: quantity,
         priceColor: priceColor,
         id: id,
         name: name,
         type: PriceType.general,
       );
}
