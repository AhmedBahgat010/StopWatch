import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class TimeProvider with ChangeNotifier{
int hour1 = 0;
int minute1 = 0;
int sec1 = 0;
bool start1 =true;
bool stop1 = false;
bool Resume1 = true;
late Timer timer;
  int get hour => hour1;
  int get minute => minute1;
  int get sec => sec1;
  bool get start => start1;
  bool get stop => stop1;


  void startTimer() {
    print('fffffffffffffffffffffffffff');
   start1 = false;
    print(start1);
     stop1 = true;
    print(stop1);

  timer = Timer.periodic(const Duration(seconds: 1), (timer) {

    if (sec1 < 59) {
      sec1++;
    } else if (sec1 == 59) {
      sec1 = 0;
      if (minute1 == 59) {
        minute1 = 0;
        hour1++;
      } else {
        minute1++;
      }
      }
    notifyListeners();
  }
  );
}


  void stopTimer() {
    print('stop 0000000000000000');
       start1 = true;
       stop1 = false;
      print(start1);
      timer.cancel();

    notifyListeners();
  }

}