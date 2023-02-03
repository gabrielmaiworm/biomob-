import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAvJlIcO54hlvCaesaRRH2_YV_b34HW5xI",
            authDomain: "bio-plus-2c3cc.firebaseapp.com",
            projectId: "bio-plus-2c3cc",
            storageBucket: "bio-plus-2c3cc.appspot.com",
            messagingSenderId: "27216785204",
            appId: "1:27216785204:web:48c3dcfa4b1fb5f3c83f61"));
  } else {
    await Firebase.initializeApp();
  }
}
