import 'package:flutter/material.dart';
import 'package:time_daily_tasks/strap_watch.dart';

import 'analogue_clock.dart';
import 'digital_clock_app.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StrapWatch(),
      routes: {
        '/': (context)=> const DigitalClock(),
        '/analogue': (context)=> const AnalogueClock(),
        '/strap': (context)=>  const StrapWatch(),
      },
    );
  }
}