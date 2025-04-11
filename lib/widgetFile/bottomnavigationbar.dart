import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Note/Google_Keep_Note.dart';
import '../aipage2/home_page.dart';
import '../dashboard/home_page.dart';
import '../googleclassroom/google_classroom.dart';
import '../settingpage/settingsMainPage/settings_main_page.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int countindex = 0;
  List<Widget> widgetList = [
    const HomePage(),
    const ClassRoomWebViewPage(),
    const NoteWebViewPage(),
    const AiHomePage(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[countindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        onTap: (index) {
          setState(() {
            countindex = index;
          });
        },
        currentIndex: countindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home, color: Colors.grey, size: 18),
            activeIcon:
                FaIcon(FontAwesomeIcons.home, color: Colors.black, size: 18),
            label: "Home",
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.caretSquareDown,
                color: Colors.grey, size: 18),
            activeIcon: FaIcon(FontAwesomeIcons.caretSquareDown,
                color: Colors.black, size: 18),
            label: "Classroom",
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calculator,
                color: Colors.grey, size: 18),
            activeIcon: FaIcon(FontAwesomeIcons.calculator,
                color: Colors.black, size: 18),
            label: 'Note',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.robot, color: Colors.grey, size: 18),
            activeIcon:
                FaIcon(FontAwesomeIcons.robot, color: Colors.black, size: 18),
            label: 'Ai',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.gear, color: Colors.grey, size: 18),
            activeIcon:
                FaIcon(FontAwesomeIcons.gear, color: Colors.black, size: 18),
            label: 'Settings',
            tooltip: '',
          ),
        ],
      ),
    );
  }
}
