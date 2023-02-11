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
    apiKey: 'AIzaSyCzbQDe_-RyEd26unJZMp5WsfM5CIHh8B8',
    appId: '1:465895422079:web:83f00688169e295439674a',
    messagingSenderId: '465895422079',
    projectId: 'elancer-61669',
    authDomain: 'elancer-61669.firebaseapp.com',
    storageBucket: 'elancer-61669.appspot.com',
    measurementId: 'G-NVBPC5F54Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDX8gIPYASbJPXiw0IDUL7p7K6dNcIZUi0',
    appId: '1:465895422079:android:f99e2dcf6357f33f39674a',
    messagingSenderId: '465895422079',
    projectId: 'elancer-61669',
    storageBucket: 'elancer-61669.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQyV9sSzabOlp4HDD9Glpuc-9omh09RcY',
    appId: '1:465895422079:ios:8c375297f4fb88fe39674a',
    messagingSenderId: '465895422079',
    projectId: 'elancer-61669',
    storageBucket: 'elancer-61669.appspot.com',
    iosClientId: '465895422079-15d3q0fne12hls2ap523chnkriue8fhu.apps.googleusercontent.com',
    iosBundleId: 'com.example.elancerLec1',
  );
}
