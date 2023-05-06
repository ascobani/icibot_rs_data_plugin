part of 'rs_data_model.dart';

@embedded
class RSDataMenuCategoriesModel {
  int? icibotId;
  int? menuSectionId;
  List<RSDataTitleLanguageModel>? title;
  int? hotelId;
  int? menuItemId;
  int? priority;
  List<RSDataMenuItemsModel>? menuItems;
  String? images;
  int? default0SurveyHeaderId;
  RSDataSurveyHeaderModel? surveyHeader;

  RSDataMenuCategoriesModel({
    this.icibotId,
    this.menuSectionId,
    this.title,
    this.hotelId,
    this.menuItemId,
    this.priority,
    this.menuItems,
    this.images,
    this.default0SurveyHeaderId,
    this.surveyHeader,
  });

  RSDataMenuCategoriesModel.fromJson(Map<String, dynamic>? json) {
    icibotId = json?['id'];
    menuSectionId = json?['menu_section_id'];
    title = getLanguage(data: json?['title']);
    hotelId = json?['hotel_id'];
    menuItemId = json?['menu_item_id'];
    if (json?['menu_items'] != null) {
      menuItems = json?['menu_items']
          .map<RSDataMenuItemsModel>((e) => RSDataMenuItemsModel.fromJson(e))
          .toList();
    }
    priority = json?['priority'];
    default0SurveyHeaderId = json?['default:0;survey_header_id'];
    surveyHeader = RSDataSurveyHeaderModel.fromJson(json?['survey_header']);
  }

  toJson() {
    return {
      'id': icibotId,
      'menu_section_id': menuSectionId,
      'title': languageToMap(data: title),
      'hotel_id': hotelId,
      'menu_item_id': menuItemId,
      // Create toJson method for RSDataMenuItemsModel
      //  'menu_items': menuItems?.map((e) => e.toJson()).toList(),
      'priority': priority,
      'default:0;survey_header_id': default0SurveyHeaderId,
      'survey_header': surveyHeader?.toJson(),
    };
  }
}
