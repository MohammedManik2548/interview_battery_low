// import 'EnercKcal.dart';
// import 'Fat.dart';
// import 'Fasat.dart';
// import 'Fatrn.dart';
// import 'Fams.dart';
// import 'Fapu.dart';
// import 'Chocdf.dart';
// import 'ChocdfNet.dart';
// import 'Fibtg.dart';
// import 'Sugar.dart';
// import 'Procnt.dart';
// import 'Chole.dart';
// import 'Na.dart';
// import 'Ca.dart';
// import 'Mg.dart';
// import 'K.dart';
// import 'Fe.dart';
// import 'Zn.dart';
// import 'P.dart';
// import 'VitaRae.dart';
// import 'Vitc.dart';
// import 'Thia.dart';
// import 'Ribf.dart';
// import 'Nia.dart';
// import 'Vitb6a.dart';
// import 'Foldfe.dart';
// import 'Folfd.dart';
// import 'Folac.dart';
// import 'Vitb12.dart';
// import 'Vitd.dart';
// import 'Tocpha.dart';
// import 'Vitk1.dart';
// import 'Water.dart';
//
// class TotalNutrients {
//   TotalNutrients({
//       this.enerckcal,
//       this.fat,
//       this.fasat,
//       this.fatrn,
//       this.fams,
//       this.fapu,
//       this.chocdf,
//       this.cHOCDFnet,
//       this.fibtg,
//       this.sugar,
//       this.procnt,
//       this.chole,
//       this.na,
//       this.ca,
//       this.mg,
//       this.k,
//       this.fe,
//       this.zn,
//       this.p,
//       this.vitarae,
//       this.vitc,
//       this.thia,
//       this.ribf,
//       this.nia,
//       this.vitb6a,
//       this.foldfe,
//       this.folfd,
//       this.folac,
//       this.vitb12,
//       this.vitd,
//       this.tocpha,
//       this.vitk1,
//       this.water,});
//
//   TotalNutrients.fromJson(dynamic json) {
//     enerckcal = json['ENERC_KCAL'] != null ? EnercKcal.fromJson(json['ENERC_KCAL']) : null;
//     fat = json['FAT'] != null ? Fat.fromJson(json['FAT']) : null;
//     fasat = json['FASAT'] != null ? Fasat.fromJson(json['FASAT']) : null;
//     fatrn = json['FATRN'] != null ? Fatrn.fromJson(json['FATRN']) : null;
//     fams = json['FAMS'] != null ? Fams.fromJson(json['FAMS']) : null;
//     fapu = json['FAPU'] != null ? Fapu.fromJson(json['FAPU']) : null;
//     chocdf = json['CHOCDF'] != null ? Chocdf.fromJson(json['CHOCDF']) : null;
//     cHOCDFnet = json['CHOCDF.net'] != null ? ChocdfNet.fromJson(json['CHOCDF.net']) : null;
//     fibtg = json['FIBTG'] != null ? Fibtg.fromJson(json['FIBTG']) : null;
//     sugar = json['SUGAR'] != null ? Sugar.fromJson(json['SUGAR']) : null;
//     procnt = json['PROCNT'] != null ? Procnt.fromJson(json['PROCNT']) : null;
//     chole = json['CHOLE'] != null ? Chole.fromJson(json['CHOLE']) : null;
//     na = json['NA'] != null ? Na.fromJson(json['NA']) : null;
//     ca = json['CA'] != null ? Ca.fromJson(json['CA']) : null;
//     mg = json['MG'] != null ? Mg.fromJson(json['MG']) : null;
//     k = json['K'] != null ? K.fromJson(json['K']) : null;
//     fe = json['FE'] != null ? Fe.fromJson(json['FE']) : null;
//     zn = json['ZN'] != null ? Zn.fromJson(json['ZN']) : null;
//     p = json['P'] != null ? P.fromJson(json['P']) : null;
//     vitarae = json['VITA_RAE'] != null ? VitaRae.fromJson(json['VITA_RAE']) : null;
//     vitc = json['VITC'] != null ? Vitc.fromJson(json['VITC']) : null;
//     thia = json['THIA'] != null ? Thia.fromJson(json['THIA']) : null;
//     ribf = json['RIBF'] != null ? Ribf.fromJson(json['RIBF']) : null;
//     nia = json['NIA'] != null ? Nia.fromJson(json['NIA']) : null;
//     vitb6a = json['VITB6A'] != null ? Vitb6a.fromJson(json['VITB6A']) : null;
//     foldfe = json['FOLDFE'] != null ? Foldfe.fromJson(json['FOLDFE']) : null;
//     folfd = json['FOLFD'] != null ? Folfd.fromJson(json['FOLFD']) : null;
//     folac = json['FOLAC'] != null ? Folac.fromJson(json['FOLAC']) : null;
//     vitb12 = json['VITB12'] != null ? Vitb12.fromJson(json['VITB12']) : null;
//     vitd = json['VITD'] != null ? Vitd.fromJson(json['VITD']) : null;
//     tocpha = json['TOCPHA'] != null ? Tocpha.fromJson(json['TOCPHA']) : null;
//     vitk1 = json['VITK1'] != null ? Vitk1.fromJson(json['VITK1']) : null;
//     water = json['WATER'] != null ? Water.fromJson(json['WATER']) : null;
//   }
//   EnercKcal? enerckcal;
//   Fat? fat;
//   Fasat? fasat;
//   Fatrn? fatrn;
//   Fams? fams;
//   Fapu? fapu;
//   Chocdf? chocdf;
//   ChocdfNet? cHOCDFnet;
//   Fibtg? fibtg;
//   Sugar? sugar;
//   Procnt? procnt;
//   Chole? chole;
//   Na? na;
//   Ca? ca;
//   Mg? mg;
//   K? k;
//   Fe? fe;
//   Zn? zn;
//   P? p;
//   VitaRae? vitarae;
//   Vitc? vitc;
//   Thia? thia;
//   Ribf? ribf;
//   Nia? nia;
//   Vitb6a? vitb6a;
//   Foldfe? foldfe;
//   Folfd? folfd;
//   Folac? folac;
//   Vitb12? vitb12;
//   Vitd? vitd;
//   Tocpha? tocpha;
//   Vitk1? vitk1;
//   Water? water;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (enerckcal != null) {
//       map['ENERC_KCAL'] = enerckcal?.toJson();
//     }
//     if (fat != null) {
//       map['FAT'] = fat?.toJson();
//     }
//     if (fasat != null) {
//       map['FASAT'] = fasat?.toJson();
//     }
//     if (fatrn != null) {
//       map['FATRN'] = fatrn?.toJson();
//     }
//     if (fams != null) {
//       map['FAMS'] = fams?.toJson();
//     }
//     if (fapu != null) {
//       map['FAPU'] = fapu?.toJson();
//     }
//     if (chocdf != null) {
//       map['CHOCDF'] = chocdf?.toJson();
//     }
//     if (cHOCDFnet != null) {
//       map['CHOCDF.net'] = cHOCDFnet?.toJson();
//     }
//     if (fibtg != null) {
//       map['FIBTG'] = fibtg?.toJson();
//     }
//     if (sugar != null) {
//       map['SUGAR'] = sugar?.toJson();
//     }
//     if (procnt != null) {
//       map['PROCNT'] = procnt?.toJson();
//     }
//     if (chole != null) {
//       map['CHOLE'] = chole?.toJson();
//     }
//     if (na != null) {
//       map['NA'] = na?.toJson();
//     }
//     if (ca != null) {
//       map['CA'] = ca?.toJson();
//     }
//     if (mg != null) {
//       map['MG'] = mg?.toJson();
//     }
//     if (k != null) {
//       map['K'] = k?.toJson();
//     }
//     if (fe != null) {
//       map['FE'] = fe?.toJson();
//     }
//     if (zn != null) {
//       map['ZN'] = zn?.toJson();
//     }
//     if (p != null) {
//       map['P'] = p?.toJson();
//     }
//     if (vitarae != null) {
//       map['VITA_RAE'] = vitarae?.toJson();
//     }
//     if (vitc != null) {
//       map['VITC'] = vitc?.toJson();
//     }
//     if (thia != null) {
//       map['THIA'] = thia?.toJson();
//     }
//     if (ribf != null) {
//       map['RIBF'] = ribf?.toJson();
//     }
//     if (nia != null) {
//       map['NIA'] = nia?.toJson();
//     }
//     if (vitb6a != null) {
//       map['VITB6A'] = vitb6a?.toJson();
//     }
//     if (foldfe != null) {
//       map['FOLDFE'] = foldfe?.toJson();
//     }
//     if (folfd != null) {
//       map['FOLFD'] = folfd?.toJson();
//     }
//     if (folac != null) {
//       map['FOLAC'] = folac?.toJson();
//     }
//     if (vitb12 != null) {
//       map['VITB12'] = vitb12?.toJson();
//     }
//     if (vitd != null) {
//       map['VITD'] = vitd?.toJson();
//     }
//     if (tocpha != null) {
//       map['TOCPHA'] = tocpha?.toJson();
//     }
//     if (vitk1 != null) {
//       map['VITK1'] = vitk1?.toJson();
//     }
//     if (water != null) {
//       map['WATER'] = water?.toJson();
//     }
//     return map;
//   }
//
// }