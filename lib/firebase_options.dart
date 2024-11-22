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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAjzZ0hssIcG9V8t4UGB30-g7-02sn_fp4',
    appId: '1:211227124272:web:ef1fe1fb828c0f715e43f5',
    messagingSenderId: '211227124272',
    projectId: 'soda-project-final',
    authDomain: 'soda-project-final.firebaseapp.com',
    storageBucket: 'soda-project-final.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnvJ0uS4kL8Nwtdu88OAunbJIe9A5nfKU',
    appId: '1:211227124272:ios:632193c6000111355e43f5',
    messagingSenderId: '211227124272',
    projectId: 'soda-project-final',
    storageBucket: 'soda-project-final.appspot.com',
    iosBundleId: 'com.soda.sodaCoscos',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ3PWmsf31BdpbsPY3MPzTxkwMIYpcQhQ',
    appId: '1:211227124272:android:89be70643a3b8b7a5e43f5',
    messagingSenderId: '211227124272',
    projectId: 'soda-project-final',
    storageBucket: 'soda-project-final.appspot.com',
  );

}