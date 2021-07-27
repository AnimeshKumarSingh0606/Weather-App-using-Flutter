import 'package:flutter/material.dart';

import './SplashScreen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
