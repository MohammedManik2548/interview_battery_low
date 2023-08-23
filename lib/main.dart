import 'package:flutter/material.dart';
import 'presentationLayer/details_page.dart';
import 'package:get/get.dart';

import 'presentationLayer/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SearchPage(),
      getPages: [
        GetPage(name: SearchPage.routeName, page: ()=>SearchPage()),
      ],
      initialRoute: '/',
    );
  }
}
