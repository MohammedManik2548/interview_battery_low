import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:interview_battery_low/dataLayer/models/RecipeDataModel.dart';
import '../dataLayer/models/Hits.dart';
import 'package:dio/dio.dart';
class SearchPageController extends GetxController{


  RxObjectMixin<RecipeDataModel> recipeData = RecipeDataModel().obs;
  var searchEditingController = TextEditingController();
  var chickenList = <Hits>[].obs;
  var displayList = <Hits>[].obs;


  @override
  void onInit() {
    getRecipeData('chicken');
    //displayList.value = chickenList.value;
    // print('displayList: ${displayList.length}');
    super.onInit();
  }

  // void updateList(String value) {
  //   displayList.value = chickenList.value.where((element) =>
  //       element.recipe!.label!.toLowerCase().contains(value.toLowerCase())).toList();
  // }


  void getRecipeData(String v)async{
    Dio dio = Dio();
    String url = 'https://edamam-recipe-search.p.rapidapi.com/search';
    try{

      var response = await dio.get(url,queryParameters: {'q':v},options: Options(
        headers: {
          "X-RapidAPI-Key":"72ce33ece0msh00e1648cd897aa5p119a6ejsnded9f3b72e65",
          "X-RapidAPI-Host":"edamam-recipe-search.p.rapidapi.com"
        }
      ));
      print('$runtimeType Hit_url: $url');
      print('$runtimeType Hit_data: ${response.data}');

      if(response.statusCode == 200){
        chickenList.clear();
        recipeData.value = RecipeDataModel.fromJson(response.data);
        var list = response.data['hits'] as List;
        var temp = list.map((e) => Hits.fromJson(e));
        chickenList.addAll(temp);
        print("Checken_list: ${chickenList.length}");
        // displayList.value = chickenList;
        // print('displayList: ${displayList.length}');


      }


    }catch(e, l){
      print(e);
      print(l);
    }

  }

}