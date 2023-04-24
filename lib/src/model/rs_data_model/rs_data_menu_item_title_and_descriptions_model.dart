part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemTitleAndDescriptionModel {
  int? icibotId;
  int? menuItemId;
  List<RSDataTitleLanguageModel>? title;
  List<RSDataTitleLanguageModel>? description;
  List<RSDataTitleLanguageModel>? selectValues;
  List<RSDataTitleLanguageModel>? reasonValues;
  List<RSDataTitleLanguageModel>? closingValues;
  bool? dateRequired;
  String? imageUrl;
  String? imageName;
  int? hotelId;
  int? responseTime;
  List<RSDataTitleLanguageModel>? restrictionType;
  int? restrictionValue;
  int? taskTypeId;

  RSDataMenuItemTitleAndDescriptionModel(
      {this.icibotId,
      this.menuItemId,
      this.title,
      this.description,
      this.selectValues,
      this.reasonValues,
      this.closingValues,
      this.dateRequired,
      this.imageUrl,
      this.imageName,
      this.hotelId,
      this.responseTime,
      this.restrictionType,
      this.restrictionValue,
      this.taskTypeId});

  RSDataMenuItemTitleAndDescriptionModel.fromJson(Map<String, dynamic>? json) {
    icibotId = json?['id'];
    menuItemId = json?['menu_item_id'];
    title = getLanguage(data: json?['title']);
    description = getLanguage(data: json?['description']);
    selectValues = getLanguage(data:json?['select_values']);
    reasonValues = getLanguage(data:json?['reason_values']);
    closingValues = getLanguage(data: json?['closing_values']);
    dateRequired = json?['date_required'];
    imageUrl = json?['image_url'];
    imageName = json?['image_name'];
    hotelId = json?['hotel_id'];
    responseTime = json?['response_time'];
    restrictionType = getLanguage(data:json?['restriction_type']);
    restrictionValue = json?['restriction_value'];
    taskTypeId = json?['task_type_id'];
  }

  toJson() {
    return {
      'id': icibotId,
      'menu_item_id': menuItemId,
      'title': languageToMap(data: title),
      'description': languageToMap(data: description),
      'select_values': languageToMap(data: selectValues),
      'reason_values': languageToMap(data: reasonValues),
      'closing_values': languageToMap(data: closingValues),
      'date_required': dateRequired,
      'image_url': imageUrl,
      'image_name': imageName,
      'hotel_id': hotelId,
      'response_time': responseTime,
      'restriction_type': languageToMap(data: restrictionType),
      'restriction_value': restrictionValue,
      'task_type_id': taskTypeId,
    };
  }
}
