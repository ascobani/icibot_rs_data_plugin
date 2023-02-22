part of 'rs_data_model.dart';

class RSDataMenuItemsModel {
  int? icibotId;
  int? menuSectionId;
  List<RSDataTitleLanguageModel>? menuSectionName;
  int? menuCategoryId;
  List<RSDataTitleLanguageModel>? menuCategoryName;
  int? hotelId;
  List<RSDataTitleLanguageModel>? name;
  List<RSDataTitleLanguageModel>? description;
  String? imageUrl;
  String? email;
  String? phone;
  String? youtube;
  String? webSiteTitle;
  String? webSiteUrl;
  String? virtualTourUrl;
  String? dressCode;
  String? locationDescription;
  bool? activateMapLocation;
  String? mapLocation;
  String? mapLocationPointIcon;
  bool? showTitleAndDescription;
  bool? showBulletList;
  bool? showDressCode;
  bool? showLocationDescription;
  bool? showEmail;
  bool? showPhoneNumber;
  bool? showYoutube;
  bool? showWebSite;
  bool? showVirtualTour;
  String? bookingSystem;
  String? externalBookingEngineUrl;
  String? emailsOfTheStaff;
  bool? seeMore;
  int? seeMoreMenuSectionId;
  bool? showFollow;
  bool? showBookingDate;
  bool? showLoyaltyPoint;
  int? loyaltyMinPoint;
  int? loyaltyMaxPoint;
  bool? showSurvey;
  String? surveyTitle;
  String? surveyDescription;
  int? priority;
  int? childCount;
  int? adultCount;
  int? babyCount;
  String? urlLinks;
  String? urlTitle;
  bool? autoApprove;
  String? photos;
  bool? fixMenu;
  bool? active;
  bool? showOnHomePage;
  bool? locationControlMandatory;
  String? userIdsForNotifications;
  int? maximumReservation;
  String? reservationRestrictionType;
  int? reservationRestrictionValue;
  bool? showDateRange;
  DateTime? startDate;
  DateTime? endDate;
  bool? selectCapacity;
  bool? noAccommodationRequired;
  bool? order;
  bool? orderWithReservation;
  String? groupName;
  int? accommodationPeriod;
  bool? showMainCatalogGroup;
  bool? featured;
  String? paymentType;
  bool? activateDeliveryRange;
  int? deliveryRange;
  bool? activateDeliveryPostCodes;
  String? deliveryPostCodes;
  bool? activateExcludedPostCodes;
  String? excludedPostCodes;
  bool? activateFreeDeliveryOverAmount;
  int? freeDeliveryOverAmount;
  int? deliveryPriceDistanceRange_1;
  String? deliveryPriceType_1;
  int? deliveryUnitPrice_1;
  int? deliveryPriceDistanceRange_2;
  String? deliveryPriceType_2;
  int? deliveryUnitPrice_2;
  int? deliveryPriceDistanceRange_3;
  String? deliveryPriceType_3;
  int? deliveryUnitPrice_3;
  bool? orderSystem;
  bool? showPrice;
  bool? showComment;
  bool? showOrderInfo;
  bool? onlyTable;
  bool? closeAutoReplyMessage;
  bool? isUpsell;
  String? referenceCode;
  int? surveyHeaderId;
  RSDataSurveyHeaderModel? surveyHeader;

  RSDataMenuItemsModel({
    this.icibotId,
    this.menuSectionId,
    this.menuSectionName,
    this.menuCategoryId,
    this.menuCategoryName,
    this.hotelId,
    this.name,
    this.description,
    this.imageUrl,
    this.email,
    this.phone,
    this.youtube,
    this.webSiteTitle,
    this.webSiteUrl,
    this.virtualTourUrl,
    this.dressCode,
    this.locationDescription,
    this.activateMapLocation,
    this.mapLocation,
    this.mapLocationPointIcon,
    this.showTitleAndDescription,
    this.showBulletList,
    this.showDressCode,
    this.showLocationDescription,
    this.showEmail,
    this.showPhoneNumber,
    this.showYoutube,
    this.showWebSite,
    this.showVirtualTour,
    this.bookingSystem,
    this.externalBookingEngineUrl,
    this.emailsOfTheStaff,
    this.seeMore,
    this.seeMoreMenuSectionId,
    this.showFollow,
    this.showBookingDate,
    this.showLoyaltyPoint,
    this.loyaltyMinPoint,
    this.loyaltyMaxPoint,
    this.showSurvey,
    this.surveyTitle,
    this.surveyDescription,
    this.priority,
    this.childCount,
    this.adultCount,
    this.babyCount,
    this.urlLinks,
    this.urlTitle,
    this.autoApprove,
    this.photos,
    this.fixMenu,
    this.active,
    this.showOnHomePage,
    this.locationControlMandatory,
    this.userIdsForNotifications,
    this.maximumReservation,
    this.reservationRestrictionType,
    this.reservationRestrictionValue,
    this.showDateRange,
    this.startDate,
    this.endDate,
    this.selectCapacity,
    this.noAccommodationRequired,
    this.order,
    this.orderWithReservation,
    this.groupName,
    this.accommodationPeriod,
    this.showMainCatalogGroup,
    this.featured,
    this.paymentType,
    this.activateDeliveryRange,
    this.deliveryRange,
    this.activateDeliveryPostCodes,
    this.deliveryPostCodes,
    this.activateExcludedPostCodes,
    this.excludedPostCodes,
    this.activateFreeDeliveryOverAmount,
    this.freeDeliveryOverAmount,
    this.deliveryPriceDistanceRange_1,
    this.deliveryPriceType_1,
    this.deliveryUnitPrice_1,
    this.deliveryPriceDistanceRange_2,
    this.deliveryPriceType_2,
    this.deliveryUnitPrice_2,
    this.deliveryPriceDistanceRange_3,
    this.deliveryPriceType_3,
    this.deliveryUnitPrice_3,
    this.orderSystem,
    this.showPrice,
    this.showComment,
    this.showOrderInfo,
    this.onlyTable,
    this.closeAutoReplyMessage,
    this.isUpsell,
    this.referenceCode,
    this.surveyHeaderId,
    this.surveyHeader,
  });

