import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';
import 'package:nourishnetdonor/features/donate/screens/donate_page.dart';
import 'package:nourishnetdonor/features/home/screens/home_page.dart';
import 'package:nourishnetdonor/features/post/screens/post_page.dart';
import 'package:nourishnetdonor/features/profile/screens/profile_page.dart';
import 'package:nourishnetdonor/firebase_options.dart';
import 'package:nourishnetdonor/repository/Authentication_Repository/authentication_repository.dart';
import 'package:nourishnetdonor/widgets/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => {Get.put(AuthenticationRepository())});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NourishNet',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/donate': (context) => DonatePage(),
        '/post': (context) => PostPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
