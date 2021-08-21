import 'package:cart_counter_app/views/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cart Counter",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        //  visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CartPage(),
    );
  }
}
