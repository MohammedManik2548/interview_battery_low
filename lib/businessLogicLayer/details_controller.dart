import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController tabController;


  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    super.onInit();
  }

}