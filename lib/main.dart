import 'package:icibot_rs_data_plugin/src/service/icibot_rs_data_service.dart';

void main() async {
  IcIbotRSDataService service = IcIbotRSDataService();
  //await service.init();
  // await service.clearDB();
  await service.versionControlledUpdate(appHotelId: 30);
}
