import 'package:get/get.dart';
import 'package:luxora/signin/view/signin_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authcontroller extends GetxController {
  // ============================ get method ===========================================//
  Future<String?> getToken() async {
    final SharedPreferences sP = await SharedPreferences.getInstance();
    String? accessToken = sP.getString("accesstoken");
    return accessToken;
  }

  Future<void> setToken({required String token}) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString("accesstoken", token);
  }

  Future<void> logout() async {
    final SharedPreferences spL = await SharedPreferences.getInstance();
    spL.remove("accesstoken");
    await Get.offAll(() => const SigninView());
  }
}
