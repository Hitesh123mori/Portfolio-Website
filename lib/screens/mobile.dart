import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import '../responsive_components/mobile_version/achievement_mobile.dart';
import '../responsive_components/mobile_version/intro_detail_2.dart';
import '../responsive_components/mobile_version/platform_mobile.dart';
import '../responsive_components/mobile_version/project_mobile.dart';
import '../responsive_components/mobile_version/tech_know.dart';
import '../utils/colors.dart';



class MobileVersion extends StatefulWidget {
  const MobileVersion({super.key});

  @override
  State<MobileVersion> createState() => _MobileVersionState();
}

class _MobileVersionState extends State<MobileVersion> {
  @override
  Widget build(BuildContext context) {
    mq  = MediaQuery.of(context).size ;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.theme['primaryColor']),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: mq.height*0.02,),
                  IntroMobile(),
                  SizedBox(height: mq.height*0.04,),
                  TechKnow(),
                  SizedBox(height: mq.height*0.04,),
                  ProjectMobile(),
                  SizedBox(height: mq.height*0.04,),
                  PlatformMobile(),
                  SizedBox(height: mq.height*0.04,),
                  AchievementsMobile(),
                  SizedBox(height: mq.height*0.04,),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 200.0,
                      minWidth: mq.width*1
                    ),
                    height: mq.height * 0.2,
                    width: mq.width * 1,
                    color: AppColors.theme['secondaryColor'],
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: mq.width * 0.05,
                              ),
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: mq.width * 0.01,
                              ),
                              Text(
                                "Mail id",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: () async {
                                    final Uri _emailLaunchUri = Uri(
                                      scheme: 'mailto',
                                      path: "hiteshvmori@gmail.com",
                                    );
                                    await launch(_emailLaunchUri.toString());
                                  },
                                  child: Text(
                                    "hiteshvmori@gmail.com",
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: mq.width * 0.05,
                              ),
                              Container(
                                  height: 25,
                                  width: 25,
                                  child:Image.asset("assets/image/link2.png")
                                  // child: Image(
                                  //     image: CachedNetworkImageProvider(
                                  //         "assets/image/link2.png"))
                              ),
                              SizedBox(
                                width: mq.width * 0.01,
                              ),
                              Text(
                                "Linkedin",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: () {
                                    launchUrl(Uri.parse("https://www.linkedin.com/in/hitesh-mori-562673273"));
                                  },
                                  child: Text(
                                    "https://www.linkedin.com/in/hitesh-mori-562673273",
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
