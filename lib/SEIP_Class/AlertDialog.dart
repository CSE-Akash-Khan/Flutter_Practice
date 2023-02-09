import 'package:flutter/material.dart';

class AleartDialog extends StatefulWidget {
  const AleartDialog({Key? key}) : super(key: key);

  @override
  State<AleartDialog> createState() => _AleartDialogState();
}

class _AleartDialogState extends State<AleartDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          myDialog();
        }, child: Text("Delete")),
      ),
    );
  }

  void myDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 100,
          width: 250,
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Alert Dialog"),
            content: Text("Do you want to delete."),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Yes")),
              TextButton(onPressed: () {

              }, child: Text("No")),
            ],
          ),
        );
      },
    );
  }
}
