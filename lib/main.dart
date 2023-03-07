import 'package:flutter/material.dart';
import 'login pages/login_page.dart';
void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const Loginpage(),
    ),
  );
}
