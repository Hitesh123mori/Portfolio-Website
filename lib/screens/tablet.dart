import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../responsive_components/tablet_version/achievement_tablet.dart';
import '../responsive_components/tablet_version/code_platform_tablet.dart';
import '../responsive_components/tablet_version/intro_detail_3.dart';
import '../responsive_components/tablet_version/project_tab.dart';
import '../responsive_components/tablet_version/tech_know_tab.dart';
import '../utils/colors.dart';





class TabVersion extends StatefulWidget {
  const TabVersion({super.key});

  @override
  State<TabVersion> createState() => _TabVersionState();
}

class _TabVersionState extends State<TabVersion> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.theme['primaryColor']),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: mq.height*0.02,),
                IntroTab(),
                SizedBox(height: mq.height*0.02,),
                TechKnowTab(),
                SizedBox(height: mq.height*0.02,),
                ProjectTab(),
                SizedBox(height: mq.height*0.02,),
                PlatformTab(),
                SizedBox(height: mq.height*0.02,),
                AchievementsTab(),
                SizedBox(height: mq.height*0.02,),
                Container(
                  constraints: BoxConstraints(
                    minHeight: 100.0,
                  ),
                  height: mq.height * 0.1,
                  width: mq.width * 1,
                  color: AppColors.theme['secondaryColor'],
                  child: Column(
                    children: [
                      SizedBox(
                        height: mq.height * 0.01,
                      ),
                      Row(
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
                            "Mail id : ",
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
                      Row(
                        children: [
                          SizedBox(
                            width: mq.width * 0.05,
                          ),
                          Container(
                              height: 25,
                              width: 25,
                              child: Image.asset("assets/image/link2.png"),
                              // child: Image(
                              //     image: CachedNetworkImageProvider(
                              //         "assets/image/link2.png"))
                          ),
                          SizedBox(
                            width: mq.width * 0.01,
                          ),
                          Text(
                            "Linkedin : ",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
