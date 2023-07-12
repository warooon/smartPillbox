// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smart_pillbox/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class SignOutController extends GetxController {
  firebase_auth.FirebaseAuth auth = firebase_auth.FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signOut() async {
    try {
      if (_googleSignIn.currentUser != null) {
        await _googleSignIn.disconnect();
        await _googleSignIn.signOut();
      } else if (auth.currentUser != null) {
        await auth.signOut();
      }

      Get.offAllNamed(Routes.LOGIN);
    } catch (e) {
      print(e);
    }
  }
}
