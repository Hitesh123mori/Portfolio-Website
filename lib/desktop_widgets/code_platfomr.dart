import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../utils/colors.dart';





class CodingPlatform extends StatefulWidget {
  final String path ;
  final String text ;
  final String link ;
  const CodingPlatform({super.key, required this.path, required this.text, required this.link});

  @override
  State<CodingPlatform> createState() => _CodingPlatformState();
}

class _CodingPlatformState extends State<CodingPlatform> {

  bool isHover = false;
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
        isHover = true;
      });
    },
      child: InkWell(
        onTap: (){
          launchUrl(Uri.parse(widget.link));
        },
        child: Container(
          constraints: BoxConstraints(
            minHeight: 200.0,
            minWidth: 200.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.theme['secondaryColor'],
            border: Border.all(
              color: isHover ? Colors.white24 : Colors.transparent,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: mq.width*0.01,),
              Container(
                height:mq.height*0.2,
                width: mq.width*0.1,
                child: Center(
                  child : Image.asset(widget.path),
                 /* child: Image(
                    image: CachedNetworkImageProvider(
                      widget.path
                    ),
                  ),*/
                ),
              ),
              SizedBox(width: mq.width*0.01,),
              Text(widget.text,style: TextStyle(color: Colors.white),),
              SizedBox(width: mq.width*0.01,),
            ],
          ),
        ),
      ),
    );
  }
}
