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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBQk8o1CXAUOyx0IvkImm0jIoevaw5UHfY',
    appId: '1:150369408692:web:a679621000f1111cf229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    authDomain: 'todo-d4a93.firebaseapp.com',
    storageBucket: 'todo-d4a93.appspot.com',
    measurementId: 'G-7554E7P15R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXT9Hv1XjxoVLoO-mIBelPK-nmDirpjg4',
    appId: '1:150369408692:android:bfb0f49fbb364188f229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    storageBucket: 'todo-d4a93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiLgpvd6b45F11gqea2wrr9tjvC_y5DIA',
    appId: '1:150369408692:ios:3e6047dfb562d324f229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    storageBucket: 'todo-d4a93.appspot.com',
    iosClientId: '150369408692-amku25utol6gvuj5d6ip7u5jk1f25ju4.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCiLgpvd6b45F11gqea2wrr9tjvC_y5DIA',
    appId: '1:150369408692:ios:23e4df1aa8a0ec15f229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    storageBucket: 'todo-d4a93.appspot.com',
    iosClientId: '150369408692-t2n7p0lk6vd0fn47bk17vcvjbh44p203.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBQk8o1CXAUOyx0IvkImm0jIoevaw5UHfY',
    appId: '1:150369408692:web:28b17f5a9197d237f229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    authDomain: 'todo-d4a93.firebaseapp.com',
    storageBucket: 'todo-d4a93.appspot.com',
    measurementId: 'G-4ZEGSYKJK6',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyBQk8o1CXAUOyx0IvkImm0jIoevaw5UHfY',
    appId: '1:150369408692:web:de0b3c05051045ebf229e1',
    messagingSenderId: '150369408692',
    projectId: 'todo-d4a93',
    authDomain: 'todo-d4a93.firebaseapp.com',
    storageBucket: 'todo-d4a93.appspot.com',
    measurementId: 'G-JXL63FCE6W',
  );
}