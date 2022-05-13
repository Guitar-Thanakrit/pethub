// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class FakeApi {
  void getData() async {
    final url = Uri.parse('https://fakestoreapi.com/products/');
    http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body);
  }
  else{
    print('fail');
  }


}}