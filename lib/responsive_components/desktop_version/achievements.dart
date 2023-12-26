import 'package:flutter/material.dart';
import '../../desktop_widgets/achievement_cont.dart';
import '../../main.dart';
import '../../utils/colors.dart';



class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
          child: Container(
            height: mq.height * 0.08,
            width: mq.width * 0.13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: AppColors.theme['secondaryColor']),
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
        SizedBox(
          height: mq.height * 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AchieveContainer(
              path: 'assets/image/cert3.jpg',
              dis: "We clinched 2nd place at the Tic Tech Toe'23 competition\n organnized by DAIICT.\n\nTeam Mates : \nNiraj Chaudhary\nKenil Kaneria\nMihir Patel\n\n Project Details: \nMedical Appoinment System\n",
              text: 'DAIICT - Tic Tech Toe(2nd Rank)',
              date: 'September 2023',
              attach: "https://github.com/Niraj-KC/tic-tech-toe-2023",
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            AchieveContainer(
              path: 'assets/image/cirt1.jpg',
              dis: "I participated in Hackout'23 at DAIICT.\n\nTeam Mate:\nNiraj Chaudhary\nMihir patel\nParthiv Vekariya\n\nProject Details : \nEducation App",
              text: "DAIICT - Hackout'23(Top 10)",
              date: 'August 2023',
              attach: "https://github.com/Niraj-KC/Edusakha-Hackout-23",
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            AchieveContainer(
              path: 'assets/image/cert2.jpg',
              dis:
                  "During First Year  we`re at 5th Postion under track\n App Development\n\nProject Partner : \nNiraj Chaudhary\n\nProject Details : \nBussiness Scanner Application",
              text: "Nirma University - HackNuThon'4(Top 5)",
              date: 'April 2023',
              attach: "https://github.com/Hitesh123mori/Scanner-App---Flutter",
            )
          ],
        )
      ],
    );
  }
}
