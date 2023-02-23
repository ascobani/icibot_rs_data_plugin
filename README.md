# icibot_rs_data_plugin

Easy to use plugin for Flutter to get RSData from b1development.s3.eu-central-1.amazonaws.com
with embedded version check.

## Getting Started

This plugin is not yet published on pub.dev, so you have to add it to your pubspec.yaml manually.

```yaml

dependencies:
  icibot_rs_data_plugin:
    git:
      url: https://github.com/ascobani/icibot_rs_data_plugin
      ref: master

```

## Usage

```dart
import 'package:icibot_rs_data_plugin/icibot_rs_data_plugin.dart';

// Get the latest version with providing the current appHotelId
Future<void> getLatestVersion() async {
  final IcIbotRSDataService service = IcIbotRSDataService();
  await service.getLatestVersion(appHotelId: 3); // 3 is just an example, id for Relax Resort  
  // if the version is not the latest or there is no data, the service will get the latest version and store it in the device by using ISAR DB
  // if the version is the latest, the service will get not get the data from the server and will get the data from the device by using ISAR DB
}


// You can get the data by just calling the getRSDataModel method
// Data will be null if there is no data in the device
// There will be just two data in the device at the same time, the latest and the latest version data
Future<void> getData() async {
  RSDataModel? data = await service.getRSDataModel();
  
  // Some filed have multi language support so you can get the selected language by using getSelectedLocale method
  // If the selected language is not available, itt will return the index 0
  // Some filed can be null so you have to handle it
  print(data?.bars?.title?.getSelectedLocale('tr'));
  
  // To get the latest version data, you have to call the getLatestVersion method
  RSVersionModel? data = await service.getRSVersionModel();
  
  // With the version model, you can get the version number and the when that version is inserted to the device
    print(data?.version);
    print(data?.getDate);
}

// This will delete the data from the device
Future<void> clearData() async {
  // You can delete the data by using the clearDB method
 await service.clearDB();
}
```






