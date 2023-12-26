import 'package:flutter/material.dart';
import '../../desktop_widgets/code_platfomr.dart';
import '../../main.dart';
import '../../utils/colors.dart';



class CodePlatform extends StatefulWidget {
  const CodePlatform({super.key});

  @override
  State<CodePlatform> createState() => _CodePlatformState();
}

class _CodePlatformState extends State<CodePlatform> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
          child: Container(
            height: mq.height*0.08,
            width: mq.width*0.23,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: AppColors.theme['secondaryColor']
            ),
            child: Center(
              child: Text(
                "Coding Platform Links",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CodingPlatform(path: 'assets/image/leetcode.webp', text: 'LEETCODE', link: "https://leetcode.com/harshmori0521/",),
            SizedBox(width: mq.width*0.01,),
            CodingPlatform(path: 'assets/image/codeforces.webp', text: 'CODEFORCES', link: "https://codeforces.com/profile/harsh_rajput210",),
            SizedBox(width: mq.width*0.01,),
            CodingPlatform(path: 'assets/image/github.png', text: 'GITHUB 1', link: "https://github.com/Hitesh123mori",),
            SizedBox(width: mq.width*0.01,),
            CodingPlatform(path: 'assets/image/github.png', text: 'GITHUB 2', link: "https://github.com/hitubharajput",),


          ],
        )
      ],
    );
  }
}
