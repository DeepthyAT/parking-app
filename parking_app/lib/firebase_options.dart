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

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqT1uCiuJKbuFDqVWWFep0XDn_mlMPDQY',
    appId: '1:642930386677:ios:8bcff2b1ca276dfcce47bc',
    messagingSenderId: '642930386677',
    projectId: 'parking-app-9e004',
    storageBucket: 'parking-app-9e004.appspot.com',
    iosBundleId: 'com.example.parkingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDcVDWAjqFX0Nt1Qt0VodMlQGrvI0badOU',
    appId: '1:642930386677:web:18eb2f43e83951face47bc',
    messagingSenderId: '642930386677',
    projectId: 'parking-app-9e004',
    authDomain: 'parking-app-9e004.firebaseapp.com',
    storageBucket: 'parking-app-9e004.appspot.com',
    measurementId: 'G-QT40T96TF2',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDcVDWAjqFX0Nt1Qt0VodMlQGrvI0badOU',
    appId: '1:642930386677:web:18eb2f43e83951face47bc',
    messagingSenderId: '642930386677',
    projectId: 'parking-app-9e004',
    authDomain: 'parking-app-9e004.firebaseapp.com',
    storageBucket: 'parking-app-9e004.appspot.com',
    measurementId: 'G-QT40T96TF2',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqT1uCiuJKbuFDqVWWFep0XDn_mlMPDQY',
    appId: '1:642930386677:ios:8bcff2b1ca276dfcce47bc',
    messagingSenderId: '642930386677',
    projectId: 'parking-app-9e004',
    storageBucket: 'parking-app-9e004.appspot.com',
    iosBundleId: 'com.example.parkingApp',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFGv0xBbFpVk2dfyqVcx-Ip_ZH84i224Y',
    appId: '1:642930386677:android:8367bbc42b5f582fce47bc',
    messagingSenderId: '642930386677',
    projectId: 'parking-app-9e004',
    storageBucket: 'parking-app-9e004.appspot.com',
  );

}