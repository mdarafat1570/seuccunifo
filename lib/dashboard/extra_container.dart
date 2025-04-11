import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../CGPA/cgpa_page.dart';
import '../RoutinePage/routin_page.dart';
import '../Site Portal/site_portal.dart';
import '../UMS/ums_web.dart';
import '../academicCalender/AcademicCalendarPage.dart';
import '../academicCalender/academic_calender.dart';
import '../aipage2/Chatbot.dart';
import '../base/AppColour.dart';
import '../coming_soon.dart';
import '../courseOnList/course_page.dart';
import '../facultiies_Seu/faculties_page.dart';
import '../importantContacts/important_info_page.dart';
import '../topNewsPage/top_news_page.dart';
import '../tuitionCalculator/Calculator_Screen.dart';

class ExtraContainer extends StatefulWidget {
  const ExtraContainer({Key? key}) : super(key: key);

  @override
  State<ExtraContainer> createState() => _ExtraContainerState();
}

class _ExtraContainerState extends State<ExtraContainer> {
  int _currentPage = 0; // To keep track of the current page

  Widget buildCard(
      String imagePath, String text, Color color, VoidCallback onTapAction) {
    return GestureDetector(
      onTap: onTapAction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Card(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: 42,
              height: 42,
              margin:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
              child: Image.asset(imagePath),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  void slideNavigationPush(Widget screen, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  List<Widget> buildPageIndicator() {
    return List<Widget>.generate(2, (int index) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 8,
        width: _currentPage == index ? 12 : 8,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: _currentPage == index ? Colors.blue : Colors.grey,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 210,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
            items: [
              // First Page
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildCard('assets/LgoUMS.png', 'UMS\n',
                                AppColor.primaryColor, () {
                              slideNavigationPush(UMSWebViewPage(), context);
                            }),
                            buildCard('assets/CGPA.png', 'CGPA \n Calculator',
                                AppColor.primaryColor, () {
                              slideNavigationPush(
                                  CGPACalculatorPage(), context);
                            }),
                            buildCard(
                                'assets/CurriculumDetails.png',
                                'Curriculum \n Details',
                                Color.fromARGB(255, 39, 55, 105), () {
                              slideNavigationPush(CoursePage(), context);
                            }),
                            buildCard(
                                'assets/important_info.png',
                                'Important \n info SEU ',
                                Color.fromARGB(255, 67, 155, 126), () {
                              slideNavigationPush(ImportantInfoPage(), context);
                            }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildCard(
                                'assets/Tuitionfeesicon.png',
                                'Tuition Fee\nCalculator',
                                AppColor.primaryColor, () {
                              slideNavigationPush(CalculatorScreen(), context);
                            }),
                            buildCard(
                                'assets/SEU_AI.png',
                                'SEU\nStudy Assist Ai',
                                Color.fromARGB(255, 119, 128, 180), () {
                              // slideNavigationPush(ChatBotPage(), context);
                            }),
                            buildCard(
                                'assets/AcademicCalenderPage.png',
                                'Academic\nCalender',
                                Color.fromARGB(255, 39, 55, 105), () {
                              slideNavigationPush(
                                  AcademicCalendarPage(), context);
                            }),
                            buildCard('assets/Cam.png', 'CamScanner \n ',
                                const Color.fromARGB(255, 126, 173, 46), () {
                                  // slideNavigationPush(CamScannerPage(), context);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Second Page
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildCard(
                              'assets/coverpageicon.png',
                              'Cover \n Page Generator',
                              Color.fromARGB(255, 39, 55, 105),
                                  () => showCustomAlertDialog(
                                  context), // Pass the function here
                            ),
                            buildCard(
                                'assets/The_clubs.png',
                                'SEU\nclubs',
                                Color.fromARGB(255, 82, 82, 82),
                                    () => showCustomAlertDialog(context)),

                            buildCard(
                                'assets/Map.png',
                                'SEU Map \n Your location',
                                Color.fromARGB(255, 83, 39, 105),
                                () => showCustomAlertDialog(context)),
                            buildCard(
                                'assets/sitProtal.png',
                                'Site \n Protal',
                                Color.fromARGB(255, 39, 55, 105),
                                    () {
                                  // slideNavigationPush(SitePortal(), context);
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildCard('assets/faculties.png', 'Faculties info',
                                AppColor.primaryColor, () {
                              slideNavigationPush(FacultiesPage(), context);
                            }),
                            buildCard('assets/news.png', 'Top News',
                                Color.fromARGB(255, 119, 128, 180), () {
                              slideNavigationPush(TopNewsPage(), context);
                            }),
                            buildCard(
                                'assets/cafa.png',
                                'Food Prices',
                                Color.fromARGB(255, 153, 171, 50),
                                () => showCustomAlertDialog(context)),
                            buildCard(
                                'assets/Teacher_selection.png',
                                'Subject selection',
                                Color.fromARGB(255, 104, 47, 61),
                                () => showCustomAlertDialog(context)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildPageIndicator(),
        ),
      ],
    );
  }
}
