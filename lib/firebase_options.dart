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
    apiKey: 'AIzaSyCscoEQc4d0BEHE55xQHzCX3MLcp5vy4aM',
    appId: '1:587356435411:web:91cc3287244df76128b526',
    messagingSenderId: '587356435411',
    projectId: 'athr-app-48d80',
    authDomain: 'athr-app-48d80.firebaseapp.com',
    storageBucket: 'athr-app-48d80.appspot.com',
    measurementId: 'G-G303Y23SCG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1YP8DjiBqzCV7APV5Yh71kCcdcpgHPRY',
    appId: '1:587356435411:android:582e2a37a02ab80d28b526',
    messagingSenderId: '587356435411',
    projectId: 'athr-app-48d80',
    storageBucket: 'athr-app-48d80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2Xf7cUaz57oW2KoUNOLsN3E4nvC2F2Eo',
    appId: '1:587356435411:ios:6a370181d037331c28b526',
    messagingSenderId: '587356435411',
    projectId: 'athr-app-48d80',
    storageBucket: 'athr-app-48d80.appspot.com',
    iosBundleId: 'com.example.athrApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2Xf7cUaz57oW2KoUNOLsN3E4nvC2F2Eo',
    appId: '1:587356435411:ios:6a370181d037331c28b526',
    messagingSenderId: '587356435411',
    projectId: 'athr-app-48d80',
    storageBucket: 'athr-app-48d80.appspot.com',
    iosBundleId: 'com.example.athrApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCscoEQc4d0BEHE55xQHzCX3MLcp5vy4aM',
    appId: '1:587356435411:web:730b3b0b8414dad928b526',
    messagingSenderId: '587356435411',
    projectId: 'athr-app-48d80',
    authDomain: 'athr-app-48d80.firebaseapp.com',
    storageBucket: 'athr-app-48d80.appspot.com',
    measurementId: 'G-8TSYTXC1VM',
  );
}
