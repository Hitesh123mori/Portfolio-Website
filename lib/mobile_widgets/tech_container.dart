import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/colors.dart';



class TechnologyMobile extends StatefulWidget {
  final String path ;
  const TechnologyMobile({super.key, required this.path,});

  @override
  State<TechnologyMobile> createState() => _TechnologyMobileState();
}

class _TechnologyMobileState extends State<TechnologyMobile> {
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
          height: mq.height*0.1,
          width: mq.width*0.25,
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
