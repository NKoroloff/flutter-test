import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/wireless_printing_options_model.dart';

class WirelessPrintingSectionController extends GetxController {
  var wirelessPrintingOptionsModel = WirelessPrintingOptionsModel.initial().obs;

  void toggleEnablePrintingFunc(bool newValue) {
    wirelessPrintingOptionsModel.update((option) => option?.enablePrintingFunc = newValue);
  }

  void toggleEnablePrintedReceipts(bool newValue) {
    wirelessPrintingOptionsModel.update((option) => option?.enablePrintedReceipts = newValue);
  }

  void toggleMethod(String value) {
    wirelessPrintingOptionsModel.update((option) => option?.printingMethod = value);
  }

  void toggleSignedCcReceipt(bool newValue) {
    wirelessPrintingOptionsModel.update((option) => option?.signedCcReceipt = newValue);
  }
}
