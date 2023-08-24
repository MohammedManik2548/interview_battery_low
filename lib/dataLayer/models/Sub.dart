class Sub {
  Sub({
      this.label, 
      this.tag, 
      this.schemaOrgTag, 
      this.total, 
      this.hasRDI, 
      this.daily, 
      this.unit,});

  Sub.fromJson(dynamic json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
  }
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRDI;
  double? daily;
  String? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['tag'] = tag;
    map['schemaOrgTag'] = schemaOrgTag;
    map['total'] = total;
    map['hasRDI'] = hasRDI;
    map['daily'] = daily;
    map['unit'] = unit;
    return map;
  }

}