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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkp8-uBldaVJxHaCrXeeMLCo6Yay599jo',
    appId: '1:751364244973:android:9bcbb338ce8f421f3f13e4',
    messagingSenderId: '751364244973',
    projectId: 'bbauth-9ef11',
    storageBucket: 'bbauth-9ef11.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqKR619gmJb37c9weXDF1CXAsRhTj1n7k',
    appId: '1:751364244973:ios:96e3b6bfb6db53f73f13e4',
    messagingSenderId: '751364244973',
    projectId: 'bbauth-9ef11',
    storageBucket: 'bbauth-9ef11.appspot.com',
    androidClientId: '751364244973-60m2oi0ro1fh3l6khgsjui7kt6mc1vda.apps.googleusercontent.com',
    iosClientId: '751364244973-4fp91r3fpcuvcto4ufetsjk3a5mptlqq.apps.googleusercontent.com',
    iosBundleId: 'com.example.nourishnetdonor',
  );
}
