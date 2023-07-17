import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/features/auth/views/auth_screen.dart';

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
      SubjectPill(title: "Maths", image: "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
      SubjectPill(title: "Physics", image: "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
      SubjectPill(title: "Biology", image: "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
      SubjectPill(title: "Civic", image: "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
      SubjectPill(title: "Chemistry", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view?usp=sharing"),
      SubjectPill(title: "Economics", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "English", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Geography", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Catering", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "History", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Business Studies", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Auto Mech", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "G.P", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Accounting", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "P.E", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Add-Maths", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Sociology", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "French", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Mandarin", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "R.E", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),
      SubjectPill(title: "Music", image: "https://drive.google.com/file/d/1Uvd_iboxZBmAgHwiH36Z5310UqrQtsrt/view"),

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
              itemCount: subjectPill.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthScreen()
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(subjectPill[index].image),
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