  RSDataMenuItemsModel.fromJson(Map<String, dynamic> json) {
    icibotId = json['id'];
    menuSectionId = json['menu_section_id'];
    if (json['menu_section_name'] != '') {
      menuSectionName = jsonDecode(json['menu_section_name'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    }
    menuCategoryId = json['menu_category_id'];
    if (json['menu_category_name'] != '') {
      menuCategoryName = jsonDecode(json['menu_category_name'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    }
    hotelId = json['hotel_id'];
    if (json['name'] != '') {
      name = jsonDecode(json['name'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    }
    if (json['description'] != '') {
      description = jsonDecode(json['description'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    }
    imageUrl = json['image_url'];
    email = json['email'];
    phone = json['phone'];
    youtube = json['youtube'];
    webSiteTitle = json['web_site_title'];
    webSiteUrl = json['web_site_url'];
    virtualTourUrl = json['virtual_tour_url'];
    dressCode = json['dress_code'];
    locationDescription = json['location_description'];
    activateMapLocation = json['activate_map_location'];
    mapLocation = json['map_location'];
    mapLocationPointIcon = json['map_location_point_icon'];
    showTitleAndDescription = json['show_title_and_description'];
    showBulletList = json['show_bullet_list'];
    showDressCode = json['show_dress_code'];
    showLocationDescription = json['show_location_description'];
    showEmail = json['show_email'];
    showPhoneNumber = json['show_phone_number'];
    showYoutube = json['show_youtube'];
    showWebSite = json['show_web_site'];
    showVirtualTour = json['show_virtual_tour'];
    bookingSystem = json['booking_system'];
    externalBookingEngineUrl = json['external_booking_engine_url'];
    emailsOfTheStaff = json['emails_of_the_staff'];
    seeMore = json['see_more'];
    seeMoreMenuSectionId = json['see_more_menu_section_id'];
    showFollow = json['show_follow'];
    showBookingDate = json['show_booking_date'];
    showLoyaltyPoint = json['show_loyalty_point'];
    loyaltyMinPoint = json['loyalty_min_point'];
    loyaltyMaxPoint = json['loyalty_max_point'];
    showSurvey = json['show_survey'];
    surveyTitle = json['survey_title'];
    surveyDescription = json['survey_description'];
    priority = json['priority'];
    childCount = json['child_count'];
    adultCount = json['adult_count'];
    babyCount = json['baby_count'];
    urlLinks = json['url_links'];
    urlTitle = json['url_title'];
    autoApprove = json['auto_approve'];
    photos = json['photos'];
    fixMenu = json['fix_menu'];
    active = json['active'];
    showOnHomePage = json['show_on_home_page'];
    locationControlMandatory = json['location_control_mandatory'];
    userIdsForNotifications = json['user_ids_for_notifications'];
    maximumReservation = json['maximum_reservation'];
    reservationRestrictionType = json['reservation_restriction_type'];
    reservationRestrictionValue = json['reservation_restriction_value'];
    showDateRange = json['show_date_range'];
    startDate = DateTime.parse(json['start_date']);
    endDate = DateTime.parse(json['end_date']);
    selectCapacity = json['select_capacity'];
    noAccommodationRequired = json['no_accommodation_required'];
    order = json['order'];
    orderWithReservation = json['order_with_reservation'];
    groupName = json['group_name'];
    accommodationPeriod = json['accommodation_period'];
    showMainCatalogGroup = json['show_main_catalog_group'];
    featured = json['featured'];
    paymentType = json['payment_type'];
    activateDeliveryRange = json['activate_delivery_range'];
    deliveryRange = json['delivery_range'];
    activateDeliveryPostCodes = json['activate_delivery_post_codes'];
    deliveryPostCodes = json['delivery_post_codes'];
    activateExcludedPostCodes = json['activate_excluded_post_codes'];
    excludedPostCodes = json['excluded_post_codes'];
    activateFreeDeliveryOverAmount = json['activate_free_delivery_over_amount'];
    freeDeliveryOverAmount = json['free_delivery_over_amount'];
    deliveryPriceDistanceRange_1 = json['delivery_price_distance_range_1'];
    deliveryPriceType_1 = json['delivery_price_type_1'];
    deliveryUnitPrice_1 = json['delivery_unit_price_1'];
    deliveryPriceDistanceRange_2 = json['delivery_price_distance_range_2'];
    deliveryPriceType_2 = json['delivery_price_type_2'];
    deliveryUnitPrice_2 = json['delivery_unit_price_2'];
    deliveryPriceDistanceRange_3 = json['delivery_price_distance_range_3'];
    deliveryPriceType_3 = json['delivery_price_type_3'];
    deliveryUnitPrice_3 = json['delivery_unit_price_3'];
    orderSystem = json['order_system'];
    showPrice = json['show_price'];
    showComment = json['show_comment'];
    showOrderInfo = json['show_order_info'];
    onlyTable = json['only_table'];
    closeAutoReplyMessage = json['close_auto_reply_message'];
    isUpsell = json['is_upsell'];
    referenceCode = json['reference_code'];
    surveyHeaderId = json['survey_header_id'];
    surveyHeader = RSDataSurveyHeaderModel.fromJson(json['survey_header']);
  }
}
