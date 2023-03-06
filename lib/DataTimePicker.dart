import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  var dateValue = "Pick Date";
  var timeValue = "Time value";
  var selectedDate="21";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dateValue),
            ElevatedButton(onPressed: () async {
              DateTime? datePick = await showDatePicker(context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025));
              if (datePick != null) {
                setState(() {
                  dateValue =
                  "${datePick.year} : ${datePick.month} : ${datePick.day}";
                });
              }
            }, child: Text("Pick Date")),
            SizedBox(height: 16,),
            Text(timeValue),
            ElevatedButton(onPressed: ()async {
              TimeOfDay? pickTime = await showTimePicker(
                  context: context, initialTime:TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial
              );
              if(pickTime != null){
                setState(() {
                  timeValue = "${pickTime.hour} : ${pickTime.minute} : ${pickTime.hourOfPeriod}";
                });
              }
            }, child: Text("Pick Time")),
            // SizedBox(height: 20,),
            SizedBox(height: 20,),
          Container(
            height: 100,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (DateTime newDate) {
                setState(() {
                  selectedDate = newDate.toString();
                });
              },
            ),
          ),
            SizedBox(height: 20,),
            Text(selectedDate.substring(0,10))
          ],
        ),
      ),
    );
  }
}
