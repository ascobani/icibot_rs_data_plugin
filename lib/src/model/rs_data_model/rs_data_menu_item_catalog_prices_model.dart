part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemCatalogPricesModel {
  int? id;
  int? menuItemCatalogGroupId;
  int? menuItemCatalogModifierGroupId;
  int? menuItemCatalogId;
  int? menuItemId;
  double? price;
  String? size;
  int? priority;
  bool? activateOffer;
  double? offerPrice;
  String? offerTitle;
  String? currencyCode;
  bool? isModifier;
  int? menuItemCatalogModifierId;
  int? reservationBlockTimeValue;
  String? reservationBlockTimeType;
  int? maximumLimit;
  bool? canBePurchasedWithLoyaltyPoints;
  double? loyaltyPointsExchangeValue;
  String? createdAt;
  int? createdBy;
  String? updatedAt;
  int? updatedBy;

  RSDataMenuItemCatalogPricesModel(
      {this.id,
      this.menuItemCatalogGroupId,
      this.menuItemCatalogModifierGroupId,
      this.menuItemCatalogId,
      this.menuItemId,
      this.price,
      this.size,
      this.priority,
      this.activateOffer,
      this.offerPrice,
      this.offerTitle,
      this.currencyCode,
      this.isModifier,
      this.menuItemCatalogModifierId,
      this.reservationBlockTimeValue,
      this.reservationBlockTimeType,
      this.maximumLimit,
      this.canBePurchasedWithLoyaltyPoints,
      this.loyaltyPointsExchangeValue,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy});

  RSDataMenuItemCatalogPricesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemCatalogGroupId = json['menu_item_catalog_group_id'];
    menuItemCatalogModifierGroupId =
        json['menu_item_catalog_modifier_group_id'];
    menuItemCatalogId = json['menu_item_catalog_id'];
    menuItemId = json['menu_item_id'];
    price = json['price'].toDouble();
    size = json['size'];
    priority = json['priority'];
    activateOffer = json['activate_offer'];
    offerPrice = json['offer_price'].toDouble();
    offerTitle = json['offer_title'];
    currencyCode = json['currency_code'];
    isModifier = json['is_modifier'];
    menuItemCatalogModifierId = json['menu_item_catalog_modifier_id'];
    reservationBlockTimeValue = json['reservation_block_time_value'];
    reservationBlockTimeType = json['reservation_block_time_type'];
    maximumLimit = json['maximum_limit'];
    canBePurchasedWithLoyaltyPoints =
        json['can_be_purchased_with_loyalty_points'];
    loyaltyPointsExchangeValue = json['loyalty_points_exchange_value'].toDouble();
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }
}
