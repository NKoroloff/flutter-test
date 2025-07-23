import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/admission_options_model.dart';

class AdmissionOptionsController extends GetxController {
  var admissionOptionsModel = AdmissionOptionsModel.initial().obs;

  final RxBool enableAdmitting = true.obs;
  final RxBool enableTicketIssuing = false.obs;
  final RxBool enableScanIn = false.obs;

  void toggleEnablePrintingFeature(bool newValue) {
    admissionOptionsModel.update((option) => option?.enablePrintingFeature = newValue);
  }

  void toggleEnableAdmitting(bool newValue) {
    admissionOptionsModel.value.enableAdmitting = newValue;
  }

  void toggleEnableTicketIssuing(bool newValue) {
    enableTicketIssuing.value = newValue;
  }

  void toggleEnableScanIn(bool newValue) {
    enableScanIn.value = newValue;
  }
}

//  handleAdmissionOptions(String name, bool value) {
//     admissionOptionsModel.update((option) {
//       option[name] = value ;
//     });
