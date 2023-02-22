import 'package:isar/isar.dart';

import '../../icibot_rs_data.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveRSDataModel(RSDataModel data) async {
    await deleteDB();
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSDataModels.putSync(data));
  }

  Future<void> deleteDB() async {
    var isar = await db;
    isar.clear();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [RSDataModelSchema, RSVersionModelSchema], //isarModels,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
