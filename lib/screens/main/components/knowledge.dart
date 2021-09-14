import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          text: "Flutter, Dart",
        ),
        KnowledgeText(
          text: "React, Javascript",
        ),
        KnowledgeText(
          text: "Laravel, PHP",
        )
      ],
    );
  }
}
