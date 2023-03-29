part of 'rs_data_model.dart';

@embedded
class RSDataTitleLanguageModel {

  /// Locale
  String? locale;

  // Title
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

extension ShowSelectedLocale on List<RSDataTitleLanguageModel> {
  /// Returns the selected locale title
  ///
  /// If the selected locale is not found, the first locale title is returned
  String? getSelectedLocale(String locale) {
    return firstWhere((element) => element.locale == locale,
        orElse: () => this[0]).title;
  }
}
