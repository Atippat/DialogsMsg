// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDi-8aKtbSxNsD6TshYVMsH9UUhiClaHvg',
    appId: '1:273434365683:web:a07db7c47d54f927d73186',
    messagingSenderId: '273434365683',
    projectId: 'flutterauthen-48f2b',
    authDomain: 'flutterauthen-48f2b.firebaseapp.com',
    storageBucket: 'flutterauthen-48f2b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDfgE--Em_e-rBv3LdRnmg4UHBCMK5Xuw',
    appId: '1:273434365683:android:e372e4921444d712d73186',
    messagingSenderId: '273434365683',
    projectId: 'flutterauthen-48f2b',
    storageBucket: 'flutterauthen-48f2b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkAAmsPHQCXmrPUBKeUNaQpqJx33tEFP8',
    appId: '1:273434365683:ios:30347e8744b267afd73186',
    messagingSenderId: '273434365683',
    projectId: 'flutterauthen-48f2b',
    storageBucket: 'flutterauthen-48f2b.appspot.com',
    iosBundleId: 'com.example.onboardingScreen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkAAmsPHQCXmrPUBKeUNaQpqJx33tEFP8',
    appId: '1:273434365683:ios:604a09707366f584d73186',
    messagingSenderId: '273434365683',
    projectId: 'flutterauthen-48f2b',
    storageBucket: 'flutterauthen-48f2b.appspot.com',
    iosBundleId: 'com.example.onboardingScreen.RunnerTests',
  );
}