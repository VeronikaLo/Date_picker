import 'package:flutter/material.dart';


class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text('Time Picker'),
    ),
    );
  }
}