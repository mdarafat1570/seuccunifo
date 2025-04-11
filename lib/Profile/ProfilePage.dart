import 'package:flutter/material.dart';

import '../settingpage/settingsMainPage/edit_settings_page.dart';

class Profile {
  final String name;
  final String gender;
  final int age;
  final String email;
  final String photoUrl;

  Profile({
    required this.name,
    required this.gender,
    required this.age,
    required this.email,
    required this.photoUrl,
  });
}

class ProfilePage extends StatelessWidget {
  final Profile profile;

  const ProfilePage({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Profile Information",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text("Name: ${profile.name}"),
            const SizedBox(height: 20),
            Text("Gender: ${profile.gender}"),
            const SizedBox(height: 20),
            Text("Age: ${profile.age}"),
            const SizedBox(height: 20),
            Text("Email: ${profile.email}"),
            const SizedBox(height: 20),
            Image.asset(profile.photoUrl), // Display profile image
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to edit profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditAccountScreen()),
                );
              },
              child: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
