import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/projects.dart';

import './project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Projects", style: Theme.of(context).textTheme.headline6),
        SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.3,
              crossAxisCount: 3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => ProjectCard(
            project: projects[index],
          ),
        ),
      ],
    );
  }
}
