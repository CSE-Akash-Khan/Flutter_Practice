import 'package:flutter/material.dart';

import 'StudentModel.dart';

class ListViewUsingModel extends StatelessWidget {
  const ListViewUsingModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView with model class"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Total Item: ${myList.length}"),
            ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    tileColor: myList[index].age! <= 30
                        ? Colors.blue //if
                        : myList[index].age! <= 40
                            ? Colors.red //eilse if
                            : myList[index].age! <= 50
                                ? Colors.purpleAccent // else if
                                : Colors.orange, //else
                    title: Text("${myList[index].name} age: ${myList[index].age}"),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("${myList[index].image}"),
                    ),
                    subtitle: Text("${myList[index].gmail}"),
                    trailing: Icon(
                      myList[index].gender == true ? Icons.male : Icons.female,
                      color: myList[index].gender!
                          ? Colors.lightBlueAccent
                          : Colors.red,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
