import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import '../responsive_components/desktop_version/achievements.dart';
import '../responsive_components/desktop_version/code_platform.dart';
import '../responsive_components/desktop_version/intro_details_1.dart';
import '../responsive_components/desktop_version/projects.dart';
import '../responsive_components/desktop_version/technology_know.dart';
import '../utils/colors.dart';




class DesktopVersion extends StatefulWidget {
  const DesktopVersion({super.key});

  @override
  State<DesktopVersion> createState() => _DesktopVersionState();
}

class _DesktopVersionState extends State<DesktopVersion> {
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
                IntroDesktop(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                KnowTech(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Project(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                CodePlatform(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Achievements(),
                SizedBox(
                  height: mq.height * 0.1,
                ),
                Container(
                  constraints: BoxConstraints(
                    minHeight: 140.0,
                  ),
                  height: mq.height * 0.2,
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
