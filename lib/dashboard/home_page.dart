import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../Profile/Profile.dart';
import '../Profile/ProfilePage.dart';
import '../Profile/edit_screen.dart';
import '../commonWidget/TextUtil.dart';
import '../commonWidget/course_widget.dart';
import '../commonWidget/custom_Text.dart';
import '../facultiies_Seu/faculties_page.dart';
import '../model/course_list.dart';
import '../model/faculties_list.dart';
import '../topNewsPage/top_news_page.dart';
import '../widgetFile/common_slidar.dart';
import './extra_container.dart';

List<String> semesterList = [
  "1st Semester",
  "2nd Semester",
  "3rd Semester",
  "4th Semester",
  "5th Semester",
  "6th Semester",
  "7th Semester",
  "8th Semester",
  "9th Semester",
  "10th Semester",
  "11th Semester",
  "12th Semester"
];

List<String> images = [
  "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/366371599_684142767091364_7934293609394272_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFSGwQevEsD_dQJqKYoZDJoqKJ2r6p4Hbeoonavqngdt3J-SvLbCIdokr8EghKUczc-BusZIM8GqVGNuzPOS5lK&_nc_ohc=45nbovgI3IEAX978q6z&_nc_ht=scontent.fdac24-1.fna&oh=00_AfB3wlZ3f8-tMwcHUWURp6y9pLjSHwuUXnEJ5GaV0DDMgQ&oe=65ECB662",
  "https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/344212791_189543990173882_7126334929639264226_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGStTa_NDZBQIEGv_4g4aSB1pQ3GcDMMq3WlDcZwMwyrdjIEtXcfuWhCsnEwtMVif3NPkluX9aW18f06JObz1vQ&_nc_ohc=NR7RJx97yjMAX-dn5Nf&_nc_ht=scontent.fdac24-2.fna&oh=00_AfDFWuuhA_I938ucGKbnabbKDU6CLgLG_1oC2gx6H0SISg&oe=65ED504E",
  "https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/341899927_893430208617830_5112707536010395804_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFNoSEwF9RUlsb3z1djXgG7pUbZnM1k0SSlRtmczWTRJNZbXJ6ZpPvUKXECik40rFrY0W5UJ8ehJhea5gmTpl7i&_nc_ohc=hxd7poOx94QAX9eFP3I&_nc_ht=scontent.fdac24-3.fna&oh=00_AfAX-O6Zmg5ROWx3ReT-13SYXrSelZXpHc51CIIu3MfxAQ&oe=65ED7422",
  "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/409105456_379396328286566_8147063152433113164_n.jpg?stp=dst-jpg_s720x720&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=aUzpVWvt2SsAX8pxiWq&_nc_ht=scontent.fdac24-1.fna&oh=00_AfDcDw3R2LlmOoOQoRw3DllMJ3LHeQVu-yQVpLgjTweh3A&oe=65ED37E8",
  "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/409105456_379396328286566_8147063152433113164_n.jpg?stp=dst-jpg_s720x720&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=aUzpVWvt2SsAX8pxiWq&_nc_ht=scontent.fdac24-1.fna&oh=00_AfDcDw3R2LlmOoOQoRw3DllMJ3LHeQVu-yQVpLgjTweh3A&oe=65ED37E8",
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

  const HomePage({
    super.key,
  });
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late Timer _timer;
  String _greeting = '';
  late ScrollController _scrollController;
  final int _currentPage = 0;
  final PageController _pageController = PageController();
  int currentPage = 0;
  late PageController dateController;
  List<Map<String, dynamic>> _filteredCourseList = [];

  String name = '';
  String email = '';
  String age = '';
  String gender = '';
  bool isDarkMode = false;
  File? _profileImage;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
    _loadUserData();
    _setGreeting();
    _filteredCourseList = getFilteredCourses();
    _scrollController = ScrollController();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_scrollController.hasClients) {
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double currentScrollOffset = _scrollController.offset;
        if (currentScrollOffset < maxScrollExtent) {
          _scrollController.animateTo(
            maxScrollExtent,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        } else {
          _scrollController.animateTo(
            0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'Guest';
      email = prefs.getString('email') ?? 'example@example.com';
      age = prefs.getString('age') ?? 'Unknown Age';
      gender = prefs.getString('gender') ?? 'Unknown Gender';
      isDarkMode = prefs.getBool('isDarkMode') ?? false;

      // Load the profile image from SharedPreferences
      String? imagePath = prefs.getString('imagePath');
      if (imagePath != null) {
        _profileImage = File(imagePath);  // Set the image if path exists
      }
    });
  }

  void _setGreeting() {
    var hour = DateTime.now().hour;
    if (hour >= 4 && hour < 12) {
      setState(() {
        _greeting = 'Good Morning';
      });
    } else if (hour >= 12 && hour < 15) {
      setState(() {
        _greeting = 'Good Afternoon';
      });
    } else if (hour >= 15 && hour < 22) {
      setState(() {
        _greeting = 'Good Evening';
      });
    } else {
      setState(() {
        _greeting = 'Good Night';
      });
    }
  }

  void disposepro() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    // _pageController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> getFilteredCourses() {
    String selectedSemester = semesterList[selectedIndex];
    List<Map<String, dynamic>> filteredCourses = courseList()
        .where((course) => course['Semester'] == selectedSemester)
        .toList();

    // Debug print statements
    print('Selected Semester: $selectedSemester');
    print('Filtered Courses: $filteredCourses');

    return filteredCourses;
  }

  void slideNavigationPush2(Widget screen, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  Column buildCard(String imagePath, String text, Color color) {
    return Column(
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
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
            child: Image.asset(imagePath),
          ),
        ),
        Text(text,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 10)),
      ],
    );
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage < images.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollNotificationObserver(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 225,
                    color: Colors.blue,
                    child: Image.asset(
                      "assets/coverpage.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10.0, top: 38),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextUI("$_greeting $name!"), // Changed here
                              GestureDetector(
                                onTap: (){
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  EditAccountScreen()),
                                  // );
                                },
                                child: _profileImage != null
                                    ? CircleAvatar(
                                  radius: 35,
                                  backgroundImage: FileImage(_profileImage!),
                                )
                                    : const CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage("assets/seucc.png"),
                                ),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 5.0, bottom: 5),
                                child: Text("Find your course",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(
                                height: 45,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          hintText: "Search",
                                          prefixIcon: const Icon(Icons.search),
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 233, 233, 233),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(
                                        Icons.mic_none,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Row(
                            children: [
                              customTextBold("CSC Faculties",
                                  size: 16, color: Colors.white),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FacultiesPage()),
                                  );
                                },
                                child: customTextBold("View All",
                                    size: 13, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          child: Row(
                            children: List.generate(
                              ImageUrls.urls.length,
                                  (index) => Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.network(
                                      ImageUrls.urls[index],
                                      fit: BoxFit.contain,
                                      width: 70,
                                      height: 70,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Image.asset(
                                          'assets/emptyprofile.png', // Path to your default image
                                          fit: BoxFit.contain,
                                          width: 70,
                                          height: 70,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            customTextUI("Top News", color: Colors.black),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TopNewsPage()),
                                );
                              },
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        children: [
                          CommonCarouselSlider(),
                        ],
                      ),
                    ]),
                  ),
                  const ExtraContainer(),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: courses.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return courseWidget(
                          imagePath: courses[index].imagePath,
                          courseName: courses[index].name,
                        );
                      },
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Row(
                  //     children: [
                  //       customTextBold("Curriculum Details",
                  //           color: Colors.black, size: 16),
                  //       const Spacer(),
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => const CoursePage()),
                  //           );
                  //         },
                  //         child: const Text(
                  //           "View All",
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 12,
                  //             letterSpacing: 1,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     height: 35,
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemCount: semesterList.length,
                  //       itemBuilder: (context, index) {
                  //         return GestureDetector(
                  //           onTap: () {
                  //             setState(() {
                  //               selectedIndex = index;
                  //               _filteredCourseList = getFilteredCourses();
                  //             });
                  //           },
                  //           child: Container(
                  //             padding:
                  //                 const EdgeInsets.symmetric(horizontal: 20),
                  //             margin: const EdgeInsets.only(right: 20),
                  //             decoration: BoxDecoration(
                  //               border: Border.all(color: Colors.white54),
                  //               borderRadius: BorderRadius.circular(120),
                  //               color: selectedIndex == index
                  //                   ? AppColor.primaryColor
                  //                   : AppColor.accentColor,
                  //             ),
                  //             alignment: Alignment.center,
                  //             child: Text(
                  //               semesterList[index],
                  //               style: TextStyle(
                  //                 fontWeight: FontWeight.bold,
                  //                 color: selectedIndex == index
                  //                     ? Colors.white
                  //                     : Colors.black,
                  //               ),
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(1, 2, 3, 4),
                  //   child: Expanded(
                  //     child: SizedBox(
                  //       height: MediaQuery.of(context).size.height * 0.5,
                  //       child: ListView.builder(
                  //         itemCount: _filteredCourseList.length,
                  //         itemBuilder: (context, index) {
                  //           final course = _filteredCourseList[index];
                  //           return courserow(
                  //             course['courseCode'],
                  //             course['courseTitle'],
                  //             course['credits'],
                  //             course['courseType'],
                  //             course['CoursePrototype'],
                  //             course['Semester'],
                  //             onDetailsClick: () {
                  //               Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) =>
                  //                         const DetailsPage()),
                  //               );
                  //             },
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CouseModel {
  String name, rating, imagePath;
  CouseModel(
      {required this.imagePath, required this.name, required this.rating});
}

class FeaturedCouseModel {
  String courseTitle, numberOfCourse, imagePath;
  FeaturedCouseModel(
      {required this.imagePath,
      required this.courseTitle,
      required this.numberOfCourse});
}
