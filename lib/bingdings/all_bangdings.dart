import 'package:get/get.dart';

import '../businessLogicLayer/search_controller.dart';

class AllBindings extends Bindings{

  @override
  void dependencies() {

    Get.lazyPut<SearchController>(() => SearchController());



  }
}