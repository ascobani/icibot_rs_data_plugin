part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemCatalogsModel {
  int? id;
  int? menuItemCatalogGroupId;
  int? menuItemId;
  int? priority;
  String? name;
  String? description;
  bool? cannotBeSold;
  int? rewardPoint;
  int? vat;
  String? termsAndConditions;
  String? usageTerms;
  String? startingDate;
  String? endingDate;
  int? inventory;
  String? capacityType;
  String? expirePeriodType;
  int? expirePeriod;
  List<RSDataMenuItemCatalogPricesModel>? menuItemCatalogPrices;
  List<String>? restrictedMenuItemCapacities; //TODO Check the model
  List<String>? menuItemCatalogModifierGroups; //TODO Check the model
  List<RSDataImagesModel>? images;
  List<RSDataTagsModel>? tags; // TODO: CheckModel

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
    name = json['name'];
    description = json['description'];
    cannotBeSold = json['cannot_be_sold'];
    rewardPoint = json['reward_point'];
    vat = json['vat'];
    termsAndConditions = json['terms_and_conditions'];
    usageTerms = json['usage_terms'];
    startingDate = json['starting_date'];
    endingDate = json['ending_date'];
    inventory = json['inventory'];
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
          .map<String>((e) => e.toString())
          .toList();
    }
    images = json['images'] != null
        ? (json['images'] as List)
            .map((i) => RSDataImagesModel.fromJson(i))
            .toList()
        : null;
  }
}
