import 'package:get/get.dart';

class WirelessPrintingSectionController extends GetxController {
  final RxBool enablePrintingFunc = false.obs;

  void toggleEnablePrintingFunc(bool newValue) {
    enablePrintingFunc.value = newValue;
  }

  final RxBool enablePrintedReceipts = false.obs;

  void toggleEnablePrintedReceipts(bool newValue) {
    enablePrintedReceipts.value = newValue;
  }

  final RxString enablePrintedReceiptsMethod = 'always'.obs;
  void toggleMethod(String value) {
    enablePrintedReceiptsMethod.value = value;
  }

  final RxBool signedCcReceipt = false.obs;

  void toggleSignedCcReceipt(bool newValue) {
    signedCcReceipt.value = newValue;
  }
}
