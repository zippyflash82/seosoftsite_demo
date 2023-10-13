import 'package:get/get.dart';
import 'package:seosoftsite_demo/controllers/controller.dart';

class AppIntialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonController>(() => CommonController(), fenix: true);
  }
}
