import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../desktop_widgets/social_media_container.dart';
import '../../main.dart';
import '../../utils/colors.dart';



class IntroDesktop extends StatefulWidget {
  const IntroDesktop({super.key});

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  @override
  Widget build(BuildContext context) {
     mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: mq.width * 0.04, top: mq.height * 0.1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "\"Strings Attached  Code and Creativity.\"",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: mq.height * 0.04),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: AppColors.theme['secondaryColor'],
                        backgroundImage: AssetImage("assets/image/web_profile.webp"),
                        // backgroundImage: CachedNetworkImageProvider(
                        //   "assets/image/web_profile.webp"
                        // ),
                      ),
                      SizedBox(height: mq.height * 0.02),
                      Text(
                        " Hitesh Mori",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: mq.height * 0.02),
                      Row(
                        children: [
                          SizedBox(width: mq.width * 0.01),
                          SocialMedia(path: "assets/image/github.png", url: 'https://github.com/Hitesh123mori',),
                          SizedBox(width: mq.width * 0.01),
                          SocialMedia(path: "assets/image/linkeddin.png", url: 'https://www.linkedin.com/in/hitesh-mori-562673273',),
                          SizedBox(width: mq.width * 0.01),
                          SocialMedia(path: "assets/image/discord.png", url: 'https://discord.com/channels/@hitesh_mori',),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: mq.width * 0.04,
                  ), // Add some spacing between the avatar and the text
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: mq.height * 0.04),
                        Text(
                          " 👋 Hey, I'm Hitesh Mori, currently studying at Nirma University, Ahmedabad. \n"
                              " I'm passionate about the world of programming and I love developing both"
                              " mobile and web applications.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: true, // Enable word wrap
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
