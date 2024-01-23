import 'package:flutter/material.dart';
import 'package:leonard_portfolio/view/certifications/certifications.dart';
import 'package:leonard_portfolio/view/intro/introduction.dart';
import 'package:leonard_portfolio/view/main/main_view.dart';
import 'package:leonard_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}
