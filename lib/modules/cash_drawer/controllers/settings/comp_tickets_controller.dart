import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/comp_tickets_section_model.dart';

class CompTicketsController extends GetxController {
  var compTicketsSectionModel = CompTicketsSectionModel.initial().obs;

  void handleCompDeductionMode(CompDeductionMode value) {
    compTicketsSectionModel.value.compDeductionMode = value;
    compTicketsSectionModel.refresh();
  }

  void handleCompDefaultChoise(CompDefaultChoise value) {
    compTicketsSectionModel.value.compDefaultChoise = value;
    compTicketsSectionModel.refresh();
  }
}
