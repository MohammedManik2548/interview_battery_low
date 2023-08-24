import 'Sub.dart';

class Ingredients {
  Ingredients({
    this.text,
    this.weight,
    this.foodCategory,
    this.foodId,
    this.image,
  });

  Ingredients.fromJson(dynamic json) {
    text = json['text'];
    weight = json['weight'];
    foodCategory = json['foodCategory'];
    foodId = json['foodId'];
    image = json['image'];

  }
  String? text;
  double? weight;
  String? foodCategory;
  String? foodId;
  String? image;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['weight'] = weight;
    map['foodCategory'] = foodCategory;
    map['foodId'] = foodId;
    map['image'] = image;
    return map;
  }

}