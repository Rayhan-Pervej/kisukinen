import 'package:get/get.dart';
import 'package:kisukinen/backend/network/networkmanager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
