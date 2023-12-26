import 'package:flutter/material.dart';
import '../../main.dart';
import '../../mobile_widgets/tech_container.dart';
import '../../utils/colors.dart';




class TechKnow extends StatefulWidget {
  const TechKnow({super.key});

  @override
  State<TechKnow> createState() => _TechKnowState();
}

class _TechKnowState extends State<TechKnow> {
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
                "Known Technologies",
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
          children: [
            SizedBox(width: mq.width*0.1,),
            TechnologyMobile(path: "assets/image/c.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/cpp.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/flutter.png"),
            SizedBox(width: mq.width*0.1,),
          ],
        ),
        SizedBox(height: mq.height*0.01,),
        Row(
          children: [
            SizedBox(width: mq.width*0.1,),
            TechnologyMobile(path: "assets/image/dart.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/python.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/java.png"),
            SizedBox(width: mq.width*0.1,),
          ],
        ), SizedBox(height: mq.height*0.01,),
        Row(
          children: [
            SizedBox(width: mq.width*0.1,),
            TechnologyMobile(path: "assets/image/html.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/css.png"),
            SizedBox(width: mq.width*0.01,),
            TechnologyMobile(path: "assets/image/javascript.png"),
            SizedBox(width: mq.width*0.1,),
          ],
        ),

      ],
    );
  }
}
