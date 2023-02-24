part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemCatalogPricesModel {
  int? id;

  /// Menu Catalog Group
  int? menuItemCatalogGroupId;

  /// Modifierları gruplamak için kullanacağız
  int? menuItemCatalogModifierGroupId;
  int? menuItemCatalogId;

  /// Menu Item ID restoran id gibi
  int? menuItemId;

  /// Fiyat
  double? price;

  /// Ürün çeşidi boyutu
  List<RSDataTitleLanguageModel>? size;

  /// Sıralama için kullanılacak
  int? priority;

  /// Fırsat fiyatı var.
  bool? activateOffer;

  /// Fırsat fiyatı
  double? offerPrice;

  /// Fırsat Etiketi
  List<RSDataTitleLanguageModel>? offerTitle;

  /// Döviz Kodu
  String? currencyCode;

  /// Ekstra olarak ürüne eklenebilecek malzemeleri bu işaretli olarak kullanılacak.
  bool? isModifier;

  /// Eğer modifier ise Modifier Id.
  int? menuItemCatalogModifierId;

  /// rezerasyon alan itemlar için; bu item ne kadar süre kapatılmış  1 ,  90
  int? reservationBlockTimeValue;

  /// rezerasyon alan itemlar için; bu item ne kadar süre kapatılmış   saat dakika
  String? reservationBlockTimeType;

  /// Maximum limit
  int? maximumLimit;

  /// Sadakat puanları ile satın alınabilir.
  bool? canBePurchasedWithLoyaltyPoints;

  /// t:Misafir sadakat puanı ile bu ürünü almak isterse kaç puan karşılığı bu ürünü alabilir.
  double? loyaltyPointsExchangeValue;

  /// Oluşturma Tarihi
  DateTime? createdAt;

  /// Kaydı Oluşturan
  int? createdBy;

  /// Değişiklik Tarihi
  DateTime? updatedAt;

  /// Kaydı Değiştiren
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
    size = getLanguage(data: json['size']);
    priority = json['priority'];
    activateOffer = json['activate_offer'];
    offerPrice = json['offer_price'].toDouble();
    offerTitle = getLanguage(data:json['offer_title']);
    currencyCode = json['currency_code'];
    isModifier = json['is_modifier'];
    menuItemCatalogModifierId = json['menu_item_catalog_modifier_id'];
    reservationBlockTimeValue = json['reservation_block_time_value'];
    reservationBlockTimeType = json['reservation_block_time_type'];
    maximumLimit = json['maximum_limit'];
    canBePurchasedWithLoyaltyPoints =
        json['can_be_purchased_with_loyalty_points'];
    loyaltyPointsExchangeValue =
        json['loyalty_points_exchange_value'].toDouble();
    createdAt = DateTime.parse(json['created_at']);
    createdBy = json['created_by'];
    updatedAt = DateTime.parse(json['updated_at']);
    updatedBy = json['updated_by'];
  }
}
