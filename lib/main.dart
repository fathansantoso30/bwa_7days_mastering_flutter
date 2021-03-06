import 'package:bwa_7days_mastering_flutter/view/day1/splashScreen1.dart';
import 'package:bwa_7days_mastering_flutter/view/day1/splashScreen2.dart';
import 'package:bwa_7days_mastering_flutter/view/day2/getStarted1.dart';
import 'package:bwa_7days_mastering_flutter/view/day2/getStarted2.dart';
import 'package:bwa_7days_mastering_flutter/view/day3/signIn1.dart';
import 'package:bwa_7days_mastering_flutter/view/day3/signIn2.dart';
import 'package:bwa_7days_mastering_flutter/view/day4/emptyState1.dart';
import 'package:bwa_7days_mastering_flutter/view/day4/emptyState2.dart';
import 'package:bwa_7days_mastering_flutter/view/day5/ratingScreen1.dart';
import 'package:bwa_7days_mastering_flutter/view/day5/ratingScreen2.dart';
import 'package:bwa_7days_mastering_flutter/view/day6/pricingScreen1.dart';
import 'package:bwa_7days_mastering_flutter/view/day6/pricingScreen2.dart';
import 'package:bwa_7days_mastering_flutter/view/day7/randomScreen1.dart';
import 'package:bwa_7days_mastering_flutter/view/day7/randomScreen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RandomScreen2(),
    );
  }
}
