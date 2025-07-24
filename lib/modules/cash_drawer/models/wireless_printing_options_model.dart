// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WirelessPrintingOptionsModel {
  bool enablePrintingFunc;
  bool enablePrintedReceipts;
  String printingMethod;
  bool signedCcReceipt;
  WirelessPrintingOptionsModel({
    required this.enablePrintingFunc,
    required this.enablePrintedReceipts,
    required this.printingMethod,
    required this.signedCcReceipt,
  });

  factory WirelessPrintingOptionsModel.initial() {
    return WirelessPrintingOptionsModel(
      enablePrintingFunc: false,
      enablePrintedReceipts: false,
      printingMethod: 'always',
      signedCcReceipt: false,
    );
  }

  WirelessPrintingOptionsModel copyWith({
    bool? enablePrintingFunc,
    bool? enablePrintedReceipts,
    String? printingMethod,
    bool? signedCcReceipt,
  }) {
    return WirelessPrintingOptionsModel(
      enablePrintingFunc: enablePrintingFunc ?? this.enablePrintingFunc,
      enablePrintedReceipts: enablePrintedReceipts ?? this.enablePrintedReceipts,
      printingMethod: printingMethod ?? this.printingMethod,
      signedCcReceipt: signedCcReceipt ?? this.signedCcReceipt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrintingFunc': enablePrintingFunc,
      'enablePrintedReceipts': enablePrintedReceipts,
      'printingMethod': printingMethod,
      'signedCcReceipt': signedCcReceipt,
    };
  }

  factory WirelessPrintingOptionsModel.fromMap(Map<String, dynamic> map) {
    return WirelessPrintingOptionsModel(
      enablePrintingFunc: map['enablePrintingFunc'] as bool,
      enablePrintedReceipts: map['enablePrintedReceipts'] as bool,
      printingMethod: map['printingMethod'] as String,
      signedCcReceipt: map['signedCcReceipt'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory WirelessPrintingOptionsModel.fromJson(String source) =>
      WirelessPrintingOptionsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WirelessPrintingOptionsModel(enablePrintingFunc: $enablePrintingFunc, enablePrintedReceipts: $enablePrintedReceipts, printingMethod: $printingMethod, signedCcReceipt: $signedCcReceipt)';
  }

  @override
  bool operator ==(covariant WirelessPrintingOptionsModel other) {
    if (identical(this, other)) return true;

    return other.enablePrintingFunc == enablePrintingFunc &&
        other.enablePrintedReceipts == enablePrintedReceipts &&
        other.printingMethod == printingMethod &&
        other.signedCcReceipt == signedCcReceipt;
  }

  @override
  int get hashCode {
    return enablePrintingFunc.hashCode ^
        enablePrintedReceipts.hashCode ^
        printingMethod.hashCode ^
        signedCcReceipt.hashCode;
  }
}
