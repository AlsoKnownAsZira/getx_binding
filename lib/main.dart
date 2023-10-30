
import 'package:bindings/counter.dart';
import 'package:bindings/counter_bindings.dart';
import 'package:bindings/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: homePage(),
      getPages: [
        GetPage(
            name: "/counter",
            page: () => counter(),
            binding: counter_bindings())
      ],
    );
  }
}
