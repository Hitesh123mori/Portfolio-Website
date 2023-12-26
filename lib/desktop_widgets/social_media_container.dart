import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../utils/colors.dart';



class SocialMedia extends StatefulWidget {
  final String path ;
  final String url ;
  const SocialMedia({super.key,required this.path, required this.url});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {

  bool isHover = false ;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size ;
    return MouseRegion(
      cursor: MouseCursor.defer,
      onEnter: (_){
        setState(() {
          isHover = true;
        });
      },
      onExit: (_){
        setState(() {
          isHover = false ;
        });
      },
      child: InkWell(
        onTap: (){
          launchUrl(Uri.parse(widget.url));
        },
        child: Container(
          constraints: BoxConstraints(
          minHeight: 50.0,
          minWidth: 50.0,
        ),
          height: mq.height*0.09,
          width: mq.width*0.05,
          decoration: BoxDecoration(
            color: AppColors.theme['secondaryColor'],
            border: Border.all(
              color: isHover ? Colors.white24 : Colors.transparent,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 18,
                child : Image.asset(widget.path),
                // backgroundImage: CachedNetworkImageProvider(
                //   widget.path,
                // ),
                backgroundColor: Colors.transparent, // Make sure to set the background color to transparent
              ),
            ],
          ),
        ),
      ),
    );

  }


}
