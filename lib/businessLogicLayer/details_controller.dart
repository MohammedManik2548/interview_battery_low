import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with GetSingleTickerProviderStateMixin {
  var name = ''.obs;
  var list = [
    'Fat',
    'Carbs',
    'Protein',
    'Cholesterol',
  ];
  var count = 0.obs;
  late TabController tabController;


  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    super.onInit();
  }

}