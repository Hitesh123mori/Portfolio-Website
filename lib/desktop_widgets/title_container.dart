import 'package:flutter/material.dart' ;

import '../main.dart';
import '../utils/colors.dart';


class Heading extends StatelessWidget {
  final String title ;
  const Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),)),
       height:mq.height*0.08 ,
       width: mq.width*0.08,
      decoration: BoxDecoration(
        color: AppColors.theme['secondaryColor'],
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
