
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/service/authentication_service.dart';
import 'package:mead_learn_app/src/core/service/network/failure.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:get/get.dart';

class LoginController extends BaseChangeNotifier {
  final _service = AuthenticationService();
  bool visibility = true;
  onVisibilityChange() {
    visibility = !visibility;
    setState();
  }

  Future login(String email, String password) async {
    setState(state: AppState.loading);

    try {
      await _service.loginCustomer(email, password);
      Get.offAllNamed(AppRoutes.mainMenuRoute);
    } on Failure catch (f) {
      setState(state: AppState.idle);
      Get.snackbar(
        '',
        f.message,
        colorText: Get.theme.colorScheme.onError,
        backgroundColor: Get.theme.colorScheme.error,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 0,
      );
    } finally {
      setState(state: AppState.idle);
    }
  }
}