part of 'rs_data_model.dart';

class RsDataHomePageDesignerModel {
  int? icibotId;
  int? hotelId;
  String? type;
  int? priority;
  int? menuSectionId;
  int? menuItemId;
  String? imageUrl;
  List<RSDataTitleLanguageModel>? title;
  String? url;
  String? createdAt;
  String? updatedAt;

  RsDataHomePageDesignerModel({
    this.icibotId,
    this.hotelId,
    this.type,
    this.priority,
    this.menuSectionId,
    this.menuItemId,
    this.imageUrl,
    this.title,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  RsDataHomePageDesignerModel.fromJson(Map<String, dynamic>? json) {
    icibotId = json?['id']?.toInt();
    hotelId = json?['hotel_id']?.toInt();
    type = json?['type']?.toString();
    priority = json?['priority']?.toInt();
    menuSectionId = json?['menu_section_id']?.toInt();
    menuItemId = json?['menu_item_id']?.toInt();
    imageUrl = json?['image_url']?.toString();
    if (json?['title'] != '') {
      title = jsonDecode(json?['title'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    }
    url = json?['url']?.toString();
    createdAt = json?['created_at']?.toString();
    updatedAt = json?['updated_at']?.toString();
  }
}
