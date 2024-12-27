import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukinen/backend/authentication/authentication.dart';
import 'package:kisukinen/backend/bindings/generalbindings.dart';
import 'package:kisukinen/firebase_options.dart';
import 'package:kisukinen/screens/auth/login.dart';
import 'package:get/get.dart'; // Import GetX package

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // Ensure Flutter bindings are initialized before calling Firebase.initializeApp
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(Authentication()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(), // Use GetMaterialApp
      title: 'Kisukinen',
      debugShowCheckedModeBanner: true,
      home: const Login(),
    );
  }
}
