import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/sell_settings_model.dart';

class SellSettingsController extends GetxController {
  var sellSettingsModel = SellSettingsModel.initial().obs;

  void handleSellSettings(String field, dynamic value) {
    sellSettingsModel.update((option) {
      if (option == null) {
        return;
      }
      switch (field) {
        case 'enableCouponCodes':
          option.enableCouponCodes = value;
          break;
        case 'enableCheckoutQuestions':
          option.enableCheckoutQuestions = value;
          break;
        case 'collectSignature':
          option.collectSignature = value;
          break;
        case 'emailCcReceipt':
          option.emailCcReceipt = value;
          break;
        case 'emailCashReceipt':
          option.emailCashReceipt = value;
          break;
        case 'hideComp':
          option.hideComp = value;
          break;
        case 'hideRefund':
          option.hideRefund = value;
          break;
        case 'enableDiscount':
          option.enableDiscount = value;
          break;
        case 'discountDefault':
          option.discountDefault = value;
          break;
        case 'enableTips':
          option.enableTips = value;
          break;
      }
    });
  }
}
