import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/job_UI/companyDetails/Bottom_Sheet.dart';
import 'package:practice/SEIP_Class/job_UI/companyDetails/CompanyDataModel.dart';

import 'CompanyItem.dart';
class CompanyList extends StatelessWidget {
   CompanyList({Key? key}) : super(key: key);
  final cInfo = CompanyDataModel.CompanyData();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.maxFinite,
      child: ListView.separated(

        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context, builder: (context) {
              return Bottom_sheet(cInfo[index]);
            },);
          },
            child: CompanyItem(cInfo[index]));
      }, separatorBuilder: (context, index) => SizedBox(width: 10,), itemCount: cInfo.length),
    );
  }
}
