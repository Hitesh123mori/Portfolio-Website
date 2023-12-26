import 'package:flutter/material.dart' ;
import 'package:hitesh/screens/tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop.dart';
import 'mobile.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ScreenTypeLayout.builder(
          mobile:(BuildContext context) => MobileVersion(),
          desktop: (BuildContext context) => DesktopVersion(),
          tablet: (BuildContext context) => TabVersion(),
        ),
      ),
    );
  }
}
