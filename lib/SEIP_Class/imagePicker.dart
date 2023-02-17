

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class TakeImageFromGallery extends StatefulWidget {
  TakeImageFromGallery({Key? key}) : super(key: key);

  @override
  State<TakeImageFromGallery> createState() => _TakeImageFromGalleryState();
}

class _TakeImageFromGalleryState extends State<TakeImageFromGallery> {
  bool isImage = false;
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Image"),
      ),
      body: isImage == true ? Container(
        // height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          children: [
            Image.file(File(image!.path)),
            const SizedBox(height: 11,),
            IconButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context) => bottomSheet(context));
            }, icon: const Icon(Icons.image,size: 45,))
          ],
        )
      )
          : Center(
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(context: context, builder: (context) => bottomSheet(context));
              }, icon: const Icon(Icons.image,size: 45,),
            ),
          ),
    );
  }

  Widget bottomSheet(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Colors.purpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Choose Image",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    takePhoto(ImageSource.gallery);
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.image,color: Colors.black,size: 35,),
                      SizedBox(height: 10,),
                      Text("Gallery",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.normal))
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    takePhoto(ImageSource.camera);
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.camera,color: Colors.black,size: 35),
                      SizedBox(height: 10,),
                      Text("Camera",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.normal))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  takePhoto(ImageSource source)async{
    ImagePicker imagePicker = ImagePicker();
    image = await imagePicker.pickImage(source: source);
    isImage = true;
    setState(() {

    });
    Navigator.pop(context);
  }
}


