import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].link));
            }, child: const Text('Check on >>',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold,fontSize: 10),))
      ],
    );
  }
}
