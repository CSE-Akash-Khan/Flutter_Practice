import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompanyDataModel {
  String logoUrl;
  String company;
  String title;
  String location;
  String fullTime;
  List<String> req;

  CompanyDataModel(this.logoUrl, this.company, this.title, this.location,
      this.fullTime, this.req);

  static List<CompanyDataModel> CompanyData() {
    return [
      CompanyDataModel('images/job_image/google.svg', "Google LLC ",
          "Product Design", "417 Akash Plaza,Texax, United State", "Fulltime",
          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and ProductionMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
          ]),
      CompanyDataModel('images/job_image/google.svg', "Google LLC ",
          "Product Design", "417 Akash Plaza,Texax, United State", "Fulltime",
          [
        ' Creative with an Eye for shape and color Different Materia ak Eye for shape and color',
        'Understand Different Material and ProductionMethod Different Materia',
            ' Creative with an Eye for shape and color Different Materia ak Eye for shape and color',
            'Understand Different Material and ProductionMethod Different Materia',
            ' Creative with an Eye for shape and color Different Materia ak Eye for shape and color',
            'Understand Different Material and ProductionMethod Different Materia',
            ' Creative with an Eye for shape and color Different Materia ak Eye for shape and color',
            'Understand Different Material and ProductionMethod Different Materia',
            ' Creative with an Eye for shape and color Different Materia ak Eye for shape and color',
            'Understand Different Material and ProductionMethod Different Materia',
            'Creative with an Eye for shape and color Different Materia  Different Material and ProductionMethod Different Materia',
        'Understand Different Material and Production Method Different Materia'
      ]),
      CompanyDataModel('images/job_image/google.svg', "Google LLC ",
          "Product Design", "417 Akash Plaza,Texax, United State", "Fulltime",
          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and ProductionMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
          ]),
      CompanyDataModel('images/job_image/google.svg', "Google LLC ",
          "Product Design", "417 Akash Plaza,Texax, United State", "Fulltime",
          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and ProductionMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
          ]),
      CompanyDataModel('images/job_image/google.svg', "Google LLC ",
          "Product Design", "417 Akash Plaza,Texax, United State", "Fulltime",
          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and ProductionMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production Method'
          ]),
    ];
  }
}
