part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemBookDetailsModel {
  int? id;
  int? menuItemId;
  int? menuItemBookId;

  /// Başlangıç zamanı sadece saat ve dakika olarak girilir
  DateTime? startTime;

  /// Biriş Zamanı sadece saat ve dakika olarak girilir
  DateTime? endTime;

  /// İlgili Rezervasyon Çizelgesinin Adı
  List<RSDataTitleLanguageModel>? name;

  /// Rezervasyon yapılabilir mi?
  bool? bookable;

  /// Sıklık, Mesela 10:00 da başlıyor 20 yazılırsa 10:20, 10:40 gibi
  int? interval;

  /// Rezervasyon fiyatı. Alacart rezervasyonları için mesela
  double? price;

  /// Fırsat fiyatı var mı
  bool? activateOffer;

  /// Eğer bir fırsat fiyatı varsa bu fırsat fiyatını yazınız
  double? offerPrice;

  /// Fırsat Başlığı. Örneğin süper fırsat gibi
  String? offerTitle;

  /// Para Birimi
  String? currencyCode;

  /// Görüntülenme sayısı
  int? viewCount;

  /// Rezervasyon limiti
  int? limit;

  /// Çocukların kabul edilip edilmeyeceğini belirtir
  bool? isChildAccept;

  /// 7-12 yaş aralığı
  double? childPrice;

  /// 0-6 yaş aralığı
  double? babyPrice;
  int? maximumNumberOfPeoplePerReservation;

  /// Sadece iç rezervasyonlar kabul edilir. Panel üzerinden alınacak rezervasyonlarda görülür ancak misafirler için bu rezervasyonu kabul etmez
  ///
  /// defoult: false
  bool? acceptOnlyInternalReservation;

  List<RSDataBookDetailReservationGroupModel>? bookDetailResGroup;

  RSDataMenuItemBookDetailsModel({
    this.id,
    this.menuItemId,
    this.menuItemBookId,
    this.startTime,
    this.endTime,
    this.name,
    this.bookable,
    this.interval,
    this.price,
    this.activateOffer,
    this.offerPrice,
    this.offerTitle,
    this.currencyCode,
    this.viewCount,
    this.limit,
    this.isChildAccept,
    this.childPrice,
    this.babyPrice,
    this.maximumNumberOfPeoplePerReservation,
    this.acceptOnlyInternalReservation,
    this.bookDetailResGroup,
  });

  RSDataMenuItemBookDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    menuItemBookId = json['menu_item_book_id'];
    startTime = DateTime.parse(json['start_time']);
    endTime = DateTime.parse(json['end_time']);
    name = getLanguage(data: json['name']);
    bookable = json['bookable'];
    interval = json['interval'];
    price = json['price'].toDouble();
    activateOffer = json['activate_offer'];
    offerPrice = json['offer_price'].toDouble();
    offerTitle = json['offer_title'];
    currencyCode = json['currency_code'];
    viewCount = json['view_count'];
    limit = json['limit'];
    isChildAccept = json['is_child_accept'].toDouble();
    childPrice = json['child_price'].toDouble();
    babyPrice = json['baby_price'];
    maximumNumberOfPeoplePerReservation =
        json['maximum_number_of_people_per_reservation'];
    acceptOnlyInternalReservation = json['accept_only_internal_reservation'];

    bookDetailResGroup = json['book_detail_res_group']
        .map<RSDataBookDetailReservationGroupModel>(
            (e) => RSDataBookDetailReservationGroupModel.fromJson(e))
        .toList();
  }
}
