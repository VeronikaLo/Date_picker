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
      debugShowCheckedModeBanner: false,
      title: 'Date/Time/Range',
      theme: ThemeData(
        primarySwatch:  Colors.cyan,
        textTheme:  const TextTheme(
          headline1: TextStyle( // headline
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.cyan,
          ),
          headline2: TextStyle( // appBar
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          button: TextStyle(  // button
            fontSize: 20,
            color: Colors.white,
          ),
        ),   
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
          title: Text('Date/ Time/ Range', style: Theme.of(context).textTheme.headline2,),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.calendar_today_rounded, color: Colors.white,)),
              Tab(icon: Icon(Icons.alarm_add_rounded, color: Colors.white,)),
              Tab(icon: Icon(Icons.add_alert_rounded, color: Colors.white,)),
              Tab(icon: Icon(Icons. date_range_rounded, color: Colors.white,)),
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
