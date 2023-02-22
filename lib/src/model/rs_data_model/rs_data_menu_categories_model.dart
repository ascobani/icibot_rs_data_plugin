

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
    if (json?['title'].contains(':') && json?['title'] != '') {
      title = jsonDecode(json?['title'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    } else {
      title = [RSDataTitleLanguageModel(title: json?['title'], locale: 'default')];
    }
    hotelId = json?['hotel_id'];
    menuItemId = json?['menu_item_id'];
    priority = json?['priority'];
    default0SurveyHeaderId = json?['default:0;survey_header_id'];
    surveyHeader = RSDataSurveyHeaderModel.fromJson(json?['survey_header']);
  }
}
