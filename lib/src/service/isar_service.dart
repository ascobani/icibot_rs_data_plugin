import 'package:isar/isar.dart';

import '../../icibot_rs_data.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveModel1(RSDataModel data) async {
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSDataModels.putSync(data));
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [RSDataModelSchema], //isarModels,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
