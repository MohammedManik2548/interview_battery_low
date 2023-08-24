import 'package:get/get.dart';
import 'package:interview_battery_low/businessLogicLayer/search_controller.dart';
import '../businessLogicLayer/details_controller.dart';


class AllBindings extends Bindings{

  @override
  void dependencies() {

    Get.lazyPut<DetailsController>(() => DetailsController());
    Get.lazyPut<SearchPageController>(() => SearchPageController());

  }
}