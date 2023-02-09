import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({Key? key}) : super(key: key);

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  var nameController = TextEditingController();
  var name = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: const Text("Name"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.green)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(21)),

                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  var name = nameController.text.toString();
                  var pref = await SharedPreferences.getInstance(); //initialize
                  pref.setString("Name", name); //key value
                },
                child: const Text("Save")),
            const SizedBox(
              height: 11,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }

  void getValue() async {
    var pref = await SharedPreferences.getInstance(); //initialize
    var getName = pref.getString("Name");
    name = getName ?? "No Value";
    setState(() {});
  }
}
