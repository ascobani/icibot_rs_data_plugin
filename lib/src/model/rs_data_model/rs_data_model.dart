import 'dart:convert';

import 'package:isar/isar.dart';

part 'rs_data_menu_section_model.dart';

part 'rs_data_menu_items_model.dart';

part 'rs_data_menu_categories_model.dart';

part 'rs_data_title_language_model.dart';

part 'rs_data_survey_header_model.dart';

part 'rs_data_survey_model.dart';

part 'rs_data_home_page_designer_model.dart';

part 'rs_data_menu_item_title_and_descriptions_model.dart';

part 'rs_data_menu_item_bullet_list.dart';

part 'rs_data_menu_item_catalog_groups_model.dart';

part 'rs_data_images_model.dart';

part 'rs_data_item_catalogs.dart';

part 'rs_data_menu_item_catalog_prices_model.dart';

part 'rs_data_tags_model.dart';

part 'rs_data_model.g.dart';

@Collection()
class RSDataModel {
  Id id = Isar.autoIncrement;
  int? icibotId;
  int? clientId;
  int? facebookId;
  String? name;
  String? contactName;
  String? contactPhone;
  String? contactEmail;
  String? callCenter;
  String? houseKeepingPhone;
  String? masterColor;
  bool? activated;
  String? subscriptionStartDate;
  String? subscriptionEndDate;
  String? address;
  String? postCode;
  String? city;
  String? country;
  String? currencyCode;
  String? deliveryDistanceType;
  String? languages;
  String? placeId;
  String? imageUrl;
  String? photos;
  double? rating;
  String? webSiteUrl;
  String? latLng;
  String? onlineReservationUrl;
  bool? directReservation;
  String? reservationMailAddress;
  String? groupHotels;
  String? googleAnalyticsLink;
  String? yandexMetricaLink;
  String? bingLink;
  String? surveyUrl;
  String? hotelInformationTr;
  String? hotelInformationEn;
  String? hotelInformationRu;
  String? hotelInformationDe;
  String? hotelInformationFr;
  String? hotelInformationAr;
  String? hotelInformationIr;
  String? hotelInformationEs;
  String? subColor;
  String? kvkkLink;
  String? privacyPolicyLink;
  List<RSDataTitleLanguageModel>? accommodationContract;
  String? tripAdvisorLink;
  bool? mailVerificationForGuests;
  String? apiAddress;
  String? spDoctor;
  String? spSpa;
  String? spReception;
  String? spRoomService;
  String? spCustomerRelation;
  String? spTechnicalService;
  String? spManagement;
  String? planImageUrl;
  String? smYoutubeUrl;
  String? smInstagramUrl;
  String? smFacebookUrl;
  String? smTwitterUrl;
  String? smVkontakteUrl;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? mobileVersion;
  String? hotelChain;
  String? mobileVersionPublishDate;
  String? mobilePublishBy;
  bool? onlineCheckIn;
  bool? onlineCheckInImage;
  bool? onlineCheckInSignature;
  List<RSDataTitleLanguageModel>? checkInPostMessage;
  String? welcomeMessage;
  int? surveyHeaderId;
  RSDataSurveyHeaderModel? surveyHeader;
  String? surveyTitle;
  String? surveyDescription;
  String? deliveryTimeOfDay;
  int? notificationPoint;
  int? surveyPoint;
  String? subDomainName;
  String? productType;
  bool? autoSendWelcomeMail;
  List<RsDataHomePageDesignerModel>? homePageDesigner;
  String? firstLevelAlertList;
  String? secondLevelAlertList;
  String? thirdLevelAlertList;
  String? fourthLevelAlertList;
  String? negativeSurveyAlertList;
  List<RSDataMenuItemTitleAndDescriptionModel>? titleAndDescriptions;
  List<RSDataMenuItemTitleAndDescriptionModel>? faq;
  List<RSDataMenuItemsModel>? featured;
  String? email;
  String? password;
  String? phone;
  String? oneSignalAppId;
  String? oneSignalAppKey;
  String? oneSignalUserKey;
  String? appStoreLink;
  String? googlePlayLink;
  String? firebaseLink;
  bool? openForYear;
  DateTime? openDate;
  DateTime? closeDate;
  String? entryDate;
  String? releaseDate;
  String? babyAgeRange;
  String? childAgeRange;
  String? oldAgeRange;
  bool? closeRequest;
  bool? callForRequests;
  String? roomNumberValidationCode;
  bool? claimTrackingManager;
  String? hotelType;
  bool? mobilePayment;
  String? title;
  String? description;
  String? wifiName;
  String? wifiPassword;
  String? whatsappNo;
  String? viberNo;
  String? telegramNo;
  String? messengerAddress;
  String? googleMapAddress;
  bool? showWelcome;
  bool? showChat;
  String? inHouseListLoginType;
  String? inHouseListMatchingCondition;
  String? pmsApplication;
  bool? createPowerBIdata;
  String? reportDbScheme;
  bool? manuelGuestVisitConfirmation;
  String? rewardCalculationType;
  int? rewardMinPoint;
  int? rewardValue;
  String? timeZone;
  String? virtualTourUrl;
  int? upsellItemId;
  String? hotelLanguage;
  String? hotelToken;
  String? hotelTokenExpiredTime;
  String? manuelRequestOwnerType;
  int? tokenExpireSeconds;
  String? onetimeInformation;
  bool? isAccountVerifyNecessaryForRequest;
  bool? isClosedStaffChat;
  bool? operationSystem;
  bool? loyaltyManagement;
  bool? staffTracking;
  bool? qrReader;
  bool? isTaskSolutionNoteMandatory;
  bool? isTaskDescriptionMandatory;
  bool? isGiftCard;
  String? surveyAddress;
  int? checkInSurveyId;
  int? checkOutSurveyId;
  bool? autoCreateProfile;
  RsDataMenuSectionModel? bars;
  RsDataMenuSectionModel? cafes;
  RsDataMenuSectionModel? golfClub;
  RsDataMenuSectionModel? kidsClub;
  RsDataMenuSectionModel? rooms;
  RsDataMenuSectionModel? massage;
  RsDataMenuSectionModel? meetingRoom;
  RsDataMenuSectionModel? otherFacilities;
  RsDataMenuSectionModel? pools;
  RsDataMenuSectionModel? restaurants;
  RsDataMenuSectionModel? spa;
  RsDataMenuSectionModel? sport;
  RsDataMenuSectionModel? amenities;
  RsDataMenuSectionModel? housekeeping;
  RsDataMenuSectionModel? issues;
  RsDataMenuSectionModel? complaint;
  RsDataMenuSectionModel? otherServices;
  RsDataMenuSectionModel? roomServices;
  RsDataMenuSectionModel? activity;
  RsDataMenuSectionModel? dailyAnimations;
  RsDataMenuSectionModel? shows;
  RsDataMenuSectionModel? poIs;
  RsDataMenuSectionModel? tours;
  RsDataMenuSectionModel? opportunities;
  RsDataMenuSectionModel? news;
  RsDataMenuSectionModel? banner;
  RsDataMenuSectionModel? loyalityManagement;
  RsDataMenuSectionModel? roomGuide;
  RsDataMenuSectionModel? malls;
  RsDataMenuSectionModel? upsell;
  RsDataMenuSectionModel? frontOffice;
  RsDataMenuSectionModel? wedding;
  RsDataMenuSectionModel? mice;
  RsDataMenuSectionModel? avm;
  RsDataMenuSectionModel? life;
  RsDataMenuSectionModel? cinema;
  RsDataMenuSectionModel? events;
  RsDataMenuSectionModel? other1;
  RsDataMenuSectionModel? other2;
  RsDataMenuSectionModel? other3;
  RsDataMenuSectionModel? other4;
  RsDataMenuSectionModel? other5;
  RsDataMenuSectionModel? other6;
  RsDataMenuSectionModel? other7;
  RsDataMenuSectionModel? other8;
  RsDataMenuSectionModel? video;
  RsDataMenuSectionModel? services;
  RsDataMenuSectionModel? giftCard;
  RsDataMenuSectionModel? guestny;

