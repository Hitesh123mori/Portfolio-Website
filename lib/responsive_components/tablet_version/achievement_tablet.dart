import 'package:flutter/material.dart';

import '../../main.dart';
import '../../tab_widgets/achievement_cont_tab.dart';
import '../../utils/colors.dart';




class AchievementsTab extends StatefulWidget {
  const AchievementsTab({super.key});

  @override
  State<AchievementsTab> createState() => _AchievementsTabState();
}

class _AchievementsTabState extends State<AchievementsTab> {
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
                "Achievements",
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

                AchieveTab(
                  path: 'assets/image/cert3.jpg',
                  dis: "We clinched 2nd place at the Tic Tech Toe'23 competition\n organnized by DAIICT.\n\nTeam Mates : \nNiraj Chaudhary\nKenil Kaneria\nMihir Patel\n\n Project Details: \nMedical Appoinment System\n",
                  text: 'DAIICT - Tic Tech Toe(2nd Rank)',
                  date: 'September 2023',
                  attach: "https://github.com/Niraj-KC/tic-tech-toe-2023",
                ),
                SizedBox(width: mq.width*0.02,),
                AchieveTab(
                  path: 'assets/image/cirt1.jpg',
                  dis: "I participated in Hackout'23 at DAIICT.\n\nTeam Mate:\nNiraj Chaudhary\nMihir patel\nParthiv Vekariya\n\nProject Details : \nEducation App",
                  text: "DAIICT - Hackout'23(Top 10)",
                  date: 'August 2023',
                  attach: "https://github.com/Niraj-KC/Edusakha-Hackout-23",
                ),
                SizedBox(width: mq.height*0.02,),
                AchieveTab(
                  path: 'assets/image/cert2.jpg',
                  dis: "During First Year  we`re at 5th Postion under track\n App Development\n\nProject Partner : \nNiraj Chaudhary\n\nProject Details : \nBussiness Scanner Application",
                  text: "HackNuThon'4(Top 5)",
                  date: 'April 2023',
                  attach: "https://github.com/Hitesh123mori/Scanner-App---Flutter",
                )

              ],
            ),
          ),
        ),


      ],
    ) ;
  }
}
