

class RSDataTitleLanguageModel {
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
