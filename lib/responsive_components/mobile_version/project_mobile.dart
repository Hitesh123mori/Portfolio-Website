import 'package:flutter/material.dart';
import '../../main.dart';
import '../../mobile_widgets/project_container_mobile.dart';
import '../../utils/colors.dart';



class ProjectMobile extends StatefulWidget {
  const ProjectMobile({super.key});

  @override
  State<ProjectMobile> createState() => _ProjectMobileState();
}

class _ProjectMobileState extends State<ProjectMobile> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
      child: Column(
        children: [

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
            child: Container(
              height: mq.height*0.06,
              width: mq.width*0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: AppColors.theme['secondaryColor']
              ),
              child: Center(
                child: Text(
                  "Projects",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: mq.height*0.05,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: mq.width*0.03),
            child: Row(
              children:[

                ProjectContainerMobile(title: 'Meetwith', link: 'https://github.com/Hitesh123mori/video_meet_App', language: ["assets/image/flutter.png","assets/image/dart.png","assets/image/firebase.png"], description: "I developed this Video Conference application using Flutter, Dart,zegocloud and Firebase purely for learning new things. ",),
                SizedBox(width: mq.width*0.02,),
                ProjectContainerMobile(title: 'Contact Manager', link: 'https://github.com/Hitesh123mori/Contact_Manager', language: ["assets/image/flutter.png","assets/image/dart.png","assets/image/firebase.png"], description: "I developed this Contact Manager application using Flutter, Dart,Binary Search Tree and Firebase for DSA Assignment",),
                SizedBox(width: mq.width*0.02,),
                ProjectContainerMobile(title: 'Game', link: 'https://github.com/hitubharajput/Game---Pygame', language: ["assets/image/python.png"], description: "Basic game using python-pygame just for learning",),
                SizedBox(width: mq.width*0.02,),
                ProjectContainerMobile(title: 'Chat Application', link: "https://github.com/Hitesh123mori/Chat_App", language: ["assets/image/flutter.png","assets/image/dart.png","assets/image/firebase.png"], description: "I developed this chat application using Flutter, Dart, and Firebase purely for  learning new things.",),
                SizedBox(width: mq.width*0.02,),
                ProjectContainerMobile(title: 'Chat with AI', link: "https://github.com/Hitesh123mori/Ai_Chat", language: ["assets/image/flutter.png","assets/image/dart.png","assets/image/firebase.png"], description: "I developed this  application using Flutter, Dart,Open ai service and Firebase purely for learning new things.",),
                SizedBox(width: mq.width*0.02,),
                ProjectContainerMobile(title: 'Personal Website', link: '', language: ["assets/image/flutter.png","assets/image/dart.png","assets/image/firebase.png"], description: "My personal Portfolio website using Flutter , dart, and firebase",)

              ]
            ),
          ),
        )




        ],
      ),
    );
  }
}
