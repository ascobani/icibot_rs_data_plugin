import 'package:isar/isar.dart';

import 'model1.dart';
import 'model3.dart';

part 'model2.g.dart';

@Collection()
class Model2 {
  Id id = Isar.autoIncrement;
  final model1 = IsarLinks<Model1>();
  String name = '';
  @Backlink(to: 'model2')
  final model3 = IsarLinks<Model3>();
}
