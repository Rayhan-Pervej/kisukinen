// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDeTcU3SjYcOKJOc01Qa5-pvVSf7izdgaM',
    appId: '1:897048472328:web:31d58ddb7855d7cb3bdabd',
    messagingSenderId: '897048472328',
    projectId: 'kisukinen',
    authDomain: 'kisukinen.firebaseapp.com',
    storageBucket: 'kisukinen.firebasestorage.app',
    measurementId: 'G-CY9Y766WB3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAikfkiCnlMBKG5r3poG1-_qYEbzvaDmfM',
    appId: '1:897048472328:android:3ccf477b4facb2ca3bdabd',
    messagingSenderId: '897048472328',
    projectId: 'kisukinen',
    storageBucket: 'kisukinen.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCjMllHmIgJ2kC-4kd30ooPj6PEPmqtxQ',
    appId: '1:897048472328:ios:0a070384b5929f983bdabd',
    messagingSenderId: '897048472328',
    projectId: 'kisukinen',
    storageBucket: 'kisukinen.firebasestorage.app',
    androidClientId: '897048472328-idbq1ct18so640ss3asagughb9amveh8.apps.googleusercontent.com',
    iosClientId: '897048472328-m6gj8ifqm1sb95es0n9t6a6uboccho68.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisukinen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCjMllHmIgJ2kC-4kd30ooPj6PEPmqtxQ',
    appId: '1:897048472328:ios:0a070384b5929f983bdabd',
    messagingSenderId: '897048472328',
    projectId: 'kisukinen',
    storageBucket: 'kisukinen.firebasestorage.app',
    androidClientId: '897048472328-idbq1ct18so640ss3asagughb9amveh8.apps.googleusercontent.com',
    iosClientId: '897048472328-m6gj8ifqm1sb95es0n9t6a6uboccho68.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisukinen',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDeTcU3SjYcOKJOc01Qa5-pvVSf7izdgaM',
    appId: '1:897048472328:web:77ec53dea76a3c3d3bdabd',
    messagingSenderId: '897048472328',
    projectId: 'kisukinen',
    authDomain: 'kisukinen.firebaseapp.com',
    storageBucket: 'kisukinen.firebasestorage.app',
    measurementId: 'G-RQ8WFE7P9L',
  );

}