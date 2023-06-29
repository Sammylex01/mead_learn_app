
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/service/authentication_service.dart';
import 'package:mead_learn_app/src/core/service/network/failure.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:get/get.dart';

class SignupController extends BaseChangeNotifier {
  final _service = AuthenticationService();

  bool visibility = true;
  onVisibilityChange() {
    visibility = !visibility;
    setState();
  }

  Future signupCustomer(
      {required String firstName,
        required String lastName,
        required String email,
        required String phoneNumber,
        required String password,
        required String confirmPassword}) async {
    setState(state: AppState.loading);

    try {
      String phone;
      phoneNumber.substring(1);

      phone = phoneNumber;
      phone = phoneNumber.replaceFirst("0", "+234");

      await _service.signupCustomer(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phone,
          password: password,
          confirmPassword: confirmPassword);

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