  RSDataModel({
    this.mobileVersion,
    this.upsell,
    this.malls,
    this.frontOffice,
    this.roomGuide,
    this.loyalityManagement,
    this.banner,
    this.tours,
    this.news,
    this.shows,
    this.poIs,
    this.dailyAnimations,
    this.roomServices,
    this.otherServices,
    this.complaint,
    this.housekeeping,
    this.issues,
    this.spa,
    this.restaurants,
    this.amenities,
    this.pools,
    this.sport,
    this.meetingRoom,
    this.bars,
    this.icibotId,
    this.massage,
    this.description,
    this.name,
    this.languages,
    this.imageUrl,
    this.rooms,
    this.kidsClub,
    this.opportunities,
    this.golfClub,
    this.phone,
    this.entryDate,
    this.releaseDate,
    this.babyAgeRange,
    this.childAgeRange,
    this.oldAgeRange,
    this.closeRequest,
    this.callForRequests,
    this.roomNumberValidationCode,
    this.claimTrackingManager,
    this.cafes,
    this.hotelType,
    this.mobilePayment,
    this.activity,
    this.title,
    this.wifiName,
    this.wifiPassword,
    this.whatsappNo,
    this.viberNo,
    this.telegramNo,
    this.messengerAddress,
    this.googleMapAddress,
    this.showWelcome,
    this.showChat,
    this.inHouseListLoginType,
    this.inHouseListMatchingCondition,
    this.pmsApplication,
    this.createPowerBIdata,
    this.reportDbScheme,
    this.manuelGuestVisitConfirmation,
    this.rewardCalculationType,
    this.rewardMinPoint,
    this.rewardValue,
    this.timeZone,
    this.virtualTourUrl,
    this.upsellItemId,
    this.hotelLanguage,
    this.hotelToken,
    this.hotelTokenExpiredTime,
    this.tokenExpireSeconds,
    this.manuelRequestOwnerType,
    this.mice,
    this.onetimeInformation,
    this.isAccountVerifyNecessaryForRequest,
    this.isClosedStaffChat,
    this.operationSystem,
    this.wedding,
    this.loyaltyManagement,
    this.staffTracking,
    this.cinema,
    this.guestny,
    this.giftCard,
    this.avm,
    this.events,
    this.other1,
    this.other2,
    this.other3,
    this.other4,
    this.other5,
    this.other6,
    this.other7,
    this.other8,
    this.video,
    this.services,
    this.life,
    this.qrReader,
    this.isTaskSolutionNoteMandatory,
    this.isTaskDescriptionMandatory,
    this.isGiftCard,
    this.surveyAddress,
    this.checkInSurveyId,
    this.checkOutSurveyId,
    this.autoCreateProfile,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.yandexMetricaLink,
    this.bingLink,
    this.accommodationContract,
    this.tripAdvisorLink,
    this.activated,
    this.hotelInformationRu,
    this.hotelInformationEn,
    this.hotelInformationFr,
    this.hotelInformationDe,
    this.hotelInformationEs,
    this.address,
    this.apiAddress,
    this.appStoreLink,
    this.autoSendWelcomeMail,
    this.callCenter,
    this.checkInPostMessage,
    this.city,
    this.clientId,
    this.closeDate,
    this.contactEmail,
    this.contactName,
    this.contactPhone,
    this.country,
    this.currencyCode,
    this.deliveryDistanceType,
    this.deliveryTimeOfDay,
    this.directReservation,
    this.email,
    this.facebookId,
    this.faq,
    this.featured,
    this.firebaseLink,
    this.firstLevelAlertList,
    this.fourthLevelAlertList,
    this.googleAnalyticsLink,
    this.googlePlayLink,
    this.groupHotels,
    this.homePageDesigner,
    this.hotelChain,
    this.hotelInformationAr,
    this.hotelInformationIr,
    this.hotelInformationTr,
    this.houseKeepingPhone,
    this.kvkkLink,
    this.latLng,
    this.mailVerificationForGuests,
    this.masterColor,
    this.mobilePublishBy,
    this.mobileVersionPublishDate,
    this.negativeSurveyAlertList,
    this.notificationPoint,
    this.oneSignalAppId,
    this.oneSignalAppKey,
    this.oneSignalUserKey,
    this.openDate,
    this.openForYear,
    this.onlineCheckIn,
    this.onlineCheckInImage,
    this.onlineCheckInSignature,
    this.onlineReservationUrl,
    this.photos,
    this.placeId,
    this.planImageUrl,
    this.postCode,
    this.privacyPolicyLink,
    this.productType,
    this.rating,
    this.reservationMailAddress,
    this.secondLevelAlertList,
    this.smFacebookUrl,
    this.smInstagramUrl,
    this.smTwitterUrl,
    this.smYoutubeUrl,
    this.smVkontakteUrl,
    this.spCustomerRelation,
    this.spDoctor,
    this.spManagement,
    this.spReception,
    this.spRoomService,
    this.spSpa,
    this.spTechnicalService,
    this.subColor,
    this.subDomainName,
    this.subscriptionEndDate,
    this.subscriptionStartDate,
    this.surveyDescription,
    this.surveyHeader,
    this.surveyHeaderId,
    this.surveyPoint,
    this.surveyTitle,
    this.surveyUrl,
    this.thirdLevelAlertList,
    this.titleAndDescriptions,
    this.webSiteUrl,
    this.welcomeMessage,
  });

