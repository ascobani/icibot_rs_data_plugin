part of 'rs_data_model.dart';

@embedded
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
  DateTime? createdAt;
  DateTime? updatedAt;

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
    title = getLanguage(data: json?['title']);
    url = json?['url'];
    createdAt = DateTime.tryParse(json?['created_at']);
    updatedAt = DateTime.tryParse(json?['updated_at']);
  }

  toJson() {
    return {
      'id': icibotId,
      'hotel_id': hotelId,
      'type': type,
      'priority': priority,
      'menu_section_id': menuSectionId,
      'menu_item_id': menuItemId,
      'image_url': imageUrl,
      'title': languageToMap(data: title),
      'url': url,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
