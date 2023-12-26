import 'package:flutter/material.dart';
import '../../main.dart';
import '../../tab_widgets/code_platform_widget_tab.dart';
import '../../utils/colors.dart';




class PlatformTab extends StatefulWidget {
  const PlatformTab({super.key});

  @override
  State<PlatformTab> createState() => _PlatformTabState();
}

class _PlatformTabState extends State<PlatformTab> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Column(
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

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: mq.width*0.1),
            child: Row(
              children: [
                CodingPlatformTab(path: 'assets/image/leetcode.webp', text: 'LEETCODE', link: "https://leetcode.com/harshmori0521/",),
                SizedBox(width: mq.width*0.02,),
                CodingPlatformTab(path: 'assets/image/codeforces.webp', text: 'CODEFORCES', link: "https://codeforces.com/profile/harsh_rajput210",),
                SizedBox(width: mq.width*0.02,),
                CodingPlatformTab(path: 'assets/image/github.png', text: 'GITHUB 1', link: "https://github.com/Hitesh123mori",),
                SizedBox(width: mq.width*0.02,),
                CodingPlatformTab(path: 'assets/image/github.png', text: 'GITHUB 2', link: "https://github.com/hitubharajput",),
              ],
            ),
          ),
        )


      ],
    );
  }
}
