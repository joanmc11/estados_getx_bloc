
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/page_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'GetX App',
        initialRoute: 'pageApp',
        getPages: [
          GetPage(name: '/pageApp', page: ()=> const PageApp()),
        ],
    );
  }
}


