enum CompDeductionMode { always, never, choose }

enum CompDefaultChoise { deduct, notDeduct }

class CompTicketsSectionModel {
  CompDeductionMode compDeductionMode;
  CompDefaultChoise compDefaultChoise;

  CompTicketsSectionModel({required this.compDeductionMode, required this.compDefaultChoise});

  factory CompTicketsSectionModel.initial() {
    return CompTicketsSectionModel(
      compDeductionMode: CompDeductionMode.always,
      compDefaultChoise: CompDefaultChoise.deduct,
    );
  }
}
