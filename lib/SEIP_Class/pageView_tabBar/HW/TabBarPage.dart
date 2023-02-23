import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page1.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page2.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page3.dart';

import 'appBar.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}
class _TabBarPageState extends State<TabBarPage>with SingleTickerProviderStateMixin {
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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Appbar(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                        labelColor: Colors.black,
                        controller: tabController,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.purpleAccent,
                        isScrollable: true,

                        tabs: const [
                          Tab(
                            text: "Page1",
                          ),
                          Tab(
                            text: "Page2",
                          ),
                          Tab(
                            text: "Page3",
                          ),
                        ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}


