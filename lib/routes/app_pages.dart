import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/bindings/cash_drawer_binding.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/cash_drawer_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/edit_prices_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/select_seats_view.dart';
import 'package:purplepass_test_task/modules/cash_drawer/views/settings/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.cashDrawer;

  static final routes = [
    GetPage<CashDrawerView>(
      name: _Paths.cashDrawer,
      page: () => const CashDrawerView(),
      binding: CashDrawerBinding(),
    ),
    GetPage<SettingsView>(name: _Paths.settings, page: () => const SettingsView()),
    GetPage<EditPricesView>(name: _Paths.editPrices, page: () => const EditPricesView()),
    GetPage<EditPricesView>(name: _Paths.selectSeats, page: () => const SelectSeatsView()),
  ];
}
