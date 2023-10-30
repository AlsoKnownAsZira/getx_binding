import 'package:get/get.dart';
import 'package:bindings/controller.dart';

class counter_bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => controller());
  }
}