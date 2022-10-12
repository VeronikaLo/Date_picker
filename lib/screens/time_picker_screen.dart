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
        setState(() => time = newTime);
      } else {  //Cancel option by Dialog
        return;
      }
      
  }
  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2,'0'); //to ajust hours if we have only 1 digit chosen (under10)
    final minutes = time.minute.toString().padLeft(2,'0'); //to ajust minutes if we have only 1 digit chosen (under10)
    return  Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Time Picker', style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 50),
          Text('$hours : $minutes', style: Theme.of(context).textTheme.headline3,),
          const SizedBox(height: 70,),
          ElevatedButton(
            onPressed: _pickTime, 
            child: Text('Select Time', style: Theme.of(context).textTheme.button,))
        ],
      ),
    ),
    );
  }
}