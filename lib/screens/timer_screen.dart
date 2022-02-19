import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/provider_Stopwatch/stopwatch_timer.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  var timer;

  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Provider.of<TimeProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black26,
      body: Consumer<TimeProvider>(
        builder: (context, timerProvider, widget) {
          print('000');
          print(timer.start1);
          return Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                      '${timer.hour1}:${timer.minute1}:${timer.sec1}',
                      style:
                          const TextStyle(color: Colors.black, fontSize: 90)),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      (timer.start)
                          ? TextButton(
                              onPressed: timer.startTimer,
                              child: const Text(
                                'Start',
                                style: TextStyle(fontSize: 40),
                              ))
                          : const TextButton(
                              onPressed: null,
                              child: Text(
                                'Start',
                                style: TextStyle(fontSize: 40),
                              )),
                      (timer.stop)
                          ? TextButton(
                              onPressed: timer.stopTimer,
                              child: const Text(
                                'Stop',
                                style:
                                    TextStyle(fontSize: 40, color: Colors.red),
                              ))
                          : const TextButton(
                              onPressed: null,
                              child: Text(
                                'Stop',
                                style: TextStyle(fontSize: 40),
                              )),
                    ],
                  )
                ]),
          );
        },
      ),
    );
  }
}
