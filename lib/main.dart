import 'package:flutter/cupertino.dart';
import 'package:icibot_rs_data_plugin/icibot_rs_data.dart';
import 'package:icibot_rs_data_plugin/src/service/rich_data_service.dart';

void main() async {
  var isar = IsarService();
  var response = await RichDataService().getRichData(3);
  var response1 = await RichDataService().getVersion(3);
  await isar.saveRSDataModel(response);
  await isar.saveRSVersionModel(response1);
}
