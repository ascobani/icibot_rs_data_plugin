part of 'rs_data_model.dart';
@embedded
class RSDataMenuItemBulletListModel {
  int? id;
  int? menuItemId;
  String? title;

  RSDataMenuItemBulletListModel({this.id, this.menuItemId, this.title});

  RSDataMenuItemBulletListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    title = json['title'];
  }
}
