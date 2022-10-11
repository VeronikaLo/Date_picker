import 'package:flutter/material.dart';


class RangePicker extends StatefulWidget {
  const RangePicker({super.key});

  @override
  State<RangePicker> createState() => _RangePickerState();
}

class _RangePickerState extends State<RangePicker> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
      child: Text('RangePicker'),
    ),
    );
  }
}