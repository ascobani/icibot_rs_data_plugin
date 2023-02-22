import 'package:isar/isar.dart';

import '../../icibot_rs_data.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<RSDataModel?> getRSDataModel() async {
    var isar = await db;
    return isar.rSDataModels.get(1);
  }

  Future<RSVersionModel?> getRSVersionModel() async {
    var isar = await db;
    return isar.rSVersionModels.get(1);
  }

  Future<void> saveRSDataModel(RSDataModel data) async {
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSDataModels.putSync(data));
  }

  Future<void> saveRSVersionModel(RSVersionModel data) async {
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSVersionModels.putSync(data));
  }

  Future<void> deleteDB() async {
    var isar = await db;
    isar.clearSync();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [RSDataModelSchema, RSVersionModelSchema], //Isar Models,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
