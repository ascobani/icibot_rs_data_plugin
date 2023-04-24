part of 'rs_data_model.dart';

@embedded
class MenuItemCatalogModifierGroup {
  int? id;

  /// Hotel Id
  int? hotelID;

  /// Menu Item ID restoran id gibi
  int? menuSectionID;

  /// Menu Catalog Group
  int? menuItemCatalogGroupID;

  /// Catalog Modifier Group için belirlenen Grup adı
  List<RSDataTitleLanguageModel>? name;

  /// Multi select durumunda en fazla kaçtane seçmesine izin vereceğiz.
  int? maximumItem;

  /// expand ve collapse işlemleri için kullanılacak
  bool? expand;

  /// Bu gruptaki birisini mutlaka seçilmesi gerekiyorsa işaretlenmeli
  bool? mandatory;

  List<RSDataMenuItemCatalogPricesModel>? prices;

  DateTime? createdAt;
  int? createdBy;
  DateTime? updatedAt;
  int? updatedBy;

  MenuItemCatalogModifierGroup({
    this.id,
    this.hotelID,
    this.menuSectionID,
    this.menuItemCatalogGroupID,
    this.name,
    this.maximumItem,
    this.expand,
    this.mandatory,
    this.prices,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
  });

  MenuItemCatalogModifierGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hotelID = json['hotel_id'];
    menuSectionID = json['menu_section_id'];
    menuItemCatalogGroupID = json['menu_item_catalog_group_id'];
    name = getLanguage(data: json['name']);
    maximumItem = json['maximum_item'];
    expand = json['expand'];
    mandatory = json['mandatory'];
    if (json['prices'] != null) {
      prices = <RSDataMenuItemCatalogPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(RSDataMenuItemCatalogPricesModel.fromJson(v));
      });
    }
    createdAt = DateTime.tryParse(json['created_at']);
    createdBy = json['created_by'];
    updatedAt = DateTime.tryParse(json['updated_at']);
    updatedBy = json['updated_by'];
  }

  toJson() {
    return {
      'id': id,
      'hotel_id': hotelID,
      'menu_section_id': menuSectionID,
      'menu_item_catalog_group_id': menuItemCatalogGroupID,
      'name': languageToMap(data: name),
      'maximum_item': maximumItem,
      'expand': expand,
      'mandatory': mandatory,
      'prices': prices?.map((e) => e.toJson()).toList(),
      'created_at': createdAt?.toIso8601String(),
      'created_by': createdBy,
      'updated_at': updatedAt?.toIso8601String(),
      'updated_by': updatedBy,
    };
  }
}
