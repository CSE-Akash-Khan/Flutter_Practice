import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.nameArr,
  }) : super(key: key);

  final List<String> nameArr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          // leading: Text('${index + 1}'),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/boy.png"),
            maxRadius: 30,
            backgroundColor: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(nameArr[index],style: TextStyle(color: Colors.black,fontSize: 10),),
              ],
            ),
          ),
          title: Text(nameArr[index]),
          subtitle: Text("Number"),
          trailing: Icon(Icons.add),
        );
      }, separatorBuilder: (context, index) {
        return Divider(height: 5,thickness: 2,);
      }, itemCount: nameArr.length),
    );
  }
}
