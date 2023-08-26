
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodorderprocess/Firstpage/cart.dart';
import 'package:foodorderprocess/Firstpage/firstpage.dart';
import 'package:foodorderprocess/Firstpage/grid.dart';
import 'package:foodorderprocess/Firstpage/payment.dart';
import 'package:foodorderprocess/Firstpage/secondpage.dart';
import 'package:foodorderprocess/Firstpage/thirdpage.dart';

import 'Firstpage/TEst.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
  runApp( MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: "1",
    routes: {
      "1": (context) => firstpage(),
      "2": (context) => secondpage(),
      "3": (context) => thirdpage(),
      "4": (context) =>  test(),
      "5": (context)  => cart(),
      "6": (context)  => payment(),
      "7": (context) => grid(),
    },
  ));
}




