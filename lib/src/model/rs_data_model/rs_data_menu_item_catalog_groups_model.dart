part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemCatalogGroupsModel {
  int? id;
  int? menuItemId;
  String? name;
  int? priority;
  String? mainGroup;
  int? maxPerPerson;

  List<RSDataImagesModel>? images;
  List<RSDataMenuItemCatalogsModel>? menuItemCatalogs;

  RSDataMenuItemCatalogGroupsModel(
      {this.id,
      this.menuItemId,
      this.name,
      this.priority,
      this.mainGroup,
      this.maxPerPerson,
      this.menuItemCatalogs,
      this.images});

  RSDataMenuItemCatalogGroupsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    name = json['name'];
    priority = json['priority'];
    mainGroup = json['main_group'];
    maxPerPerson = json['max_per_person'];
    if (json['menu_item_catalogs'] != null) {
      menuItemCatalogs = json['menu_item_catalogs']
          .map<RSDataMenuItemCatalogsModel>(
              (e) => RSDataMenuItemCatalogsModel.fromJson(e))
          .toList();
    }
    if (json['images'] != null) {
      images = json['images']
          .map<RSDataImagesModel>((e) => RSDataImagesModel.fromJson(e))
          .toList();
    }
  }
}
