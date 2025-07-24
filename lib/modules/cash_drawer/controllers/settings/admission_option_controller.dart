import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/admission_options_model.dart';

class AdmissionOptionsController extends GetxController {
  var admissionOptionsModel = AdmissionOptionsModel.initial().obs;

  void toggleEnablePrintingFeature(bool newValue) {
    admissionOptionsModel.update((option) => option?.enablePrintingFeature = newValue);
  }

  void toggleEnableAdmitting(bool newValue) {
    admissionOptionsModel.update((option) => option?.enableAdmitting = newValue);
  }

  void toggleEnableTicketIssuing(bool newValue) {
    admissionOptionsModel.update((option) => option?.enableTicketIssuing = newValue);
  }

  void toggleEnableScanIn(bool newValue) {
    admissionOptionsModel.update((option) => option?.enableScanIn = newValue);
  }
}
