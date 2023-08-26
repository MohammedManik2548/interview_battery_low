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
    getRecipeData();
    //displayList.value = chickenList.value;
    // print('displayList: ${displayList.length}');
    super.onInit();
  }

  // void updateList(String value) {
  //   displayList.value = chickenList.value.where((element) =>
  //       element.recipe!.label!.toLowerCase().contains(value.toLowerCase())).toList();
  // }


  void getRecipeData()async{
    Dio dio = Dio();
    //String url = 'https://edamam-recipe-search.p.rapidapi.com/search';
    String url = 'https://edamam-recipe-search.p.rapidapi.com/api/recipes/v2';

    var sendData = {
      'type':'public',
      'co2EmissionsClass':'B',
      'field[0]':'uri',
      'beta':'true',
      'random':'true',
      'cuisineType[0]':'American',
      'imageSize[0]':'LARGE',
      'mealType[0]':'Breakfast',
      'health[0]':'alcohol-cocktail',
      'diet[0]':'balanced',
      'dishType[0]':'Biscuits and cookies',
    };
    try{

      var response = await dio.get(url,queryParameters: sendData,options: Options(
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


    } on DioException catch(e, l){

      if(e.response!.statusCode==401){

        var mes = e.response!.data['message'];
        print('Error_mes: $mes');
        print(l);

      }else if(e.response!.statusCode==404){

        var mes = e.response!.data['message'];
        print('Error_mes: $mes');
        print(l);

      }else if(e.response!.statusCode == 500){

        var mes = e.response!.data['message'];
        print('Error_mes: $mes');
        print(l);

      }else{
        print(e);
        print(l);
      }


    }

  }

}

// const options = {
//   method: 'GET',
//   url: 'https://edamam-recipe-search.p.rapidapi.com/api/recipes/v2',
//   params: {
//     type: 'public',
//     co2EmissionsClass: 'A+',
//     'field[0]': 'uri',
//     beta: 'true',
//     random: 'true',
//     'cuisineType[0]': 'American',
//     'imageSize[0]': 'LARGE',
//     'mealType[0]': 'Breakfast',
//     'health[0]': 'alcohol-cocktail',
//     'diet[0]': 'balanced',
//     'dishType[0]': 'Biscuits and cookies'
//   },
//   headers: {
//     'Accept-Language': 'en',
//     'X-RapidAPI-Key': '72ce33ece0msh00e1648cd897aa5p119a6ejsnded9f3b72e65',
//     'X-RapidAPI-Host': 'edamam-recipe-search.p.rapidapi.com'
//   }
// };