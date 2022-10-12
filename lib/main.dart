import 'package:date/screens/date_and_time_screen.dart';
import 'package:date/screens/date_picker_screen.dart';
import 'package:date/screens/range_screen.dart';
import 'package:date/screens/time_picker_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date/Time/Range',
      theme: ThemeData(
        primarySwatch:  Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar( 
          title: const Text('Date/ Time/ Range'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.calendar_month_rounded)),
              Tab(icon: Icon(Icons.alarm_add_rounded)),
              Tab(icon: Icon(Icons.add_alert_rounded)),
              Tab(icon: Icon(Icons. calendar_today_rounded)),
            ]), ) ,
        body: const TabBarView(
          children: [
            DatePicker(),
            TimePicker(),
            DateAndTime(),
            RangePicker(),
          ]),
      ));
  }
  
  
}