  RSDataModel.fromJson(Map<String, dynamic> json) {
    icibotId = json['id'];
    clientId = json['client_id'];
    facebookId = json['facebook_id'];
    name = json['name'];
    contactName = json['contact_name'];
    contactPhone = json['contact_phone'];
    contactEmail = json['contact_email'];
    callCenter = json['call_center'];
    houseKeepingPhone = json['house_keeping_phone'];
    masterColor = json['master_color'];
    activated = json['activated'];
    subscriptionStartDate = json['subscription_start_date'];
    subscriptionEndDate = json['subscription_end_date'];
    address = json['address'];
    postCode = json['post_code'];
    city = json['city'];
    country = json['country'];
    currencyCode = json['currency_code'];
    deliveryDistanceType = json['delivery_distance_type'];
    languages = json['languages'];
    placeId = json['place_id'];
    imageUrl = json['image_url'];
    photos = json['photos'];
    rating = json['rating'].toDouble();
    webSiteUrl = json['web_site_url'];
    latLng = json['lat_lng'];
    onlineReservationUrl = json['online_reservation_url'];
    directReservation = json['direct_reservation'];
    reservationMailAddress = json['reservation_mail_address'];
    groupHotels = json['group_hotels'];
    googleAnalyticsLink = json['google_analytics_link'];
    yandexMetricaLink = json['yandex_metrica_link'];
    bingLink = json['bing_link'];
    surveyUrl = json['survey_url'];
    hotelInformationTr = json['hotel_information_tr'];
    hotelInformationEn = json['hotel_information_en'];
    hotelInformationRu = json['hotel_information_ru'];
    hotelInformationDe = json['hotel_information_de'];
    hotelInformationFr = json['hotel_information_fr'];
    hotelInformationAr = json['hotel_information_ar'];
    hotelInformationIr = json['hotel_information_ir'];
    hotelInformationEs = json['hotel_information_es'];
    subColor = json['sub_color'];
    kvkkLink = json['kvkk_link'];
    privacyPolicyLink = json['privacy_policy_link'];
    if (json['accommodation_contract'].contains(':') &&
        json['accommodation_contract'] != '') {
      accommodationContract = jsonDecode(json['accommodation_contract'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    } else {
      accommodationContract = [
        RSDataTitleLanguageModel(
            title: json['accommodation_contract'], locale: 'default')
      ];
    }
    tripAdvisorLink = json['trip_advisor_link'];
    mailVerificationForGuests = json['mail_verification_for_guests'];
    apiAddress = json['api_address'];
    spDoctor = json['sp_doctor'];
    spSpa = json['sp_spa'];
    spReception = json['sp_reception'];
    spRoomService = json['sp_room_service'];
    spCustomerRelation = json['sp_customer_relation'];
    spTechnicalService = json['sp_technical_service'];
    spManagement = json['sp_management'];
    planImageUrl = json['plan_image_url'];
    smYoutubeUrl = json['sm_youtube_url'];
    smInstagramUrl = json['sm_instagram_url'];
    smFacebookUrl = json['sm_facebook_url'];
    smTwitterUrl = json['sm_twitter_url'];
    smVkontakteUrl = json['sm_vkontakte_url'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    mobileVersion = json['mobile_version'];
    mobileVersionPublishDate = json['mobile_version_publish_date'];
    mobilePublishBy = json['mobile_publish_by'];
    hotelChain = json['hotel_chain'];
    onlineCheckIn = json['online_check_in'];
    onlineCheckInImage = json['online_check_in_image'];
    onlineCheckInSignature = json['online_check_in_signature'];
    if (json['check_in_post_message'].contains(':') &&
        json['check_in_post_message'] != '') {
      checkInPostMessage = jsonDecode(json['check_in_post_message'])
          .entries
          .map<RSDataTitleLanguageModel>(
              (e) => RSDataTitleLanguageModel.fromJson(e))
          .toList();
    } else {
      checkInPostMessage = [
        RSDataTitleLanguageModel(
            title: json['check_in_post_message'], locale: 'default')
      ];
    }
    welcomeMessage = json['welcome_message'];
    surveyHeaderId = json['survey_header_id'];
    surveyHeader = RSDataSurveyHeaderModel.fromJson(json['survey_header']);
    surveyTitle = json['survey_title'];
    surveyDescription = json['survey_description'];
    deliveryTimeOfDay = json['delivery_time_of_day'];
    notificationPoint = json['notification_point'];
    surveyPoint = json['survey_point'];
    subDomainName = json['sub_domain_name'];
    productType = json['product_type'];
    autoSendWelcomeMail = json['auto_send_welcome_mail'];
    homePageDesigner = json['home_page_designer']
        .map<RsDataHomePageDesignerModel>(
            (v) => RsDataHomePageDesignerModel.fromJson(v))
        .toList();
    firstLevelAlertList = json['first_level_alert_list'];
    secondLevelAlertList = json['second_level_alert_list'];
    thirdLevelAlertList = json['third_level_alert_list'];
    fourthLevelAlertList = json['fourth_level_alert_list'];
    negativeSurveyAlertList = json['negative_survey_alert_list'];
    titleAndDescriptions = json['title_and_descriptions']
        .map<RSDataMenuItemTitleAndDescriptionModel>(
            (v) => RSDataMenuItemTitleAndDescriptionModel.fromJson(v))
        .toList();
    faq = json['faq']
        .map<RSDataMenuItemTitleAndDescriptionModel>(
            (v) => RSDataMenuItemTitleAndDescriptionModel.fromJson(v))
        .toList();
    featured = json['featured'].map<RSDataMenuItemsModel>((v) {
      return RSDataMenuItemsModel.fromJson(v);
    }).toList();
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    oneSignalAppId = json['one_signal_app_id'];
    oneSignalAppKey = json['one_signal_app_key'];
    oneSignalUserKey = json['one_signal_user_key'];
    appStoreLink = json['app_store_link'];
    googlePlayLink = json['google_play_link'];
    firebaseLink = json['firebase_link'];
    openForYear = json['open_for_year'];
    openDate = DateTime.parse(json['open_date']);
    closeDate = DateTime.parse(json['close_date']);
    entryDate = json['entry_date'];
    releaseDate = json['release_date'];
    babyAgeRange = json['baby_age_range'];
    childAgeRange = json['child_age_range'];
    oldAgeRange = json['old_age_range'];
    closeRequest = json['close_request'];
    callForRequests = json['call_for_requests'];
    roomNumberValidationCode = json['room_number_validation_code'];
    claimTrackingManager = json['claim_tracking_manager'];
    hotelType = json['hotel_type'];
    mobilePayment = json['mobile_payment'];
    title = json['title'];
    description = json['description'];
    wifiName = json['wifi_name'];
    wifiPassword = json['wifi_password'];
    whatsappNo = json['whatsapp_no'];
    viberNo = json['viber_no'];
    telegramNo = json['telegram_no'];
    messengerAddress = json['messenger_address'];
    googleMapAddress = json['google_map_address'];
    showWelcome = json['show_welcome'];
    showChat = json['show_chat'];
    inHouseListLoginType = json['in_house_list_login_type'];
    inHouseListMatchingCondition = json['in_house_list_matching_condition'];
    pmsApplication = json['pms_application'];
    createPowerBIdata = json['create_power_b_idata'];
    reportDbScheme = json['report_db_scheme'];
    manuelGuestVisitConfirmation = json['manuel_guest_visit_confirmation'];
    rewardCalculationType = json['reward_calculation_type'];
    rewardMinPoint = json['reward_min_point'];
    rewardValue = json['reward_value'];
    timeZone = json['time_zone'];
    virtualTourUrl = json['virtual_tour_url'];
    upsellItemId = json['upsell_item_id'];
    hotelLanguage = json['hotel_language'];
    hotelToken = json['hotel_token'];
    hotelTokenExpiredTime = json['hotel_token_expired_time'];
    tokenExpireSeconds = json['token_expire_seconds'];
    manuelRequestOwnerType = json['manuel_request_owner_type'];
    onetimeInformation = json['onetime_information'];
    isAccountVerifyNecessaryForRequest =
        json['is_account_verify_necessary_for_request'];
    isClosedStaffChat = json['is_closed_staff_chat'];
    operationSystem = json['operation_system'];
    loyaltyManagement = json['loyalty_management'];
    staffTracking = json['staff_tracking'];
    qrReader = json['qr_reader'];
    isTaskSolutionNoteMandatory = json['is_task_solution_note_mandatory'];
    isTaskDescriptionMandatory = json['is_task_description_mandatory'];
    isGiftCard = json['is_gift_card'];
    surveyAddress = json['survey_address'];
    checkInSurveyId = json['check_in_survey_id'];
    checkOutSurveyId = json['check_out_survey_id'];
    autoCreateProfile = json['auto_create_profile'];
    bars = RsDataMenuSectionModel.fromJson(json['bars']);
    cafes = RsDataMenuSectionModel.fromJson(json['cafes']);
    golfClub = RsDataMenuSectionModel.fromJson(json['golf_club']);
    kidsClub = RsDataMenuSectionModel.fromJson(json['kids_club']);
    rooms = RsDataMenuSectionModel.fromJson(json['rooms']);
    massage = RsDataMenuSectionModel.fromJson(json['massage']);
    meetingRoom = RsDataMenuSectionModel.fromJson(json['meeting_rooms']);
    otherFacilities = RsDataMenuSectionModel.fromJson(json['other_facilities']);
    pools = RsDataMenuSectionModel.fromJson(json['pools']);
    restaurants = RsDataMenuSectionModel.fromJson(json['restaurants']);
    spa = RsDataMenuSectionModel.fromJson(json['spa']);
    sport = RsDataMenuSectionModel.fromJson(json['sport']);
    amenities = RsDataMenuSectionModel.fromJson(json['amenities']);
    housekeeping = RsDataMenuSectionModel.fromJson(json['housekeeping']);
    issues = RsDataMenuSectionModel.fromJson(json['issues']);
    complaint = RsDataMenuSectionModel.fromJson(json['complaint']);
    otherServices = RsDataMenuSectionModel.fromJson(json['other_services']);
    roomServices = RsDataMenuSectionModel.fromJson(json['room_services']);
    activity = RsDataMenuSectionModel.fromJson(json['activity']);
    dailyAnimations = RsDataMenuSectionModel.fromJson(json['daily_animations']);
    shows = RsDataMenuSectionModel.fromJson(json['shows']);
    poIs = RsDataMenuSectionModel.fromJson(json['po_is']);
    tours = RsDataMenuSectionModel.fromJson(json['tours']);
    opportunities = RsDataMenuSectionModel.fromJson(json['opportunities']);
    news = RsDataMenuSectionModel.fromJson(json['news']);
    banner = RsDataMenuSectionModel.fromJson(json['banner']);
    loyalityManagement =
        RsDataMenuSectionModel.fromJson(json['loyality_management']);
    roomGuide = RsDataMenuSectionModel.fromJson(json['room_guide']);
    malls = RsDataMenuSectionModel.fromJson(json['malls']);
    upsell = RsDataMenuSectionModel.fromJson(json['upsell']);
    frontOffice = RsDataMenuSectionModel.fromJson(
        json['front_office']); //TODO: check this
    mice = RsDataMenuSectionModel.fromJson(json['mice']);
    wedding = RsDataMenuSectionModel.fromJson(json['wedding']);
    avm = RsDataMenuSectionModel.fromJson(json['avm']);
    life = RsDataMenuSectionModel.fromJson(json['life']);
    cinema = RsDataMenuSectionModel.fromJson(json['cinema']);
    events = RsDataMenuSectionModel.fromJson(json['events']);
    other1 = RsDataMenuSectionModel.fromJson(json['other_1']);
    other2 = RsDataMenuSectionModel.fromJson(json['other_2']);
    other3 = RsDataMenuSectionModel.fromJson(json['other_3']);
    other4 = RsDataMenuSectionModel.fromJson(json['other_4']);
    other5 = RsDataMenuSectionModel.fromJson(json['other_5']);
    other6 = RsDataMenuSectionModel.fromJson(json['other_6']);
    other7 = RsDataMenuSectionModel.fromJson(json['other_7']);
    other8 = RsDataMenuSectionModel.fromJson(json['other_8']);
    video = RsDataMenuSectionModel.fromJson(json['video']);
    services = RsDataMenuSectionModel.fromJson(json['services']);
    giftCard = RsDataMenuSectionModel.fromJson(json['gift_card']);
    guestny = RsDataMenuSectionModel.fromJson(json['guestny']);
  }
}

List<RSDataTitleLanguageModel> getLanguage({required String data}) {
  if (data.contains(':') && data != '') {
    return jsonDecode(data)
        .entries
        .map<RSDataTitleLanguageModel>(
            (e) => RSDataTitleLanguageModel.fromJson(e))
        .toList();
  } else {
    return [
      RSDataTitleLanguageModel(title: data, locale: 'tr'),
    ];
  }
}
