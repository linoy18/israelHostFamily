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
            appId: "1:511353591146:web:db6c7c888d349f40874113",
            measurementId: "G-X1FC5FK52Y"));
  } else {
    await Firebase.initializeApp();
  }
}
