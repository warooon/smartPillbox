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
    apiKey: 'AIzaSyBn2IGjyJXhabpFKUV8lSaViNbXLYaO26c',
    appId: '1:554763742993:web:923bd12992c9298416a6b0',
    messagingSenderId: '554763742993',
    projectId: 'smartpillbox-685cb',
    authDomain: 'smartpillbox-685cb.firebaseapp.com',
    storageBucket: 'smartpillbox-685cb.appspot.com',
    measurementId: 'G-SNZ4DKCPW4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCs9OfKnO8J8woZ0XkUWwVb33dBt6fosWY',
    appId: '1:554763742993:android:8609bcd031c94e3516a6b0',
    messagingSenderId: '554763742993',
    projectId: 'smartpillbox-685cb',
    storageBucket: 'smartpillbox-685cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhu6P1WUDJapjzwOXjT3Nqk5dXvh2YcCg',
    appId: '1:554763742993:ios:aaa9431ccbed634316a6b0',
    messagingSenderId: '554763742993',
    projectId: 'smartpillbox-685cb',
    storageBucket: 'smartpillbox-685cb.appspot.com',
    iosClientId: '554763742993-2p7al6a4d4s5l38r95lei85785lou935.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartPillbox',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhu6P1WUDJapjzwOXjT3Nqk5dXvh2YcCg',
    appId: '1:554763742993:ios:fef3ec91750263d816a6b0',
    messagingSenderId: '554763742993',
    projectId: 'smartpillbox-685cb',
    storageBucket: 'smartpillbox-685cb.appspot.com',
    iosClientId: '554763742993-pohfso3dig2tlg0pnkqrro57n50981jg.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartPillbox.RunnerTests',
  );
}
