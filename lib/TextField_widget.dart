import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool is_clicked = true;
  @override
  Widget build(BuildContext context) {
    var phone = TextEditingController();
    var password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              child: TextField(
                controller: phone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter phone number",
                    prefixIcon: Icon(Icons.phone),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextField(
                obscureText: is_clicked?true:false, //by default its tru
                controller: password,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    suffixIcon: IconButton(
                      icon: Icon(is_clicked?Icons.visibility_off : Icons.visibility,color: Colors.orange,),
                      onPressed: () {
                        setState(() {
                          is_clicked = !is_clicked; //if true then false, if false then true
                        });

                      },
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            var phone_no = phone.text.toString();
            var pass = password.text;
            print("$phone_no $pass");
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
