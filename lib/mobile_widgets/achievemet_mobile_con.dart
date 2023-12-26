import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../utils/colors.dart';



class Achieve extends StatefulWidget {
  final String path ;
  final String dis ;
  final String date ;
  final String text;
  final String attach ;


  const Achieve({super.key, required this.path, required this.dis, required this.text, required this.date, required this.attach});

  @override
  State<Achieve> createState() => _AchieveState();
}

class _AchieveState extends State<Achieve> {

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
          isHover = true ;
        });
      },
      child: Container(
          constraints: BoxConstraints(
            minHeight:  100,
            minWidth:  250,
          ),
          height:  mq.height*0.70,
          width: mq.width*0.75,
          decoration: BoxDecoration(
              border: Border.all(
                color: isHover ? Colors.white24 : Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20) ,
              color: AppColors.theme['secondaryColor']
          ),
          child:SingleChildScrollView(
            child: Column(
                children:[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width*0.01,vertical: mq.height*0.024),
                    child: Row(
                      children: [
                        SizedBox(width: mq.width*0.01,),
                        Text(widget.text,style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                    Column(
                      children: [
                        Builder(
                          builder: (context) {
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10.0),
                              child : Image.asset(widget.path),
                              // child: Image(image: CachedNetworkImageProvider(widget.path)),
                            );
                          },
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: mq.height*0.01,),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: mq.width*0.02),
                                child: Text(
                                  widget.dis,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(height: mq.height * 0.04),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(widget.attach));
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(AppColors.theme['primaryColor']),
                                ),
                                child: Text(
                                  "Github Link",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ]
            ),
          )

      ),
    );
  }
}
