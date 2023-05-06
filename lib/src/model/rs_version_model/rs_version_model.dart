import 'package:isar/isar.dart';

part 'rs_version_model.g.dart';

@Collection()
class RSVersionModel {
  Id id = Isar.autoIncrement;
  final int? version;
  final int? appHotelId;
  final DateTime? getDate;

  RSVersionModel({
    this.version,
    this.appHotelId,
    this.getDate,
  });

  factory RSVersionModel.fromJson(Map<String?, dynamic> json) {
    return RSVersionModel(
      version: json['version'],
      getDate: DateTime.now(),
    );
  }
}
