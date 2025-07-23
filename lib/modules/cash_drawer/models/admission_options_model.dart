// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdmissionOptionsModel {
  bool enablePrintingFeature;
  bool enableAdmitting;
  bool enableTicketIssuing;
  bool enableScanIn;
  AdmissionOptionsModel({
    required this.enablePrintingFeature,
    required this.enableAdmitting,
    required this.enableTicketIssuing,
    required this.enableScanIn,
  });

  factory AdmissionOptionsModel.initial() {
    return AdmissionOptionsModel(
      enablePrintingFeature: true,
      enableAdmitting: true,
      enableTicketIssuing: true,
      enableScanIn: true,
    );
  }

  AdmissionOptionsModel copyWith({
    bool? enablePrintingFeature,
    bool? enableAdmitting,
    bool? enableTicketIssuing,
    bool? enableScanIn,
  }) {
    return AdmissionOptionsModel(
      enablePrintingFeature: enablePrintingFeature ?? this.enablePrintingFeature,
      enableAdmitting: enableAdmitting ?? this.enableAdmitting,
      enableTicketIssuing: enableTicketIssuing ?? this.enableTicketIssuing,
      enableScanIn: enableScanIn ?? this.enableScanIn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrintingFeature': enablePrintingFeature,
      'enableAdmitting': enableAdmitting,
      'enableTicketIssuing': enableTicketIssuing,
      'enableScanIn': enableScanIn,
    };
  }

  factory AdmissionOptionsModel.fromMap(Map<String, dynamic> map) {
    return AdmissionOptionsModel(
      enablePrintingFeature: map['enablePrintingFeature'] as bool,
      enableAdmitting: map['enableAdmitting'] as bool,
      enableTicketIssuing: map['enableTicketIssuing'] as bool,
      enableScanIn: map['enableScanIn'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdmissionOptionsModel.fromJson(String source) =>
      AdmissionOptionsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AdmissionOptionsModel(enablePrintingFeature: $enablePrintingFeature, enableAdmitting: $enableAdmitting, enableTicketIssuing: $enableTicketIssuing, enableScanIn: $enableScanIn)';
  }

  @override
  bool operator ==(covariant AdmissionOptionsModel other) {
    if (identical(this, other)) return true;

    return other.enablePrintingFeature == enablePrintingFeature &&
        other.enableAdmitting == enableAdmitting &&
        other.enableTicketIssuing == enableTicketIssuing &&
        other.enableScanIn == enableScanIn;
  }

  @override
  int get hashCode {
    return enablePrintingFeature.hashCode ^
        enableAdmitting.hashCode ^
        enableTicketIssuing.hashCode ^
        enableScanIn.hashCode;
  }
}
