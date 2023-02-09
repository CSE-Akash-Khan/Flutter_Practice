import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 250,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35))),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),topRight: Radius.circular(35))
                ),
                accountName: Text("Akash khan"),
                accountEmail: Text("akashkhan@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5603AQFMmv3zh2p_Zg/profile-displayphoto-shrink_800_800/0/1648711007990?e=1681344000&v=beta&t=pGu5Esh09RoqubdnQtnfksg2YTcBPlHyY6JJWnLEiUg"),
                  radius: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ],
          ),
        ),
      );

  }
}
