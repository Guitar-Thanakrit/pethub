// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class FakeApi {
  void getData() async {
    final url = Uri.parse('https://fakestoreapi.com/products/');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      // ignore: avoid_print
      print('fail');
    }
  }
//call firebase cli
  Future fluttercli() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
