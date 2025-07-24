// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DeviceSettingsModel {
  bool checkUnknownSerials;
  bool continuousScan;
  bool enableGear;
  DeviceSettingsModel({
    required this.checkUnknownSerials,
    required this.continuousScan,
    required this.enableGear,
  });

  factory DeviceSettingsModel.initial() {
    return DeviceSettingsModel(checkUnknownSerials: true, enableGear: true, continuousScan: false);
  }

  DeviceSettingsModel copyWith({
    bool? checkUnknownSerials,
    bool? enableGear,
    bool? continuousScan,
  }) {
    return DeviceSettingsModel(
      checkUnknownSerials: checkUnknownSerials ?? this.checkUnknownSerials,
      enableGear: enableGear ?? this.enableGear,
      continuousScan: continuousScan ?? this.continuousScan,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkUnknownSerials': checkUnknownSerials,
      'enableGear': enableGear,
      'continuousScan': continuousScan,
    };
  }

  factory DeviceSettingsModel.fromMap(Map<String, dynamic> map) {
    return DeviceSettingsModel(
      checkUnknownSerials: map['checkUnknownSerials'] as bool,
      enableGear: map['enableGear'] as bool,
      continuousScan: map['continuousScan'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory DeviceSettingsModel.fromJson(String source) =>
      DeviceSettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DeviceSettingsModel(checkUnknownSerials: $checkUnknownSerials, enableGear: $enableGear, continuousScan: $continuousScan)';

  @override
  bool operator ==(covariant DeviceSettingsModel other) {
    if (identical(this, other)) return true;

    return other.checkUnknownSerials == checkUnknownSerials &&
        other.enableGear == enableGear &&
        other.continuousScan == continuousScan;
  }

  @override
  int get hashCode => checkUnknownSerials.hashCode ^ enableGear.hashCode ^ continuousScan.hashCode;
}
