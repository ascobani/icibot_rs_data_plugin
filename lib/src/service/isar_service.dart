part of 'icibot_rs_data_service.dart';

/// [IcIbotRSDataService] uses the [IsarService] to open the database
class IsarService {
  late Future<Isar> db;

  /// Creates a new instance of [IsarService]
  IsarService() {
    db = openDB();
  }

  /// Gets the [RSDataModel] from the database
  ///
  /// @id - The id of the [RSDataModel] in the database
  Future<RSDataModel?> getRSDataModel({int id = 1}) async {
    var isar = await db;
    return await isar.rSDataModels.get(id);
  }

  /// Gets the [RSVersionModel] from the database
  ///
  /// @id - The id of the [RSVersionModel] in the database
  Future<RSVersionModel?> getRSVersionModel({int id = 1}) async {
    var isar = await db;
    return await isar.rSVersionModels.get(id);
  }

  /// Saves the [RSDataModel] to the database
  ///
  /// @data - The [RSDataModel] to save
  Future<void> saveRSDataModel(RSDataModel data) async {
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSDataModels.putSync(data));
  }

  /// Saves the [RSVersionModel] to the database
  ///
  /// @data - The [RSVersionModel] to save
  Future<void> saveRSVersionModel(RSVersionModel data) async {
    var isar = await db;
    isar.writeTxnSync<int>(() => isar.rSVersionModels.putSync(data));
  }

  /// Deletes the database
  ///
  /// Currently not working
  Future<void> deleteDB() async {
    var isar = await db;
    isar.clearSync();
  }

  /// Creates a new instance of [IsarService]
  ///
  /// @inspector - to open thw web inspector by default is [true]
  Future<Isar> openDB({bool inspector = true}) async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [RSDataModelSchema, RSVersionModelSchema], //Isar Models,
        inspector: inspector,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
