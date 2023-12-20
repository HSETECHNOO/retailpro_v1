import 'package:get/get.dart';
import 'package:retailpro_v1/controllers/pos_controller_v1.dart';

class TableorderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TableorderController>(
      () => TableorderController(),
    );
  }
}
