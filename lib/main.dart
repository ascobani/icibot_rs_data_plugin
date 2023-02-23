import 'icibot_rs_data.dart';

void main() async {
  IcIbotRSDataService service = IcIbotRSDataService();
  //await service.init();
  //await service.clearDB();
  await service.versionControlledUpdate(appHotelId: 3);
  RSDataModel? data = await service.getRSDataModel();
  print(data?.bars?.title?.getSelectedLocale('tr'));
}
