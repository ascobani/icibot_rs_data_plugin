import 'package:isar/isar.dart';

import 'model2.dart';
import 'model3.dart';

part 'model1.g.dart';

@Collection()
class Model1 {
  Id id = Isar.autoIncrement;
  late String name;
  @Backlink(to: 'model1')
  final model2 = IsarLinks<Model2>();
  @Backlink(to: 'model1')
  final model3 = IsarLinks<Model3>();
}
