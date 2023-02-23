import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/SEIP_Class/job_UI/companyDetails/CompanyDataModel.dart';

class Bottom_sheet extends StatelessWidget {
  CompanyDataModel
      companyDataModel; //this class receive model type data that we made earlier

  Bottom_sheet(this.companyDataModel);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(21), topLeft: Radius.circular(21)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 3,
                  width: 50,
                  color: Colors.grey.withOpacity(.6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        child: SvgPicture.asset(
                          companyDataModel.logoUrl,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(companyDataModel.company)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Product Design",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Baseline(
                        baselineType: TextBaseline.ideographic,
                        baseline: 20,
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.orangeAccent,
                        )),
                    // Icon(Icons.location_on_outlined,color: Colors.orangeAccent,),

                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 170,
                        child: Text(companyDataModel.location,
                            style: TextStyle(color: Colors.black54)))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      companyDataModel.fullTime,
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Requirments",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // Text(companyDataModel.req.toString())
            // LIs
            ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    minLeadingWidth: 0,
                    contentPadding: EdgeInsets.zero,
                    // horizontalTitleGap: 0.0,
                    leading: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    title: Text('${companyDataModel.req[index]}'),
                  );
                  // return Container(
                  //   child: Text("⚈  ${companyDataModel.req[index]}"),
                  // );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: companyDataModel.req.length),
            SizedBox(height: 11,),
            MaterialButton(
              minWidth: double.maxFinite,
              height: 40,
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21)
              ),
                onPressed: (){},
              child: Text("Apply Now",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
