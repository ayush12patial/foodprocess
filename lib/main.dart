
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodorderprocess/Firstpage/LL.dart';
import 'package:foodorderprocess/Firstpage/Signup.dart';
import 'package:foodorderprocess/Firstpage/cart.dart';
import 'package:foodorderprocess/Firstpage/firstpage.dart';
import 'package:foodorderprocess/Firstpage/grid.dart';
import 'package:foodorderprocess/Firstpage/likepage.dart';
import 'package:foodorderprocess/Firstpage/payment.dart';
import 'package:foodorderprocess/Firstpage/secondpage.dart';
import 'package:foodorderprocess/Firstpage/thirdpage.dart';

import 'Firstpage/Fourthpage.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  ));
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
      "8": (context) => Signup(),
      "9": (context)  => likepage(),
      "10": (context)  => LL(),

    },
  ));
}




