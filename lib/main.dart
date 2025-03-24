import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String apiKey = "12345-SECRET-KEY";

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://example.com/api?key=$apiKey"));
    if (response.statusCode == 200) {
      print("Success");
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    String? name;

    if (name != null) {
      print("Name is not null");
    } else {
      if (name == null) {
        print("Name is still null");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("Code Rabbit Test")),
      body: Center(
        child: ElevatedButton(
          onPressed: fetchData,
          child: Text("Fetch Data"),
        ),
      ),
    );
  }
}