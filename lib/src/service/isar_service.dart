import 'package:isar/isar.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [], //isarModels,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
