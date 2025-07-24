// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SellSettingsModel {
  bool enableCouponCodes;
  bool enableCheckoutQuestions;
  bool collectSignature;
  bool emailCcReceipt;
  bool emailCashReceipt;
  bool hideComp;
  bool hideRefund;
  bool enableDiscount;
  String discountDefault;
  bool enableTips;
  SellSettingsModel({
    required this.enableCouponCodes,
    required this.enableCheckoutQuestions,
    required this.collectSignature,
    required this.emailCcReceipt,
    required this.emailCashReceipt,
    required this.hideComp,
    required this.hideRefund,
    required this.enableDiscount,
    required this.discountDefault,
    required this.enableTips,
  });

  factory SellSettingsModel.initial() {
    return SellSettingsModel(
      enableCouponCodes: true,
      enableCheckoutQuestions: true,
      collectSignature: false,
      emailCcReceipt: true,
      emailCashReceipt: true,
      hideComp: false,
      hideRefund: false,
      enableDiscount: true,
      discountDefault: '0',
      enableTips: false,
    );
  }

  SellSettingsModel copyWith({
    bool? enableCouponCodes,
    bool? enableCheckoutQuestions,
    bool? collectSignature,
    bool? emailCcReceipt,
    bool? emailCashReceipt,
    bool? hideComp,
    bool? hideRefund,
    bool? enableDiscount,
    String? discountDefault,
    bool? enableTips,
  }) {
    return SellSettingsModel(
      enableCouponCodes: enableCouponCodes ?? this.enableCouponCodes,
      enableCheckoutQuestions: enableCheckoutQuestions ?? this.enableCheckoutQuestions,
      collectSignature: collectSignature ?? this.collectSignature,
      emailCcReceipt: emailCcReceipt ?? this.emailCcReceipt,
      emailCashReceipt: emailCashReceipt ?? this.emailCashReceipt,
      hideComp: hideComp ?? this.hideComp,
      hideRefund: hideRefund ?? this.hideRefund,
      enableDiscount: enableDiscount ?? this.enableDiscount,
      discountDefault: discountDefault ?? this.discountDefault,
      enableTips: enableTips ?? this.enableTips,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCouponCodes': enableCouponCodes,
      'enableCheckoutQuestions': enableCheckoutQuestions,
      'collectSignature': collectSignature,
      'emailCcReceipt': emailCcReceipt,
      'emailCashReceipt': emailCashReceipt,
      'hideComp': hideComp,
      'hideRefund': hideRefund,
      'enableDiscount': enableDiscount,
      'discountDefault': discountDefault,
      'enableTips': enableTips,
    };
  }

  factory SellSettingsModel.fromMap(Map<String, dynamic> map) {
    return SellSettingsModel(
      enableCouponCodes: map['enableCouponCodes'] as bool,
      enableCheckoutQuestions: map['enableCheckoutQuestions'] as bool,
      collectSignature: map['collectSignature'] as bool,
      emailCcReceipt: map['emailCcReceipt'] as bool,
      emailCashReceipt: map['emailCashReceipt'] as bool,
      hideComp: map['hideComp'] as bool,
      hideRefund: map['hideRefund'] as bool,
      enableDiscount: map['enableDiscount'] as bool,
      discountDefault: map['discountDefault'] as String,
      enableTips: map['enableTips'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SellSettingsModel.fromJson(String source) =>
      SellSettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SellSettingsModel(enableCouponCodes: $enableCouponCodes, enableCheckoutQuestions: $enableCheckoutQuestions, collectSignature: $collectSignature, emailCcReceipt: $emailCcReceipt, emailCashReceipt: $emailCashReceipt, hideComp: $hideComp, hideRefund: $hideRefund, enableDiscount: $enableDiscount, discountDefault: $discountDefault, enableTips: $enableTips)';
  }

  @override
  bool operator ==(covariant SellSettingsModel other) {
    if (identical(this, other)) return true;

    return other.enableCouponCodes == enableCouponCodes &&
        other.enableCheckoutQuestions == enableCheckoutQuestions &&
        other.collectSignature == collectSignature &&
        other.emailCcReceipt == emailCcReceipt &&
        other.emailCashReceipt == emailCashReceipt &&
        other.hideComp == hideComp &&
        other.hideRefund == hideRefund &&
        other.enableDiscount == enableDiscount &&
        other.discountDefault == discountDefault &&
        other.enableTips == enableTips;
  }

  @override
  int get hashCode {
    return enableCouponCodes.hashCode ^
        enableCheckoutQuestions.hashCode ^
        collectSignature.hashCode ^
        emailCcReceipt.hashCode ^
        emailCashReceipt.hashCode ^
        hideComp.hashCode ^
        hideRefund.hashCode ^
        enableDiscount.hashCode ^
        discountDefault.hashCode ^
        enableTips.hashCode;
  }
}
