part of 'rs_data_model.dart';

@embedded
class RSDataMenuItemBooksModel {
  int? id;
  int? menuItemId;
  bool? monday;
  bool? tuesday;
  bool? wednesday;
  bool? thursday;
  bool? friday;
  bool? saturday;
  bool? sunday;
  bool? showAdvancedOptions;
  int? bookableInAdvanceDays;

  /// Rezervasyondan kaç dakika öncesine kadar rezervasyon yapılmasına izin verilecek. Örneğin 60 dakika girildi ise. 60 dakika kalasıya kadar rezervasyon yapılmasına izin verilecek.
  int? minimumTimeInAdvanceMinute;

  /// Rezervasyondan kaç ? öncesine kadar rezervasyon yapılmasına izin verilecek. Örneğin 60 dakika girildi ise. 60 dakika kalasıya kadar rezervasyon yapılmasına izin verilecek.
  int? minimumTimeInAdvanceValue;

  /// Day, Hour, Minute" gorm:"comment:Minimum time In Advance Minute alanının tipini ifade eder. Minute lafının olmadığını farzedin.
  String? minimumTimeInAdvanceType;
  bool? reservationUnitCustom;
  String? reservationCustomUnitName;
  String? responseForPendingService;
  String? responceForConfirmedService;
  String? callToActionText;
  String? commentsText;
  bool? isNoReservationAfterThisTime;

  /// Belirtilen saatten sonra rezervasyon alınamayacak
  DateTime? noReservationAfterThisTime;

  RSDataMenuItemBooksModel(
      {this.id,
      this.menuItemId,
      this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday,
      this.sunday,
      this.showAdvancedOptions,
      this.bookableInAdvanceDays,
      this.minimumTimeInAdvanceMinute,
      this.minimumTimeInAdvanceValue,
      this.minimumTimeInAdvanceType,
      this.reservationUnitCustom,
      this.reservationCustomUnitName,
      this.responseForPendingService,
      this.responceForConfirmedService,
      this.callToActionText,
      this.commentsText,
      this.isNoReservationAfterThisTime,
      this.noReservationAfterThisTime});

  RSDataMenuItemBooksModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuItemId = json['menu_item_id'];
    monday = json['monday'];
    tuesday = json['tuesday'];
    wednesday = json['wednesday'];
    thursday = json['thursday'];
    friday = json['friday'];
    saturday = json['saturday'];
    sunday = json['sunday'];
    showAdvancedOptions = json['show_advanced_options'];
    bookableInAdvanceDays = json['bookable_in_advance_days'];
    minimumTimeInAdvanceMinute = json['minimum_time_in_advance_minute'];
    minimumTimeInAdvanceValue = json['minimum_time_in_advance_value'];
    minimumTimeInAdvanceType = json['minimum_time_in_advance_type'];
    reservationUnitCustom = json['reservation_unit_custom'];
    reservationCustomUnitName = json['reservation_custom_unit_name'];
    responseForPendingService = json['response_for_pending_service'];
    responceForConfirmedService = json['responce_for_confirmed_service'];
    callToActionText = json['call_to_action_text'];
    commentsText = json['comments_text'];
    isNoReservationAfterThisTime = json['is_no_reservation_after_this_time'];
    noReservationAfterThisTime = DateTime.tryParse(
        json['no_reservation_after_this_time']);
  }
}
