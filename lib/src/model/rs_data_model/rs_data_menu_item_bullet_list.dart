part of 'rs_data_model.dart';
@embedded
class RSDataMenuItemBulletListModel {
  int? id;
  int? menuItemId;
  List<RSDataTitleLanguageModel>? title;

  RSDataMenuItemBulletListModel({this.id, this.menuItemId, this.title});

  RSDataMenuItemBulletListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    title = getLanguage(data: json['title']);
  }

  toJson() {
    return {
      'id': id,
      'menu_item_id': menuItemId,
      'title': languageToMap(data: title),
    };
  }
}
