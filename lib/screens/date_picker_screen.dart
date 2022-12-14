import 'package:flutter/material.dart';
class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime date = DateTime.now();

  Future <void> _pickDate()async{
    DateTime? newDate = await showDatePicker(
      context: context, 
      initialDate: date, 
      firstDate: DateTime(1900), 
      lastDate: DateTime(2100));

      if(newDate !=null){ // OK option by Dialog
        setState(() => date = newDate);
      } else {  //Cancel option by Dialog
        return;
      }
      
  }

  

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text('DatePicker', style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 50),
          Text('${date.day}/ ${date.month}/ ${date.year}', style: Theme.of(context).textTheme.headline3,),
          const SizedBox(height: 70,),
          ElevatedButton(
            onPressed: _pickDate, 
            child: Text('Select Date', style: Theme.of(context).textTheme.button,))
        ],
      ),
    ),
    );
  }
}