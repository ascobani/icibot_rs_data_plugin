import 'dart:convert';
import 'package:flutter/foundation.dart';

import '../manager/dio_manager/dio_manager.dart';
import '../model/rs_data_model/rs_data_model.dart';
import '../model/rs_version_model/rs_version_model.dart';

class RichDataService with DioManager {
  Future<RSDataModel> getRichData(int id) async {
    final response =
        await dio.get('/$id/RichData.gz?$timeStamp').catchError((e) {
      debugPrint(e);
      throw e;
    });
    return RSDataModel.fromJson(jsonDecode(response.data));
  }

  Future<RSVersionModel> getVersion(int id) async {
    final response =
        await dio.get('/$id/MobileVersion.json?$timeStamp').catchError((e) {
      debugPrint(e);
      throw e;
    });
    return RSVersionModel.fromJson(jsonDecode(response.data));
  }
}
