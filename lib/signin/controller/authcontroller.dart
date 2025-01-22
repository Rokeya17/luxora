import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authcontroller extends GetxController{
  
  bool _isLoggedin = false;
  bool get isLoggedin => _isLoggedin;
   Future<String?> getToken() async {
    final SharedPreferences sP = await SharedPreferences.getInstance();
    String? accessToken = sP.getString("accesstoken");
    if(accessToken!=null){
      _isLoggedin=true;
    }
    return accessToken;
    
  }

  Future<void>setToken({required String token} )async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
     sp.setString("accesstoken", token);
  }

}