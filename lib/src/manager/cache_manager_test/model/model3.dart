import 'package:isar/isar.dart';

import 'model1.dart';
import 'model2.dart';

part 'model3.g.dart';

@Collection()
class Model3 {
  Id id = Isar.autoIncrement;
  final model1 = IsarLinks<Model1>();
  final model2 = IsarLinks<Model2>();
  late String name;

}
