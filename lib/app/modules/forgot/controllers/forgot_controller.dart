import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> sendEmail() async {
    if (emailC.text.isNotEmpty) {
      isLoading.value = true;
      try {
        auth.sendPasswordResetEmail(email: emailC.text);
        Get.back();
        Get.snackbar(
          duration: const Duration(seconds: 5),
          "Email Sent!",
          "Check Email for password reset link!",
          colorText: Colors.white,
          backgroundColor: Colors.black54,
          icon: const Icon(Icons.add_alert),
        );
      } catch (e) {
        Get.snackbar(
          duration: const Duration(seconds: 5),
          "Error!",
          "Unable to sent reset link: ${e.toString()}",
          colorText: Colors.white,
          backgroundColor: Colors.black54,
          icon: const Icon(Icons.add_alert),
        );
      } finally {
        isLoading.value = false;
      }
    } else {
      Get.snackbar(
        duration: const Duration(seconds: 5),
        "Error!",
        "Enter Email!",
        colorText: Colors.white,
        backgroundColor: Colors.black54,
        icon: const Icon(Icons.add_alert),
      );
    }
  }
}
