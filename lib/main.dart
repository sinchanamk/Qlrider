import 'package:flutter/material.dart';
import 'package:qlriderr/screens/earnings.dart';
import 'package:qlriderr/screens/fillprofile.dart';
import 'package:qlriderr/screens/img_fol.dart';
import 'package:qlriderr/screens/img_fol2.dart';
import 'package:qlriderr/screens/selfipic.dart';

import 'landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home:LandingPage(),
     debugShowCheckedModeBanner: false,
     );
  }
}
