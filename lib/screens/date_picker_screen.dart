import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Center(
      child: Text('DatePicker'),
    ),
    );
  }
}