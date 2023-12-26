import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class ProjLang extends StatelessWidget {
  final String path ;

  const ProjLang({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size ;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: mq.width*0.006),
      child: CircleAvatar(
        radius: mq.height*0.03,
        backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(path),
        // backgroundImage: CachedNetworkImageProvider(
        //   path
        // ),
      ),
    );
  }
}
