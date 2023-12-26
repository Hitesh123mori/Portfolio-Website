import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/colors.dart';



class Technology extends StatefulWidget {
  final String path ;
  const Technology({super.key, required this.path,});

  @override
  State<Technology> createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  bool isHover = false ;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size ;
    return MouseRegion(
      onExit: (_){
        setState(() {
          isHover = false ;
        });
      },
      onEnter: (_){
        setState(() {
          isHover = true ;
        });
      },
      child: Container(
        height: mq.height*0.14,
        width: mq.width*0.07,
        decoration: BoxDecoration(
            border: Border.all(
              color: isHover ? Colors.white24 : Colors.transparent,
              width: 2.0,
            ),
          borderRadius: BorderRadius.circular(25) ,
          color: AppColors.theme['secondaryColor']
        ),
        child : Image.asset(widget.path),
        // child:Image(image: CachedNetworkImageProvider(
        //   widget.path,
        // ),)

      ),
    );
  }
}
