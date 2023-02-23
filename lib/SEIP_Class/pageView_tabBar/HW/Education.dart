import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page1.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page2.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page3.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page4.dart';

import 'appBar.dart';
class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> with SingleTickerProviderStateMixin{
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Appbar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TabBar(
                      labelColor: Colors.black,
                      controller: tabController,
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      labelStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),

                      tabs: const [
                        Tab(
                          text: "Trending",

                        ),
                        Tab(
                          text: "Recent",
                        ),
                        Tab(
                          text: "Popular",
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  // width: double.maxFinite,
                  height: double.maxFinite,
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      Page1(),
                      Page2(),
                      Page3(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
