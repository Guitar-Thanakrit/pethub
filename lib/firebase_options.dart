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
    apiKey: 'AIzaSyD_0klb_Wm8sdD8mh6RFWCesddSGqDYjTY',
    appId: '1:902580733905:web:2caf9e82f30798fbf482f0',
    messagingSenderId: '902580733905',
    projectId: 'pethub-280ff',
    authDomain: 'pethub-280ff.firebaseapp.com',
    storageBucket: 'pethub-280ff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwNoxeNv2lLUyG3fb-SQVZJLyKi3Ml0ow',
    appId: '1:902580733905:android:54dced57b9c96043f482f0',
    messagingSenderId: '902580733905',
    projectId: 'pethub-280ff',
    storageBucket: 'pethub-280ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNrEYQiudqdbi8872oVewPpLL98Y2RqJM',
    appId: '1:902580733905:ios:2b857ea2fa1aff4df482f0',
    messagingSenderId: '902580733905',
    projectId: 'pethub-280ff',
    storageBucket: 'pethub-280ff.appspot.com',
    iosClientId: '902580733905-t8j78rscq26j9ksdpkpv6huougjv55l4.apps.googleusercontent.com',
    iosBundleId: 'com.example.adoptehub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNrEYQiudqdbi8872oVewPpLL98Y2RqJM',
    appId: '1:902580733905:ios:a4b1333c7b833684f482f0',
    messagingSenderId: '902580733905',
    projectId: 'pethub-280ff',
    storageBucket: 'pethub-280ff.appspot.com',
    iosClientId: '902580733905-tpn4nn0s56ebtcu60juu7om055cqae7t.apps.googleusercontent.com',
    iosBundleId: 'com.exmaple.adoptehub',
  );
}
