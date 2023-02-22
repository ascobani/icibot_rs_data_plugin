import 'package:isar/isar.dart';

class RSDataTitleLanguageModel {
  Id id = Isar.autoIncrement;
  String? locale;
  String? title;

  RSDataTitleLanguageModel({
    this.locale,
    this.title,
  });

  RSDataTitleLanguageModel.fromJson(MapEntry<String, dynamic> json) {
    locale = json.key;
    title = json.value;
  }
}
