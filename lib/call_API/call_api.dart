import 'dart:convert';

import 'package:http/http.dart' as http;

class PostAPI{
  String apiBase='http://207.148.118.106:8080/';
  void postLogin(String userName,String password) async {
    String api='${apiBase}api/v1/auth/login';// link api hoan chinh
    final response= await http.post(Uri.parse(api),/// put,get lay du lieu, delele xoa du lieu
        headers: {
          'Content-Type':'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String,String>{
          // key: value
          'username':userName,//
          'password':password,
        })
    );
    // final response = await http.post(
    //   Uri.parse(api),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   body: jsonEncode(<String, String>{
    //     // Add any necessary parameters for the login request, e.g., username and password.
    //     'username': emailController.text,
    //     'password': passwordController.text,
    //   }),
    print('dadfsdf'+response.statusCode.toString());

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the response body.
      // Replace 'User' with the actual model class representing the response data.
      //userLogin = User.fromJson(jsonDecode(response.body));
      //getCurrentUser();
      Get.toNamed(AppRouter.stateMainScreen);

    } else {
      // If the server did not return a 200 OK response, throw an exception or handle the error.
      throw Exception('Failed to login: ${response.statusCode}');
    }
  }
}