import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import '../utils/colors.dart';


class AchieveContainer extends StatefulWidget {
  final String path ;
  final String dis ;
  final String date ;
  final String text;
  final String attach ;




  const AchieveContainer({super.key, required this.path, required this.dis, required this.text, required this.date, required this.attach});

  @override
  State<AchieveContainer> createState() => _AchieveContainerState();
}

class _AchieveContainerState extends State<AchieveContainer> {

  bool isHover = false;
  bool isExpand = false;


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
      child: InkWell(
        onTap: (){
          isExpand = !isExpand ;
        },
        child: Container(
            constraints: BoxConstraints(
              minHeight:isExpand ?  350.0 : 50,
              minWidth: isExpand  ? 300.0 : 250,
            ),
            height: isExpand ? mq.height*0.6: mq.height*0.1,
            width: mq.width*0.75,
            decoration: BoxDecoration(
                border: Border.all(
                  color: isHover ? Colors.white24 : Colors.transparent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20) ,
                color: AppColors.theme['secondaryColor']
            ),
            child:Column(
              children:[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mq.width*0.01,vertical: mq.height*0.024),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isExpand ? Icon(
                       Icons.keyboard_arrow_up_outlined,
                        size: 22,
                        color: Colors.white,
                      ) :Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 22,
                      ),
                      Text(widget.text,style: TextStyle(color: Colors.white),),
                      Text(widget.date,style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                if(isExpand)
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: mq.height*0.02),
                    child: Row(
                      children: [
                        Container(
                          height: mq.height * 0.3,
                          width: mq.width * 0.3,
                          child: Builder(
                            builder: (context) {
                              // return Image(image: CachedNetworkImageProvider(widget.path));
                              return  Image.asset(widget.path) ;
                            },

                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.dis,
                                style: TextStyle(color: Colors.white),
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
                  ),


              ]
            )
        
        ),
      ),
    );
  }
}
