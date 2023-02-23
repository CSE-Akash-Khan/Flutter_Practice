import 'package:flutter/material.dart';
class TagList extends StatefulWidget {
  TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {

  var selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    final _taglist = ["ALL","⚡ Popular","⭐  Featured"];
    return Container(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: OutlinedButton(

            style: OutlinedButton.styleFrom(
              backgroundColor: selectedColor == index? Colors.yellow.withOpacity(.9) : Colors.white,
              side: BorderSide(color: selectedColor == index? Colors.redAccent : Colors.yellow,width:1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21)
              ),
            ),
              onPressed: (){
                setState(() {
                  selectedColor = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("${_taglist[index]}",style: TextStyle(color: Colors.black,fontSize: 16),),
              )
          ),
        );
      }, separatorBuilder: (context, index) => SizedBox(width: 8,), itemCount: _taglist.length),
    );
  }
}
