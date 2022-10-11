import 'package:flutter/material.dart';


class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {

  late TimeOfDay time = TimeOfDay.now();

  Future <void> _pickTime()async{
    TimeOfDay? newTime = await showTimePicker(
      context: context, 
      initialTime: time, 
      );

      if(newTime !=null){ // OK option by Dialog
        setState(() {
        time = newTime;
      });
      } else {  //Cancel option by Dialog
        return;
      }
      
  }
  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2,'0');
    final minutes = time.minute.toString().padLeft(2,'0');
    return  Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Time Picker'),
          const SizedBox(height: 50),
          Text('$hours : $minutes'),
          const SizedBox(height: 70,),
          ElevatedButton(
            onPressed: _pickTime, 
            child: const Text('Select Time'))
        ],
      ),
    ),
    );
  }
}