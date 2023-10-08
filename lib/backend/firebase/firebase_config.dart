import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBwCvsIrsppr-ZjqWVd4WyPGS73kRZxpzY",
            authDomain: "israelhostfamilies.firebaseapp.com",
            projectId: "israelhostfamilies",
            storageBucket: "israelhostfamilies.appspot.com",
            messagingSenderId: "511353591146",
            appId: "1:511353591146:web:e11ff9fc2d9b92a7874113",
            measurementId: "G-SWPLBCSHZ1"));
  } else {
    await Firebase.initializeApp();
  }
}
