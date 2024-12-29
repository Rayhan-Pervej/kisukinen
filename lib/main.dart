import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukinen/backend/authentication/authentication.dart';
import 'package:kisukinen/backend/bindings/generalbindings.dart';
import 'package:kisukinen/firebase_options.dart';
import 'package:kisukinen/screens/auth/login.dart'; // Assume you have a Navbar screen
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kisukinen/screens/pages/navbar.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Inject Authentication Controller
  Get.put(Authentication());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      title: 'Kisukinen',
      debugShowCheckedModeBanner: true,
      home: const Root(),
    );
  }
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<Authentication>();

    // Use Obx to reactively update UI based on `isLoggedIn`
    return Obx(() {
      if (authController.isLoggedIn.value) {
        return const Navbar(); // Navigation Bar for logged-in users
      } else {
        return const Login(); // Login screen for logged-out users
      }
    });
  }
}
