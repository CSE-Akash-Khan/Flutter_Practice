import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  const Grid_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MaterialColor> color_arr = [
      Colors.grey,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.pink,
      Colors.brown,
      Colors.deepPurple
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: color_arr.length,
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200, crossAxisSpacing: 10, mainAxisSpacing: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: color_arr[index],
          );
        },
      ),

      // body: GridView.count( //fix number of grid in one column/row
      // body: GridView.extent( //fix grid size on screen
      //   maxCrossAxisExtent: 200,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(color: color_arr[0],),
      //     Container(color: color_arr[1],),
      //     Container(color: color_arr[2],),
      //     Container(color: color_arr[3],),
      //     Container(color: color_arr[4],),
      //     Container(color: color_arr[5],),
      //   ],
      // )
    );
  }
}
