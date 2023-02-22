import 'package:icibot_rs_data_plugin/src/service/icibot_rs_data_service.dart';


void main() async {
  var isar = IsarService();
  //  var response = await RichDataService().getRichData(3);
  // var response1 = await RichDataService().getVersion(3);
  // await isar.saveRSDataModel(response);
  // await isar.saveRSVersionModel(response1);

  var response = await isar.getRSDataModel();

  print(response!.bars!.title!
      .firstWhere((element) => element.locale == 'en')
      .title);
}
