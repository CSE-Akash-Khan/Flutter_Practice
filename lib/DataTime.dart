import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';

class DataTime extends StatefulWidget {
  DataTime({Key? key}) : super(key: key);

  @override
  State<DataTime> createState() => _DataTimeState();
}

class _DataTimeState extends State<DataTime> {
  DateTime dateTime = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    var current_time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date and time",
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('${current_time.hour.toString()}: ${current_time.minute.toString()}:  ${current_time.second.toString()}: ${current_time.weekday.toString()} ',style: Theme.of(context).textTheme.headline1,),
            // Text(DateFormat("yMMMMEEEEd").format(current_time)),
            // Text('${datePicked!.year}: ${datePicked!.month}: ${datePicked!.day}'),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePic = await showDatePicker(
                      context: context,
                      initialDate: dateTime,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2020));
                  if(datePic == null) return;
                  setState(() {
                    dateTime = datePic;
                  });

                },
                child: Text("Date Pick")),
            const SizedBox(
              height: 10,
            ),
            Text("${time.hour} : ${time.minute}"),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickTime = await showTimePicker(
                      context: context,
                      initialTime: time,
                      initialEntryMode: TimePickerEntryMode.dial);
                  if (pickTime != null) {
                    print(pickTime.hour);
                  }
                  setState(() {
                    time = pickTime!;
                  });
                },
                child: const Text("Pic Time")),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
