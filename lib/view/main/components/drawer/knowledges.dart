import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Http'),
        KnowledgeText(knowledge: 'Computer Hardware Troubleshooting'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Bug Fixing'),
      ],
    );
  }

}
