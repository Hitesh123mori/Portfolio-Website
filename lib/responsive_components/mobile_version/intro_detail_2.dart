import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../mobile_widgets/social_media.dart';
import '../../utils/colors.dart';



class IntroMobile extends StatefulWidget {
  const IntroMobile({super.key});

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size ;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: mq.width*0.01,vertical: mq.height*0.02),
          child: Text(
            "\"Strings Attached  Code and Creativity.\"",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),

        Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.theme['secondaryColor'],
              backgroundImage: AssetImage("assets/image/web_profile.webp"),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaMobile(path: "assets/image/github.png", url: 'https://github.com/Hitesh123mori',),
                SizedBox(width: mq.width * 0.02),
                SocialMediaMobile(path: "assets/image/linkeddin.png", url: 'https://www.linkedin.com/in/hitesh-mori-562673273',),
                SizedBox(width: mq.width * 0.02),
                SocialMediaMobile(path: "assets/image/discord.png", url: 'https://discord.com/channels/@hitesh_mori',),
              ],
            )
          ],
        ),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal:10,vertical: mq.height*0.02),
          child: Container(
            child: Text("👋 Hey,I'm Hitesh Mori,currently studying at Nirma University Ahmedabad.I'm passionate about the world of programming and I love developing both mobile and web applications.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ), // Enable word wrap
            ),
          ),
        ),
      ],
    );
  }
}
