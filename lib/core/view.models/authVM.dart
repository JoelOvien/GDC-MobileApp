import 'dart:convert';
import 'dart:io';

import 'package:eas/core/api/api.dart';
import 'package:eas/core/api/endpoints.dart';
import 'package:eas/core/controllers/authController.dart';
import 'package:eas/main.dart';
import 'package:eas/screens/authScreens/signInScreen.dart';
import 'package:eas/screens/splash.dart';
import 'package:eas/widgets/loadingDialog.dart';
import 'package:eas/navigation/bottomNavBar.dart';
import 'package:eas/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthVM {
  Future<void> signIn(email, password) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.login);

    print(url);
    Map body = {
      "email": "$email",
      "password": "$password",
    };
    print(body);
    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response = await http.post(
        url,
        headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
        body: json.encode(body),
      );
      var jsonResponse = json.decode(response.body);

      if (response.statusCode == 200 && jsonResponse['msg'] != "Wrong email or Password") {
        print(jsonResponse);
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        await sharedPreferences.setString("userId", jsonResponse['user']['_id']);
        await sharedPreferences.setString("userName", jsonResponse['user']['name']);
        await sharedPreferences.setString("userEmail", jsonResponse['user']['email']);
        await sharedPreferences.setString("userPhoneNumber", jsonResponse['user']['phoneNumber']);

        Future.delayed(Duration(seconds: 1), () {
          checkToken = sharedPreferences.getString("userId");
          checkEmail = sharedPreferences.getString("userEmail");
          checkNumber = sharedPreferences.getString("userPhoneNumber");
          checkName = sharedPreferences.getString("userName");
        });

        Future.delayed(Duration(milliseconds: 1), () {
          Get.offAll(() => BottomNavBar());
        });
      } else {
        showToast("Wrong email or password", Colors.red);
        print(response.statusCode.toString());
        print(response.body);
        Get.back();
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signUp(name, phone, email, password) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.signUp);

    print(url);
    Map body = {
      "name": "$name",
      "phone": "$phone",
      "email": "$email",
      "password": "$password",
      // "contacts": ["8403", "8854"],
    };

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response = await http.post(
        url,
        headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        showToast(
          "Account created succesfully, Log in",
          Color.fromRGBO(245, 245, 245, 1),
        );
        Get.offAll(() => SignInScreen());
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateUserEmail(email) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.updateUser);

    print(url);
    Map body = {
      "email": "$checkEmail",
      "update": {"email": "$email"}
    };

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response = await http.post(
        url,
        headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.back();
        // Get.offAll(() => SignInScreen());
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateUserName(name) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + Endpoints.updateUser);

    print(url);
    Map body = {
      "email": "$checkEmail",
      "update": {"name": "$name"}
    };

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response = await http.post(
        url,
        headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.back();
        // Get.offAll(() => SignInScreen());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
