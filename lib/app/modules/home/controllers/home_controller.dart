import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smart_pillbox/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class HomeController extends GetxController {
  firebase_auth.FirebaseAuth auth = firebase_auth.FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signOut() async {
    try {
      if (_googleSignIn.currentUser != null) {
        await _googleSignIn.disconnect();
        await auth.signOut();
      } else if (auth.currentUser != null) {
        await auth.signOut();
      }

      Get.offAllNamed(Routes.LOGIN);
    } catch (e) {
      print(e);
    }
  }
}


// try {
//       // Sign out from Firebase authentication
//       await auth.signOut();

//       // Navigate to the login screen
//       Get.offAllNamed(Routes.LOGIN);
//     } 

//   Future<void> signOut() async {
//     try {
//       await _googleSignIn.disconnect();
//       await FirebaseAuth.instance.signOut();
//       Get.offAllNamed(Routes.LOGIN);
//     } catch (e) {
//       print(e);
//     }
//   }
// }