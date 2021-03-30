import 'dart:convert';
import 'dart:io';

import 'package:eas/core/api/api.dart';
import 'package:eas/core/models/fecthContactsModel.dart';
import 'package:eas/screens/splash.dart';
import 'package:eas/widgets/loadingDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ContactsVM {
  Future<FetchContactsModel> fetchUsersContacts() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var userEmail = sharedPreferences.getString("userEmail");
    try {
      var url = Uri.parse(API.$BASE_URL + "users/contacts/$userEmail");
      print(url);

      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        return FetchContactsModel.fromJson(json.decode(response.body));
      } else {
        print(response.statusCode);
        print(response.body);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> uploadUsersContacts(contacts) async {
    waitLoader();
    var url = Uri.parse(API.$BASE_URL + "users/addContacts");

    print(url);
    Map body = {"contacts": contacts, "email": "$checkEmail"};
    print(jsonEncode(body));
    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.statusCode.toString());
        Get.back();
        Get.back();

        print(response.body);
      } else {
        print(response.statusCode.toString());
        print(response.body);
        Get.back();
        Get.back();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
