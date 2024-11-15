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
    apiKey: 'AIzaSyAuRzsW_0-UWHcUxGDLjisWOrtpfEDneA0',
    appId: '1:881596357719:web:fa2e6534d4031b030f5712',
    messagingSenderId: '881596357719',
    projectId: 'wisata-c4ef1',
    authDomain: 'wisata-c4ef1.firebaseapp.com',
    storageBucket: 'wisata-c4ef1.firebasestorage.app',
    measurementId: 'G-6PDWTW61RX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe8gkxhN85aol_RWgk1-B4yS2rcmt1IRo',
    appId: '1:881596357719:android:aa5f352ce61a03450f5712',
    messagingSenderId: '881596357719',
    projectId: 'wisata-c4ef1',
    storageBucket: 'wisata-c4ef1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQn6naVqJSwZB2vipRCPGQiTa3RJh2rHk',
    appId: '1:881596357719:ios:8f66c2938753b52f0f5712',
    messagingSenderId: '881596357719',
    projectId: 'wisata-c4ef1',
    storageBucket: 'wisata-c4ef1.firebasestorage.app',
    iosBundleId: 'com.example.wisata',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQn6naVqJSwZB2vipRCPGQiTa3RJh2rHk',
    appId: '1:881596357719:ios:8f66c2938753b52f0f5712',
    messagingSenderId: '881596357719',
    projectId: 'wisata-c4ef1',
    storageBucket: 'wisata-c4ef1.firebasestorage.app',
    iosBundleId: 'com.example.wisata',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAuRzsW_0-UWHcUxGDLjisWOrtpfEDneA0',
    appId: '1:881596357719:web:8240960d1c1b57f80f5712',
    messagingSenderId: '881596357719',
    projectId: 'wisata-c4ef1',
    authDomain: 'wisata-c4ef1.firebaseapp.com',
    storageBucket: 'wisata-c4ef1.firebasestorage.app',
    measurementId: 'G-B10VP83RBV',
  );

}