import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class AddNewCourse extends StatefulWidget {
  const AddNewCourse({Key? key}) : super(key: key);

  @override
  State<AddNewCourse> createState() => _AddNewCourseState();
}

class _AddNewCourseState extends State<AddNewCourse> {
  XFile? _courseImage;

  chooseImageFromCamera(ImageSource source) async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: source);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "Enter Your Course",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Enter Your Course",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
          Expanded(
              child: _courseImage == null? IconButton(
                icon: Icon(Icons.photo),
                onPressed: () {
                  chooseImageFromCamera(ImageSource.gallery);
                },

              ): Image.file(File(_courseImage!.path))

          )
        ],
      ),
    );
  }
}
