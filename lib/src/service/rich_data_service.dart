part of 'icibot_rs_data_service.dart';

/// status of the [RichDataService]
enum RichDataServiceStatus { success, error }

/// [RichDataService] is a service class that is used to get data from the server.
class RichDataService with DioManager {
  /// Gets the [RSDataModel] from the server
  ///
  /// @id - [AppHotelID] can be found in the {https://icibot.net/v2/api/me} by providing the token in the header
  Future<RSDataModel> getRichData({required int id}) async {
    final response =
        await dio.get('/$id/RichData.gz?$timeStamp').catchError((e) {
      print(RichDataServiceStatus.error);
      throw e;
    });
    print(RichDataServiceStatus.success);
    return RSDataModel.fromJson(jsonDecode(response.data));
  }

  /// Gets the [RSVersionModel] from the server
  ///
  /// @id - [AppHotelID] can be found in the {https://icibot.net/v2/api/me} by providing the token in the header
  Future<RSVersionModel> getVersion({required int id}) async {
    final response =
        await dio.get('/$id/MobileVersion.json?$timeStamp').catchError((e) {
      print(RichDataServiceStatus.error);
      throw e;
    });
    print(RichDataServiceStatus.success);
    return RSVersionModel.fromJson(response.data);
  }
}
