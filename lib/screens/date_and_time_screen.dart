import 'package:flutter/material.dart';


class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  late DateTime date = DateTime.now();

  Future <void> _pickDate()async{
    DateTime? chosenDate = await showDatePicker(
      context: context, 
      initialDate: date, 
      firstDate: DateTime(1900), 
      lastDate: DateTime(2100));

      if(chosenDate == null) return ; //Cancel option by Dialog// OK option by Dialog
      
      final newDate = DateTime(
        chosenDate.year,
        chosenDate.month,
        chosenDate.day,
        date.hour,
        date.minute
      );

      setState(() => date = newDate);
      
  }

  Future <void> _pickTime()async{
    TimeOfDay? time = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay(hour: date.hour, minute: date.minute), 
      );

      if(time == null){ return;}   //Cancel option by Dialog
        
      final newDate = DateTime(    // OK option by Dialog
        date.year,
        date.month,
        date.day, 
        time.hour,
        time.minute,
        );
        
      setState(()=> date = newDate);
  }

  Future <void> _pickDateTime()async{
    DateTime? chosenDate = await showDatePicker(
      context: context, 
      initialDate: date, 
      firstDate: DateTime(1900), 
      lastDate: DateTime(2100));

      if(chosenDate == null) return ; //Cancel option by Dialog// OK option by Dialog

    TimeOfDay? time = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay(hour: date.hour, minute: date.minute), 
      );

      if(time == null) return; 

    final newDate = DateTime(
      chosenDate.year,
      chosenDate.month,
      chosenDate.day,
      time.hour,
      time.minute,
    );

    setState(()=> date = newDate);  

  }

  @override
  Widget build(BuildContext context) {

    final hours = date.hour.toString().padLeft(2,'0'); //to ajust hours if we have only 1 digit chosen (under10)
    final minutes = date.minute.toString().padLeft(2,'0'); //to ajust minutes if we have only 1 digit chosen (under10)
    return Scaffold(
      body:  Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 12) ,
      child: Center(
        child: Column(
          children: [
            const Text('Date and Time'),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                            onPressed: _pickDate, 
                            child: Text('${date.day}/ ${date.month}/ ${date.year}')),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: ElevatedButton(
                            onPressed: _pickTime, 
                            child: Text('$hours : $minutes')),
                ),
              ],
            ),
            const SizedBox(height:40,),
            SizedBox(
                  height: 60,
                  child: ElevatedButton(
                            onPressed: _pickDateTime, 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${date.day}/ ${date.month}/ ${date.year}'),
                                const SizedBox(width:15),
                                Text('$hours : $minutes'),
                              ],
                            )),
                ),

          ],
        ),
      ),
    ),
    );
  }
}