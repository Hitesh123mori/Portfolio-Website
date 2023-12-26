import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hitesh/screens/home_screen.dart';

late Size mq;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCOUkJEv2h76tcTf1KVX67Y97tIY1-Y1Qg",
          appId:"1:283387777701:web:43663395387ce83effb34c",
          messagingSenderId: "283387777701",
          projectId: "283387777701"
      ));

  runApp(Myweb());
}

class Myweb extends StatefulWidget {
  const Myweb({super.key});

  @override
  State<Myweb> createState() => _MywebState();
}

class _MywebState extends State<Myweb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hitesh Mori",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
