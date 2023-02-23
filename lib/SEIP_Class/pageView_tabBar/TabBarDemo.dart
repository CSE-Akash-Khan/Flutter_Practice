import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page1.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page2.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page3.dart';
import 'package:practice/SEIP_Class/pageView_tabBar/Page4.dart';
class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> with SingleTickerProviderStateMixin{
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              RotatedBox(
                quarterTurns: 3, //its value relay 1 to 4.. rotated based on clockwise
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    labelColor: Colors.black,
                    controller: tabController,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.purpleAccent,
                    // isScrollable: true,
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
                      Tab(
                        text: "Page4",
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: double.maxFinite,
                  // height: double.maxFinite,
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      Page1(),
                      Page2(),
                      Page3(),
                      Page4()
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
