/*

© 2023 B1 Digital

User         : alisinancobani
Project Name : icibot_rs_data 
Name         : Ali Sinan COBANI
Date         : 18.04.2023 18:43
Notes        : 




*/

import 'package:isar/isar.dart';

import '../../../icibot_rs_data_plugin.dart';

class IsarManager {
  late Future<Isar> db;

  IsarManager() {
    db = openDB();
  }

  Future<Isar> openDB({bool inspector = true}) async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [RSDataModelSchema, RSVersionModelSchema],
        inspector: inspector, directory: 'icibot_rs_data',
      );
    }
    return Future.value(
      Isar.getInstance(),
    );
  }

  Future<RSDataModel?> getRSDataModel({int id = 1}) async {
    var isar = await db;
    return await isar.rSDataModels.get(id);
  }

  Future<void> deleteDB() async {
    var isar = await db;
    print('deleteDB');
    await isar.writeTxn(() => isar.clear());
  }
}
