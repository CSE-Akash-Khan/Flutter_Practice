import 'dart:async';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var opacityValue = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 0),() {
      setState(() {
        opacityValue = 1.0;
      });
    },);
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return AnimatedOpacity(
      opacity: opacityValue,
      duration:Duration(seconds: 1),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Food Category",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            flexibleSpace:Image.network("https://www.wbcsd.org/var/site/storage/images/media/images/fresh_pa/80809-2-eng-GB/FRESH_PA_i1140.jpg",fit: BoxFit.cover,),
            // flexibleSpace: Image.asset("images/bg.jpg"),
            expandedHeight: size*.15,
            centerTitle: true,
            shadowColor: Colors.grey.shade500,
            forceElevated: true,
            elevation: 25,
            pinned: true,
            ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 25.0,right: 8.0,bottom: 8.0),
                child: Column(
                  children: [
                    Container(
                      height: size * .22,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Food-Name-2482.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Froots",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400),)),

                    ),
                    SizedBox(height: 11,),
                    Container(
                      height: size * .20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://dosaandcurry.ca/wp-content/uploads/2021/11/Soft-Drinks.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Soft Drinks",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,),)),

                    ),
                    SizedBox(height: 11,),
                    Container(
                      height: size * .20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://cdn.britannica.com/08/177308-050-94D9D6BE/Food-Pizza-Basil-Tomato.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Pizza",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400,),)),
                    ),
                    SizedBox(height: 11,),
                    Container(
                      height: size * .22,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Food-Name-2482.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Froots",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400),)),

                    ),
                    SizedBox(height: 11,),
                    Container(
                      height: size * .20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://dosaandcurry.ca/wp-content/uploads/2021/11/Soft-Drinks.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Soft Drinks",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,),)),

                    ),
                    SizedBox(height: 11,),
                    Container(
                      height: size * .20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://cdn.britannica.com/08/177308-050-94D9D6BE/Food-Pizza-Basil-Tomato.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey)]
                      ),
                      child: Center(child: Text("Pizza",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400,),)),

                    ),
                  ],
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}
