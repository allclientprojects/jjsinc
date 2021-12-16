import 'package:http/http.dart' as http;
import 'package:jjsinc/model/auth_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi {
  static Future<AuthUser?> login(String email, String password) async {
    String loginApiUrl =
        "https://jjsinc.co.za/cgi-bin/jjsinc/login.pl?json:channel:UserID";

    final response = await http.post(Uri.parse(loginApiUrl), body: {
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      final String responseString = response.body;
      var listofData = authUserFromJson(responseString);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("key_userId", "${listofData.userId}");
      prefs.setString("key_authUserResponseString", "${responseString}");
      print("user Id & Name: ${listofData.userId} ${listofData.name}");
      return listofData;
    }
  }

  Future<AuthUser?> refreshAuthUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final user = prefs.getString("key_userId");
    final responseString = prefs.getString("key_authUserResponseString");
    print(user);
    if (user == null) return null;
    var listofData = authUserFromJson(responseString!);
    return listofData;
  }
}
