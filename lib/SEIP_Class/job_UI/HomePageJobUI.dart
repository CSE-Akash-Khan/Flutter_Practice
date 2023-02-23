import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/job_UI/companyDetails/CompanyItem.dart';
import 'package:practice/SEIP_Class/job_UI/SearchDemo.dart';
import 'package:practice/SEIP_Class/job_UI/TagList.dart';
import 'package:practice/SEIP_Class/job_UI/appBar.dart';

import 'companyDetails/CompanyList.dart';
class HomePageJobUI extends StatelessWidget {
  const HomePageJobUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                )
              ],
            ),
            Column(
              children: [
                App_Bar(),
                SizedBox(height: 20,),
                SearchDemo(),
                SizedBox(height: 20,),
                TagList(),
                SizedBox(height: 20,),
                CompanyList()
              ],
            )
          ],
        ),
      )
    );
  }
}
