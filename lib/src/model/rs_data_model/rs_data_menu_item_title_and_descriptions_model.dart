part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemTitleAndDescriptionModel {

  int? icibotId;
  int? menuItemId;
  String? title;
  String? description;
  String? selectValues;
  String? reasonValues;
  String? closingValues;
  bool? dateRequired;
  String? imageUrl;
  String? imageName;
  int? hotelId;
  int? responseTime;
  String? restrictionType;
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
    title = json?['title'];
    description = json?['description'];
    selectValues = json?['select_values'];
    reasonValues = json?['reason_values'];
    closingValues = json?['closing_values'];
    dateRequired = json?['date_required'];
    imageUrl = json?['image_url'];
    imageName = json?['image_name'];
    hotelId = json?['hotel_id'];
    responseTime = json?['response_time'];
    restrictionType = json?['restriction_type'];
    restrictionValue = json?['restriction_value'];
    taskTypeId = json?['task_type_id'];
  }
}
