

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodorderprocess/Firstpage/firstpage.dart';
import 'package:foodorderprocess/Firstpage/secondpage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "1",
    routes: {
      "1": (context) => firstpage(),
      "2": (context) => secondpage()
    },
  ));
}




