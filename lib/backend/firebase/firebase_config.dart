import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBsSXdaxE8QYck1I_t94-66qmksj2CBXQ4",
            authDomain: "infinsa-app-cwrubj.firebaseapp.com",
            projectId: "infinsa-app-cwrubj",
            storageBucket: "infinsa-app-cwrubj.firebasestorage.app",
            messagingSenderId: "1064511142915",
            appId: "1:1064511142915:web:9747e61f8dec6ef171e236"));
  } else {
    await Firebase.initializeApp();
  }
}
