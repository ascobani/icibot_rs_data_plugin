import 'package:isar/isar.dart';

import 'model/model1.dart';
import 'model/model2.dart';
import 'model/model3.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveModel1(Model1 model1) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.model1s.putSync(model1));
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [Model1Schema, Model2Schema, Model3Schema], //isarModels,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
