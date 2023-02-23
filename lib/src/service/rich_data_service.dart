part of 'icibot_rs_data_service.dart';

/// status of the [RichDataService]
enum RichDataServiceStatus { success, error }

/// [RichDataService] is a service class that is used to get data from the server.
class RichDataService with DioManager {
  /// Initializes the [RichDataService]
  Future<void> init() async {
    await dio.get('/3/MobileVersion.json?$timeStamp').catchError((e) {

      throw e;
    });
  }

  /// Gets the [RSDataModel] from the server
  ///
  /// @id - [AppHotelID] can be found in the {https://icibot.net/v2/api/me} by providing the token in the header
  Future<RSDataModel> getRichData({required int appHotelId}) async {
    final response =
        await dio.get('/$appHotelId/RichData.gz?$timeStamp').catchError((e) {
      throw e;
    });

    return RSDataModel.fromJson(jsonDecode(response.data));
  }

  /// Gets the [RSVersionModel] from the server
  ///
  /// @id - [AppHotelID] can be found in the {https://icibot.net/v2/api/me} by providing the token in the header
  Future<RSVersionModel> getVersion({required int appHotelId}) async {
    final response = await dio
        .get('/$appHotelId/MobileVersion.json?$timeStamp')
        .catchError((e) {
      throw e;
    });
    return RSVersionModel.fromJson(response.data);
  }
}
