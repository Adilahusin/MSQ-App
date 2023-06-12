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
    apiKey: 'AIzaSyCwFBGGN0HzNJ8hW8UX24RCjLbga7YJ8kQ',
    appId: '1:762237616518:web:32ec166ee85b19c1a6ec07',
    messagingSenderId: '762237616518',
    projectId: 'msq-app-40f48',
    authDomain: 'msq-app-40f48.firebaseapp.com',
    storageBucket: 'msq-app-40f48.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrvy_76qB3DMluhhW_ui7s3LsvDSILNL8',
    appId: '1:762237616518:android:6f5303572c5cbcaea6ec07',
    messagingSenderId: '762237616518',
    projectId: 'msq-app-40f48',
    storageBucket: 'msq-app-40f48.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0VSqXpNADsjUCGLMyBbmpubTL8E8iUvo',
    appId: '1:762237616518:ios:bb57e5cecc882158a6ec07',
    messagingSenderId: '762237616518',
    projectId: 'msq-app-40f48',
    storageBucket: 'msq-app-40f48.appspot.com',
    iosClientId: '762237616518-jlg8ii38tg7daabusgt8d74fi9n09939.apps.googleusercontent.com',
    iosBundleId: 'com.example.msq',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0VSqXpNADsjUCGLMyBbmpubTL8E8iUvo',
    appId: '1:762237616518:ios:bb57e5cecc882158a6ec07',
    messagingSenderId: '762237616518',
    projectId: 'msq-app-40f48',
    storageBucket: 'msq-app-40f48.appspot.com',
    iosClientId: '762237616518-jlg8ii38tg7daabusgt8d74fi9n09939.apps.googleusercontent.com',
    iosBundleId: 'com.example.msq',
  );
}