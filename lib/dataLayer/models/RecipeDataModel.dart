import 'Hits.dart';

class RecipeDataModel {
  RecipeDataModel({
      this.q, 
      this.from, 
      this.to, 
      this.more, 
      this.count, 
      this.hits,});

  RecipeDataModel.fromJson(dynamic json) {
    q = json['q'];
    from = json['from'];
    to = json['to'];
    more = json['more'];
    count = json['count'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits?.add(Hits.fromJson(v));
      });
    }
  }
  String? q;
  int? from;
  int? to;
  bool? more;
  int? count;
  List<Hits>? hits;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['q'] = q;
    map['from'] = from;
    map['to'] = to;
    map['more'] = more;
    map['count'] = count;
    if (hits != null) {
      map['hits'] = hits?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}