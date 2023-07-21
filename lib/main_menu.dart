import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/features/auth/views/auth_screen.dart';
import 'package:mead_learn_app/src/features/widgets/dynamic_screen.dart';

import 'src/core/utilities/app_colors.dart';
import 'src/core/utilities/app_textstyle.dart';

class AppMainMenu extends StatefulWidget {
  const AppMainMenu({Key? key}): super(key: key);

  @override
  State<AppMainMenu> createState() => _AppMainMenuState();
}

class SubjectPill {
  final String image;
  final String title;
  SubjectPill({Key? key, required this.title, required this.image});
}

class _AppMainMenuState extends State<AppMainMenu> {

  @override
  Widget build(BuildContext context) {
    List<SubjectPill> subjectPill = [
      SubjectPill(title: "Maths", image: "images/maths_icon.png"),
      SubjectPill(title: "Physics", image: "images/physics_icon.png"),
      SubjectPill(title: "Biology", image: "images/biology_icon.png"),
      SubjectPill(title: "Civic", image: "images/civic_icon.png"),
      SubjectPill(title: "Chemistry", image: "images/chemistry_icon.png"),
      SubjectPill(title: "Economics", image: "images/economics_icon.png"),
      SubjectPill(title: "English", image: "images/english_icon.png"),
      SubjectPill(title: "Geography", image: "images/geography_icon.png"),
      SubjectPill(title: "Catering", image: "images/catering_icon.png"),
      SubjectPill(title: "History", image: "images/history_icon.png"),
      SubjectPill(title: "Business Studies", image: "images/bus_studies_icon.png"),
      SubjectPill(title: "Auto Mech", image: "images/auto_mech_icon.png"),
      SubjectPill(title: "G.P", image: "images/G.P_icon.png"),
      SubjectPill(title: "Accounting", image: "images/accounting_icon.png"),
      SubjectPill(title: "P.E", image: "images/P.E_icon.png"),
      SubjectPill(title: "Add-Maths", image: "images/add-maths_icon.png"),
      SubjectPill(title: "Sociology", image: "images/sociology_icon.png"),
      SubjectPill(title: "French", image: "images/french_icon.png"),
      SubjectPill(title: "Mandarin", image: "images/mandarin_icon.png"),
      SubjectPill(title: "R.E", image: "images/R.E_icon.png"),
      SubjectPill(title: "Music", image: "images/music_icon.png"),

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
                // childAspectRatio: MediaQuery.of(context).textScaleFactor < 1.6
                //     ? 2 / 3
                //     : 4 / 8,
                mainAxisSpacing: 4,
                crossAxisSpacing: 5,
              ),
              itemCount: subjectPill.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DynamicScreen(title: subjectPill[index].title,
                                  image: subjectPill[index].image )
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage(subjectPill[index].image),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFEEEEEE),
                              spreadRadius: 6,
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                    ),
                    kTinyVerticalSpacing,
                    Center(
                        child: Text(
                          subjectPill[index].title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                    ),
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}