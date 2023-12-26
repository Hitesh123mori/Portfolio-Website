import 'package:flutter/material.dart';
import '../../desktop_widgets/technology_container.dart';
import '../../main.dart';
import '../../utils/colors.dart';




class KnowTech extends StatefulWidget {
  const KnowTech({super.key});

  @override
  State<KnowTech> createState() => _KnowTechState();
}

class _KnowTechState extends State<KnowTech> {
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
            width: mq.width*0.19,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Technology(path: "assets/image/c.png"),
             SizedBox(width: mq.width*0.01,),
             Technology(path: "assets/image/cpp.png"),
            SizedBox(width: mq.width*0.01,),
             Technology(path: "assets/image/flutter.png"),
            SizedBox(width: mq.width*0.01,),
             Technology(path: "assets/image/dart.png",),
            SizedBox(width: mq.width*0.01,),
            Technology(path: "assets/image/python.png",),
            SizedBox(width: mq.width*0.01,),
            Technology(path: "assets/image/java.png",),
            SizedBox(width: mq.width*0.01,),
            Technology(path: "assets/image/html.png",),
            SizedBox(width: mq.width*0.01,),
            Technology(path: "assets/image/css.png",),
            SizedBox(width: mq.width*0.01,),
            Technology(path: "assets/image/javascript.png",),
          ],
        )
      ],
    );
  }
}
