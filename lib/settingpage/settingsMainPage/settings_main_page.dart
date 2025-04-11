import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Profile/edit_screen.dart';
import '../forward_button.dart';
import '../setting_item.dart';
import '../setting_switch.dart';
import 'developer_info_page.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String name = '';
  String email = '';
  String age = '';
  String gender = '';
  bool isDarkMode = false;
  File? _profileImage;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'Default Name';
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

  Future<void> _toggleDarkMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', value);
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              const Text(
                "Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              // User Info Section
              Row(
                children: [
                  // Display the profile image if available, else show default image
                  _profileImage != null
                      ? CircleAvatar(
                    radius: 35,
                    backgroundImage: FileImage(_profileImage!),
                  )
                      : const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/seucc.png"),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          email,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  ForwardButton(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) =>  EditAccountScreen()),
                      // );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              // Language Setting
              SettingItem(
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                value: "English",
                onTap: () {
                  // Handle language selection
                },
              ),
              const SizedBox(height: 20),
              // Notifications Setting
              SettingItem(
                title: "Notifications",
                icon: Ionicons.notifications,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                onTap: () {
                  // Handle notifications
                },
              ),
              const SizedBox(height: 20),
              // Dark Mode Switch
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.moon,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: isDarkMode,
                onTap: (value) {
                  _toggleDarkMode(value);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Dark Mode ${value ? "Enabled" : "Disabled"}'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              // Customer Support
              SettingItem(
                title: "Customer Support",
                icon: Ionicons.help_circle_outline,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                onTap: () {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'azizulhakimfayaz@gmail.com',
                  );
                  launchUrl(emailUri);
                },
              ),
              const SizedBox(height: 20),
              // Developer Info
              SettingItem(
                title: "Developer Info",
                icon: Ionicons.desktop_outline,
                bgColor: Colors.blueGrey,
                iconColor: Colors.white,
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const DevelopInfoPage()),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
