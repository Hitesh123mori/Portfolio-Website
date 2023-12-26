import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../desktop_widgets/proj_language.dart';
import '../main.dart';
import '../utils/colors.dart';



class ProjectContainerMobile extends StatefulWidget {
  final String title;
  final String description;
  final String link;
  final List<String> language;

  const ProjectContainerMobile(
      {Key? key,
        required this.title,
        required this.description,
        required this.link,
        required this.language})
      : super(key: key);

  @override
  State<ProjectContainerMobile> createState() => _ProjectContainerMobileState();
}

class _ProjectContainerMobileState extends State<ProjectContainerMobile> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size ;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(widget.link));
        },
        child: Container(
          constraints: BoxConstraints(
            minHeight:  280.0,
            minWidth: 325.0,
          ),
          height: mq.height * 0.13,
          width: mq.width * 0.25,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.theme['secondaryColor'],
            borderRadius: BorderRadius.circular(25),
            border: isHover
                ? Border.all(color: Colors.white24)
                : Border.all(color: AppColors.theme['secondaryColor']),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: widget.language
                        .map((path) => ProjLang(path: path))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
