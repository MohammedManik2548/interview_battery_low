import 'package:flutter/material.dart';
import 'bingdings/all_bangdings.dart';
import 'presentationLayer/details_page.dart';
import 'package:get/get.dart';
import 'presentationLayer/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      initialBinding: AllBindings(),
      getPages: [
        //GetPage(name: DetailsPage.routeName, page: ()=> DetailsPage(hits: '',)),
        GetPage(name: SearchPage.routeName, page: ()=>SearchPage()),
      ],
      initialRoute: '/',
    );
  }
}
