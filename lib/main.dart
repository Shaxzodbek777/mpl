import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mpl/Pages/HomePage.dart';
import 'package:mpl/Pages/IntroPage.dart';
import 'package:mpl/Pages/RoyxatdanOtish.dart';

import 'Pages/kirish.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  await Firebase.initializeApp();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
      Kirish.id: (context) => Kirish(),
        RoyxatdanOtish.id:(context)=> RoyxatdanOtish(),
        HomePage.id:(context) => HomePage()

      },
    );
  }
}

