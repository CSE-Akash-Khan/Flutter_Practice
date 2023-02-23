import 'package:flutter/material.dart';


import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';
class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  var currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: currentIndex
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(0.8),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 60,
                // color: Colors.blue,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MaterialButton(

                        minWidth: 100,
                        onPressed: () {
                          setState(() {
                            currentIndex = 0;
                            pageController.jumpToPage(0);
                          });
                        },
                        color: currentIndex == 0? Colors.purple:Colors.orange,
                        child: Text("Page1"),
                      ),
                      MaterialButton(

                        minWidth: 100,
                        onPressed: () {
                          setState(() {
                            currentIndex = 1;
                            pageController.jumpToPage(1);
                          });
                        },
                        color: currentIndex == 1? Colors.green:Colors.orange,
                        child: Text("Page2"),
                      ),
                      MaterialButton(

                        minWidth: 100,
                        onPressed: () {
                          setState(() {
                            currentIndex = 2;
                            pageController.jumpToPage(2);
                          });
                        },
                        color: currentIndex == 2? Colors.orange:Colors.orange,
                        child: Text("Page3"),
                      ),
                      MaterialButton(

                        minWidth: 100,
                        onPressed: () {
                        setState(() {
                          currentIndex = 3;
                          pageController.jumpToPage(0);
                        });
                        },
                        color: currentIndex == 3? Colors.blue:Colors.orange,
                        child: Text("Page1"),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4()
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
