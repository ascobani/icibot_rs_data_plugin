import 'package:isar/isar.dart';

class RSVersionModel {
  Id id = Isar.autoIncrement;
  final String? version;
  final DateTime? getDate;

  RSVersionModel({
    this.version,
    this.getDate,
  });

  factory RSVersionModel.fromJson(Map<String, dynamic> json) {
    return RSVersionModel(
      version: json[0],
      getDate: DateTime.now(),
    );
  }
}
