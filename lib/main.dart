import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/provider_Stopwatch/stopwatch_timer.dart';
import 'package:stopwatch/screens/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.brown,
      theme: ThemeData(
        backgroundColor: Colors.black12,
      ),
      home: ChangeNotifierProvider<TimeProvider>(
          create: (context) => TimeProvider(),
          child: const TimerScreen()),
    );
  }
}
