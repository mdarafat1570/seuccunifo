import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:seuccunifo/widgetFile/bottomnavigationbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("9b87790a-d398-4267-8b5d-5fbde306074f");
  OneSignal.Notifications.requestPermission(true);
  runApp(const SeuStudyAssist());
}

class SeuStudyAssist extends StatefulWidget {
  const SeuStudyAssist({super.key});

  @override
  State<SeuStudyAssist> createState() => _SeuStudyAssistState();
}

class _SeuStudyAssistState extends State<SeuStudyAssist> {
  bool isDarkMode = false;

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3)); // Splash screen duration
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Navigation()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/seucc.png',
              height: 220,
              width: 220,
            ),
            const Text(
              'Southeast Computer Club',
              style: TextStyle(
                color: Color.fromARGB(255, 5, 53, 92),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 350),
            const Text(
              'Development by - ',
              style: TextStyle(
                color: Color.fromARGB(255, 5, 53, 92),
                fontSize: 12,
              ),
            ),
            Image.asset(
              'assets/inferloom_preview.png',
              height: 50,
              width: 50,
            ),
          ],
        ),
      ),
    );
  }

}
