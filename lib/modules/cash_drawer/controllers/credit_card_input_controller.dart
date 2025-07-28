import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/credit_card_model.dart';

class CreditCardInputController extends GetxController {
  var creditCardModel = CreditCardModel(number: '', expDate: '', cvv: '', zip: '').obs;

  void handleCreditCard(field, value) {
    creditCardModel.update((option) {
      if (option == null) {
        return;
      }
      switch (field) {
        case 'number':
          option.number = value;
          break;
        case 'expDate':
          option.expDate = value;
          break;
        case 'cvv':
          option.cvv = value;
          break;
        case 'zip':
          option.zip = value;
          break;
      }
    });
  }
}
