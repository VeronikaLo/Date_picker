import 'package:flutter/material.dart';


class RangePicker extends StatefulWidget {
  const RangePicker({super.key});

  @override
  State<RangePicker> createState() => _RangePickerState();
}

class _RangePickerState extends State<RangePicker> {

  DateTimeRange? _selectedDateRange;
  DateTime date = DateTime.now();

  Future<void> _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(1990),
      lastDate: DateTime(2030),
      currentDate: date,
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final start = _selectedDateRange?.start;
    final end = _selectedDateRange?.end;
    final diff = _selectedDateRange?.duration; 
    return Scaffold(
      body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('RangePicker'),
          const SizedBox(height: 40,),
          Text(_selectedDateRange==null? "Start: 0":'Start: ${start?.day}/ ${start?.month}/ ${start?.year}'),
          const SizedBox(height: 20,),
          Text(_selectedDateRange==null? "End: 0" :'End: ${end?.day}/ ${end?.month}/ ${end?.year}'),
          const SizedBox(height: 20,),
          Text(_selectedDateRange==null? "Diration: 0":'Duration: ${diff?.inDays} days'),
          const SizedBox(height: 40,),

          ElevatedButton.icon(
            onPressed: _show, 
            icon:const Icon(Icons.date_range_rounded), 
            label: const Text('Chose the range'))
        ],
      ),
    ),
    );
  }
}