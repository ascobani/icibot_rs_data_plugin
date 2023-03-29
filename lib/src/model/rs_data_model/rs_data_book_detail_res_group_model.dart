part of 'rs_data_model.dart';

@embedded
class RSDataBookDetailReservationGroupModel {
  int? id;
  int? menuItemId;
  int? bookDetailId;
  List<RSDataTitleLanguageModel>? title;
  List<RSDataTitleLanguageModel>? description;
  DateTime? defaultTime;

  /// Rezervasyon limitlerinde ilglili grup için pozitif yada negatif etki oluşturmak için kullanılacak.
  /// Örneğin öğle yemeğini üç gruba böldük ve ikinci grubun kapasitesinin bir miktar azaltmak istenmesi durumunda
  /// negatif değerli bir kapasite etkisi bu alan ile yapılabilir.
  int? limitCorrectionValue;

  RSDataBookDetailReservationGroupModel({
    this.id,
    this.menuItemId,
    this.bookDetailId,
    this.title,
    this.description,
    this.defaultTime,
    this.limitCorrectionValue,
  });

  RSDataBookDetailReservationGroupModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    bookDetailId = json['book_detail_id'];
    title = getLanguage(data: json['title']);
    description = getLanguage(data: json['description']);
    defaultTime = DateTime.tryParse(json['default_time']);
    limitCorrectionValue = json['limit_correction_value'];
  }
}
