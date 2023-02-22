import 'package:icibot_rs_data_plugin/src/model/cache_manager_test/IsarService_test.dart';
import 'package:icibot_rs_data_plugin/src/model/cache_manager_test/model/model1.dart';
import 'package:icibot_rs_data_plugin/src/model/cache_manager_test/model/model2.dart';
import 'package:icibot_rs_data_plugin/src/model/cache_manager_test/model/model3.dart';

void main() async {
  var isar = IsarService();
  Model1 model1 = Model1();
  Model2 model2 = Model2();
  Model3 model3 = Model3();
  Model3 model4 = Model3();
  model1.name = 'test';
  model2.name = 'test1';
  model3.name = 'test2';
  model4.name = 'test3';
  model1.model3.add(model3);
  model2.model3.add(model4);
  model1.model2.add(model2);

  await isar.saveModel1(model1);
}
