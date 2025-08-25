import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityController extends GetxController {
  static ConnectivityController get to => Get.find();

  final RxList<ConnectivityResult> _results = <ConnectivityResult>[].obs;

  ConnectivityResult get status => _results.isNotEmpty ? _results.first : ConnectivityResult.none;

  @override
  void onInit() {
    super.onInit();

    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
      _results.assignAll(results);

      if (results.contains(ConnectivityResult.mobile) &&
          results.contains(ConnectivityResult.wifi)) {
        Get.snackbar('Connect', 'Connected via Wi-Fi + Mobile');
      } else if (results.contains(ConnectivityResult.mobile)) {
        Get.snackbar('Connect', 'Connected via Mobile Network');
      } else if (results.contains(ConnectivityResult.wifi)) {
        Get.snackbar('Connect', 'Connected via Wi-Fi');
      } else {
        Get.snackbar('Connect', 'No network connection');
      }
    });
  }
}
