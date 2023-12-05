import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAyDRe0FpAKv_0tfj1j5Hftt3_EoAZYH7k",
            authDomain: "projeto-integrador-pit-ii.firebaseapp.com",
            projectId: "projeto-integrador-pit-ii",
            storageBucket: "projeto-integrador-pit-ii.appspot.com",
            messagingSenderId: "686336503451",
            appId: "1:686336503451:web:737044a243d1653b44a03e"));
  } else {
    await Firebase.initializeApp();
  }
}
