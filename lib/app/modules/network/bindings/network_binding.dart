import 'package:get/get.dart';
import 'package:internet_connection/app/modules/network/controllers/network_controller.dart';

class NetworkBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());
  }
}
