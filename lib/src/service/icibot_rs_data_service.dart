import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';

import '../../icibot_rs_data.dart';
import '../manager/dio_manager/dio_manager.dart';

part 'isar_service.dart';

part 'rich_data_service.dart';

/// This service is used to open the database and get the [RSDataModel] and [RSVersionModel] from the database
class IcIbotRSDataService {
  /// Creates a new instance of [IcIbotRSDataService]
  IcIbotRSDataService() {
    IcIbotRSDataService.init();
  }

  /// Initializes the [IcIbotRSDataService]
  IcIbotRSDataService.init() {
    IsarService().openDB();
  }

  ///Uses the [IsarService] to open the database
  late Future<Isar> db;

  /// Gets the [RSDataModel] from the database if version did not change or there is no [RSDataModel] in the database
  ///
  /// If the version did change, it will get the [RSDataModel] from the server and save it to the database
  ///
  /// @version - The latest version of the [RSVersionModel] can be found in the {https://b1development.s3.eu-central-1.amazonaws.com/icibotV2/$appHotelId/MobileVersion.json} by the key "version"
  Future<void> versionControlledUpdate({required int hotelId}) async {
    // [RSVersionModel] is used to check if the version of the [RSDataModel] has changed
    var richDataService = RichDataService();
    var isarService = IsarService();
    try {
      // Gets the [RSVersionModel] from the database
      RSVersionModel? versionModel = await isarService.getRSVersionModel();
      // Gets the [RSVersionModel] from the server
      var versionModelFromServer =
          await richDataService.getVersion(id: hotelId);
      if (versionModel == null ||
          versionModel.version != versionModelFromServer.version) {
        // Gets the [RSDataModel] from the server
        var dataModelFromServer =
            await richDataService.getRichData(id: hotelId);
        // Saves the [RSDataModel] to the database
        await IsarService().saveRSDataModel(dataModelFromServer);
        // Saves the [RSVersionModel] to the database
        await IsarService().saveRSVersionModel(versionModelFromServer);
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Gets the [RSDataModel] from the database
  ///
  /// Returns the [RSDataModel] if it exists, otherwise returns null
  Future<RSDataModel?> getRSDataModel() async {
    IsarService isarService = IsarService();
    return isarService.getRSDataModel();
  }

  /// Gets the [RSVersionModel] from the database
  ///
  /// Returns the [RSVersionModel] if it exists, otherwise returns null
  Future<RSVersionModel?> getRSVersionModel() async {
    IsarService isarService = IsarService();
    return isarService.getRSVersionModel();
  }

  /// Deletes everything from the database
  Future<void> clearDB() async {
    IsarService isarService = IsarService();
    return isarService.deleteDB();
  }
}
