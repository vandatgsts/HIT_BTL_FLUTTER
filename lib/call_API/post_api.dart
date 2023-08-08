import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../AppRouter/AppRouter.dart';


class PostAPI{
  static String apiBase='http://207.148.118.106:8080/';
  static void postLogin(String userName,String password) async {
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
  static Future<void> forgotPassword(String username) async {
    String forgotPasswordUrl=apiBase+'api/v1/forgot-password';
    try {
      // Tạo yêu cầu POST gửi thông tin email cần khôi phục mật khẩu
      var response = await http.post(
        Uri.parse(forgotPasswordUrl),
        body: {
          'userName': username,
        },
      );
      var data = json.decode(response.body);
      var password = data['data']['body']['password'];
      print(password);
      // Kiểm tra phản hồi từ máy chủ
      if (response.statusCode == 200) {
        // Xử lý phản hồi thành công từ máy chủ (thông báo, điều hướng...)
        print('Yêu cầu khôi phục mật khẩu thành công!');
      } else {
        // Xử lý phản hồi lỗi từ máy chủ
        print('Yêu cầu khôi phục mật khẩu thất bại: ${response.statusCode}');
      }
    } catch (e) {
      // Xử lý lỗi nếu có
      print('Lỗi khi gọi API: $e');
    }
  }
}