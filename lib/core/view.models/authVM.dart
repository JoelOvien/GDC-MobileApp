import 'dart:convert';
import 'dart:io';

import 'package:eas/core/api/api.dart';
import 'package:eas/core/api/endpoints.dart';
import 'package:eas/core/controllers/authController.dart';
import 'package:eas/widgets/loadingDialog.dart';
import 'package:flutter/material.dart';
import 'package:eas/navigation/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class AuthVM {
  Future<void> signIn(email, password) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.login);

    print(url);
    Map<String, Object> body = {
      "email": "$email",
      "password": "$password",
    };

    try {
      Future.delayed(Duration(seconds: 5), () {
        Get.back();
        // Get.offAll(BottomNavBar());
      });
      // final ioc = new HttpClient();
      // ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      // final http = new IOClient(ioc);
      // final response = await http.post(
      //   url,
      //   body: jsonEncode(body),
      // );
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signUp(name, phone, email, password) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.signUp);

    print(url);
    Map<String, Object> body = {
      "name": "$name",
      "phone": "$phone",
      "email": "$email",
      "password": "$password",
      // "contacts": ["8403", "8854"],
    };

    try {
      Future.delayed(Duration(seconds: 5), () {
        Get.back();
        // Get.offAll(BottomNavBar());
      });
      // final ioc = new HttpClient();
      // ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      // final http = new IOClient(ioc);
      // final response = await http.post(
      //   url,
      //   body: jsonEncode(body),
      // );
    } catch (e) {
      print(e.toString());
    }
  }
}
