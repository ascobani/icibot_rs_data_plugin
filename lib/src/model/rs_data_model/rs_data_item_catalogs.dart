part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemCatalogsModel {
  int? id;

  /// Menu Catalog Group
  int? menuItemCatalogGroupId;

  /// Hangi Menu Item ile ilişkili
  int? menuItemId;

  /// Gösterim sırasında sıralama için kullanılacak.
  int? priority;

  /// İlgili ürünün adı
  List<RSDataTitleLanguageModel>? name;

  /// ilgili ürün ile ilgili açıklamalar girilecek
  List<RSDataTitleLanguageModel>? description;

  /// Bu ürünü satış listesinden kaldır. Satılamaz yap.
  bool? cannotBeSold;

  /// Ödül Puanı. Bu alan aktif olarak kullanılmıyor. Bir süre sonra kaldırabiliriz
  double? rewardPoint;

  /// KDV Oranı
  double? vat;

  /// Şartlar ve Koşullar
  String? termsAndConditions;

  /// Kullanım Açıklamaları
  String? usageTerms;

  /// Ürünün yayına alınma tarihi
  DateTime? startingDate;

  /// Ürünün yayından kaldırılma tarihi
  DateTime? endingDate;

  /// Ürünün satılabilir miktarı. Yani Stok
  double? inventory;

  /// Seçenekler şunlar olacak Date Per Person (Aynı tarihte sadece kişi sayısı kadar), Date Per Order (Aynı tarihte sipariş sayısı kadar), Quantity (Sadece Miktar kadar)"
  String? capacityType;

  /// Ürünün satın alındıktan sonra ne kadar sürede kullanıması gerektiği. Seçenekler Gün,Ay
  String? expirePeriodType;

  /// Ürünün satın alındıktan sonra ne kadar sürede kullanıması gerektiği
  int? expirePeriod;
  List<RSDataMenuItemCatalogPricesModel>? menuItemCatalogPrices;

  /// xxxxxx
  List<String>? restrictedMenuItemCapacities;
  List<MenuItemCatalogModifierGroup>? menuItemCatalogModifierGroups;
  List<RSDataImagesModel>? images;
  List<RSDataTagsModel>? tags;

  RSDataMenuItemCatalogsModel({
    this.id,
    this.menuItemCatalogGroupId,
    this.menuItemId,
    this.priority,
    this.name,
    this.description,
    this.cannotBeSold,
    this.rewardPoint,
    this.vat,
    this.restrictedMenuItemCapacities,
    this.termsAndConditions,
    this.usageTerms,
    this.startingDate,
    this.endingDate,
    this.inventory,
    this.capacityType,
    this.expirePeriodType,
    this.expirePeriod,
    this.menuItemCatalogPrices,
    this.menuItemCatalogModifierGroups,
    this.images,
    this.tags,
  });

  RSDataMenuItemCatalogsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemCatalogGroupId = json['menu_item_catalog_group_id'];
    menuItemId = json['menu_item_id'];
    priority = json['priority'];
    name = getLanguage(data: json['name']);
    description = getLanguage(data: json['description']);
    cannotBeSold = json['cannot_be_sold'];
    rewardPoint = json['reward_point'].toDouble();
    vat = json['vat'].toDouble();
    termsAndConditions = json['terms_and_conditions'];
    usageTerms = json['usage_terms'];
    startingDate = DateTime.parse(json['starting_date']);
    endingDate = DateTime.parse(json['ending_date']);
    inventory = json['inventory'].toDouble();
    capacityType = json['capacity_type'];
    expirePeriodType = json['expire_period_type'];
    expirePeriod = json['expire_period'];
    if (json['tags'] != null) {
      tags = json['tags']
          .map<RSDataTagsModel>((e) => RSDataTagsModel.fromJson(e))
          .toList();
    }
    menuItemCatalogPrices = json['menu_item_catalog_prices'] != null
        ? (json['menu_item_catalog_prices'] as List)
            .map((i) => RSDataMenuItemCatalogPricesModel.fromJson(i))
            .toList()
        : null;
    if (json['restricted_menu_item_capacities'] != null) {
      restrictedMenuItemCapacities = json['restricted_menu_item_capacities']
          .map<String>((e) => e.toString())
          .toList();
    }
    if (json['restricted_menu_item_capacities'] != null) {
      menuItemCatalogModifierGroups = json['menu_item_catalog_modifier_groups']
          .map<MenuItemCatalogModifierGroup>(
              (e) => MenuItemCatalogModifierGroup.fromJson(e))
          .toList();
    }
    images = json['images'] != null
        ? (json['images'] as List)
            .map((i) => RSDataImagesModel.fromJson(i))
            .toList()
        : null;
  }
}
