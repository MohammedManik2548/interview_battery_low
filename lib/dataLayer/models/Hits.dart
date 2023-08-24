import 'Recipe.dart';

class Hits {
  Hits({
      this.recipe,});

  Hits.fromJson(dynamic json) {
    recipe = json['recipe'] != null ? Recipe.fromJson(json['recipe']) : null;
  }
  Recipe? recipe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (recipe != null) {
      map['recipe'] = recipe?.toJson();
    }
    return map;
  }

}