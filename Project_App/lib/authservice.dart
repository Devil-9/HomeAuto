// import 'package:dio/dio.dart';

// class AuthService {
//   Dio dio = new Dio();


//   addMail(email) async {
//     return await dio.post('https://iiitliot.herokuapp.com/onof',
//         data: {"sensor": "abc" , "oning": email},
//         options: Options(contentType: Headers.formUrlEncodedContentType));
//   }
// }





import 'package:dio/dio.dart';
import 'package:final_project/pages/globals.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'pages/globals.dart' as globals;

class AuthService {
  Dio dio = new Dio();

  addMail(email) async {
    // try {
      return await dio.post('https://iiitliot.herokuapp.com/onof',
          data: {"sensor": "abc", "oning": email},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    // } on DioError catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.response!.data['msg'],
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0);
    // }
  }

  login(email, password) async {
    // try {
      return await dio.post('https://iiitliot.herokuapp.com/auth',
          data: {"email": email, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    // } on DioError catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.response!.data['msg'],
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0);
    // }
  }

  getinfo() async {
    // try {
      return await dio.post('https://iiitliot.herokuapp.com/getinfo',
          data: {"sensor": "abc"},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    // } on DioError catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.response!.data['msg'],
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0);
    // }
  }

  onof(ono) async {
    // try {
      return await dio.post('https://iiitliot.herokuapp.com/onof',
          data: {"sensor": "abc" , "oning": ono},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    // } on DioError catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.response!.data['msg'],
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0);
    // }
  }

  // addUser(email, password, firstname, lastname, phone) async {
  //   return await dio.post('https://seed2root.herokuapp.com/addUser',
  //       data: {"email": email, "password": password, "firstname": firstname, "lastname": lastname, "phone": phone},
  //       options: Options(contentType: Headers.formUrlEncodedContentType));
  // }
}
