import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/bindings/cash_drawer_binding.dart';
import 'package:purplepass_test_task/modules/cash_drawer/bindings/edit_prices_binding.dart';
import 'package:purplepass_test_task/modules/cash_drawer/bindings/select_seats_binding.dart';
import 'package:purplepass_test_task/modules/cash_drawer/bindings/settings_binding.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/credit_card_input_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/cash_drawer_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/editPrices/edit_price_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/editPrices/edit_prices_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/select_seats_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.settings;

  static final routes = [
    GetPage<CashDrawerView>(
      name: _Paths.cashDrawer,
      page: () => const CashDrawerView(),
      binding: CashDrawerBinding(),
    ),
    GetPage<SettingsView>(
      name: _Paths.settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage<EditPriceView>(
      name: _Paths.editPrice,
      page: () => const EditPriceView(),
      binding: EditPricesBinding(),
    ),
    GetPage<EditPriceView>(
      name: _Paths.editPriceNew,
      page: () => const EditPriceView(),
      binding: EditPricesBinding(),
    ),
    GetPage<EditPricesView>(
      name: _Paths.editPrices,
      page: () => const EditPricesView(),
      binding: EditPricesBinding(),
    ),
    GetPage<SelectSeatsView>(
      name: _Paths.selectSeats,
      page: () => const SelectSeatsView(),
      binding: SelectSeatsBinding(),
    ),
    GetPage<CreditCardInputView>(name: _Paths.cardInput, page: () => const CreditCardInputView()),
  ];
}
