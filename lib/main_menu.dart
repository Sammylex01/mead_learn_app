import 'package:flutter/material.dart';

import 'src/core/utilities/app_colors.dart';
import 'src/core/utilities/app_textstyle.dart';
import 'src/features/widgets/coursepill.dart';

class AppMainMenu extends StatefulWidget {
  const AppMainMenu({Key? key}): super(key: key);

  @override
  State<AppMainMenu> createState() => _AppMainMenuState();
}

class _AppMainMenuState extends State<AppMainMenu> {

  @override
  Widget build(BuildContext context) {
    List<CoursePill> coursePill = [
      CoursePill(title: "Maths", icon: Icons.assessment_outlined),
      CoursePill(title: "Physics", icon: Icons.cable_outlined),
      CoursePill(title: "Biology", icon: Icons.medical_services_outlined),
      CoursePill(title: "Civic", icon: Icons.handshake_outlined),
      CoursePill(title: "Chemistry", icon: Icons.assessment_outlined),
      CoursePill(title: "Economics", icon: Icons.assessment_outlined),
      CoursePill(title: "English", icon: Icons.assessment_outlined),
      CoursePill(title: "Geography", icon: Icons.assessment_outlined),
      CoursePill(title: "Catering", icon: Icons.lunch_dining_outlined),
      CoursePill(title: "History", icon: Icons.assessment_outlined),
      CoursePill(title: "Business Studies", icon: Icons.assessment_outlined),
      CoursePill(title: "Auto Mech", icon: Icons.handyman_outlined),
      CoursePill(title: "G.P", icon: Icons.assessment_outlined),
      CoursePill(title: "Accounting", icon: Icons.assessment_outlined),
      CoursePill(title: "P.E", icon: Icons.assessment_outlined),
      CoursePill(title: "Add-Maths", icon: Icons.assessment_outlined),
      CoursePill(title: "Sociology", icon: Icons.assessment_outlined),
      CoursePill(title: "French", icon: Icons.assessment_outlined),
      CoursePill(title: "Mandarin", icon: Icons.assessment_outlined),
      CoursePill(title: "R.E", icon: Icons.assessment_outlined),
      CoursePill(title: "Music", icon: Icons.assessment_outlined),



    ];
    return Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,
           centerTitle: true,
           title: Text(
           "Subjects",
           style: heading2(context),
           ),
           leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
            Icons.arrow_back,
            color: kTextColor,
            size: heading2(context).fontSize,
          ),
        ),
        ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              // controller: booksScrollController,
              shrinkWrap: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                  right: 24, top: 8, bottom: 1, left: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: MediaQuery.of(context).textScaleFactor < 1.6
                    ? 2 / 3
                    : 4 / 8,
                mainAxisSpacing: 4,
                crossAxisSpacing: 5,
              ),
              itemCount: coursePill.length,
              itemBuilder: (context, index) => CoursePill(
                  title: coursePill[index].title,
                  icon: coursePill[index].icon),
            ),
          ),
        ],
      ),
    );
  }
}