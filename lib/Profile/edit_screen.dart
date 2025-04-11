// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../widgetFile/bottomnavigationbar.dart';
// import 'Widget/userData.dart';
//
// class EditAccountScreen extends StatefulWidget {
//   const EditAccountScreen({super.key});
//
//   @override
//   State<EditAccountScreen> createState() => _EditAccountScreenState();
// }
//
// class _EditAccountScreenState extends State<EditAccountScreen> {
//   String gender = "man";
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   File? _image;
//
//   final ImagePicker _picker = ImagePicker();
//
//   @override
//   void initState() {
//     super.initState();
//     loadData(); // Load saved data when screen initializes
//   }
//
//   @override
//   void dispose() {
//     nameController.dispose();
//     ageController.dispose();
//     emailController.dispose();
//     super.dispose();
//   }
//
//   // Save data using SharedPreferences
//   void saveData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     await prefs.setString('name', nameController.text);
//     await prefs.setString('age', ageController.text);
//     await prefs.setString('email', emailController.text);
//     await prefs.setString('gender', gender);
//
//     if (_image != null) {
//       // Save the image path to SharedPreferences
//       String imagePath = _image!.path;
//       await prefs.setString('imagePath', imagePath);
//     }
//
//     // Update Singleton
//     UserData userData = UserData();
//     userData.name = nameController.text;
//     userData.age = ageController.text;
//     userData.email = emailController.text;
//     userData.gender = gender;
//
//     print('Data saved: ${userData.name}, ${userData.age}, ${userData.email}, ${userData.gender}');
//   }
//
//   // Load data from SharedPreferences
//   void loadData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     setState(() {
//       nameController.text = prefs.getString('name') ?? '';
//       ageController.text = prefs.getString('age') ?? '';
//       emailController.text = prefs.getString('email') ?? '';
//       gender = prefs.getString('gender') ?? 'man';
//
//       // Load image path if available
//       String? savedImagePath = prefs.getString('imagePath');
//       if (savedImagePath != null) {
//         _image = File(savedImagePath);
//       }
//     });
//
//     // Update Singleton
//     UserData userData = UserData();
//     userData.name = nameController.text;
//     userData.age = ageController.text;
//     userData.email = emailController.text;
//     userData.gender = gender;
//
//     print('Data loaded: ${userData.name}, ${userData.age}, ${userData.email}, ${userData.gender}');
//   }
//
//   // Pick image from gallery
//   Future<void> _pickImage() async {
//     final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const Navigation()),
//             );
//           },
//           icon: Icon(Ionicons.chevron_back_outline),
//         ),
//         leadingWidth: 80,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: IconButton(
//               onPressed: () {
//                 saveData();
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Navigation()),
//                 );
//               },
//               style: IconButton.styleFrom(
//                 backgroundColor: Colors.lightBlueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 fixedSize: Size(60, 50),
//                 elevation: 3,
//               ),
//               icon: const Icon(Ionicons.checkmark, color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Account",
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 40),
//               // Image Picker Section
//               GestureDetector(
//                 onTap: _pickImage,
//                 child: Center(
//                   child: CircleAvatar(
//                     radius: 90,
//                     backgroundColor: Colors.grey.shade300,
//                     backgroundImage: _image != null
//                         ? FileImage(_image!)
//                         : null,
//                     child: _image == null
//                         ? const Icon(
//                       Icons.camera_alt,
//                       color: Colors.white,
//                       size: 40,
//                     )
//                         : null,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // Name Field
//               TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(labelText: "Name"),
//               ),
//               const SizedBox(height: 20),
//               // Age Field
//               TextField(
//                 controller: ageController,
//                 decoration: const InputDecoration(labelText: "Age"),
//               ),
//               const SizedBox(height: 20),
//               // Email Field
//               TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(labelText: "Email"),
//               ),
//               const SizedBox(height: 20),
//               // Gender Selection
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         gender = "man";
//                       });
//                     },
//                     icon: Icon(
//                       Ionicons.male,
//                       color: gender == "man" ? Colors.deepPurple : Colors.grey,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         gender = "woman";
//                       });
//                     },
//                     icon: Icon(
//                       Ionicons.female,
//                       color: gender == "woman" ? Colors.deepPurple : Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
