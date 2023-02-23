import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/SEIP_Class/job_UI/companyDetails/CompanyDataModel.dart';
class CompanyItem extends StatelessWidget {
  CompanyDataModel companyDataModel; //this class receive model type data that we made earlier

   CompanyItem(this.companyDataModel);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width*.7,
      decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius:BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset("images/job_image/google.svg",width: 30,)),
                    Text("  ${companyDataModel.company}",style: TextStyle(fontSize: 16),)
                  ],
                ),
                Icon(Icons.bookmark_border)
              ],
            ),
            Text("${companyDataModel.title}",style: TextStyle(fontSize: 16),),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("${companyDataModel.location}")
              ],
            )
          ],
        ),
      ),
    );
  }
}
