import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import 'package:smart_pillbox/app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pillbox/app/widgets/tile.dart';
import 'package:lottie/lottie.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("LOGIN",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Well Timing, Well Health",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 20, fontStyle: FontStyle.italic))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 14, top: 4),
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(33),
              ),
              child: TextField(
                controller: controller.emailc,
                cursorColor: Colors.black12,
                cursorWidth: 1,
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text("EMAIL ID",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontStyle: FontStyle.italic))),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: "example@domain.com",
                  hintStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 14, top: 4),
              margin: const EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(33),
              ),
              child: Obx(
                () => TextField(
                  controller: controller.passwordc,
                  cursorColor: Colors.black12,
                  obscureText: controller.obscureText.value,
                  cursorWidth: 1,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text("PASSWORD",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(fontStyle: FontStyle.italic))),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "***********",
                    hintStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    suffixIcon: IconButton(
                      // splashRadius: 0.1,
                      icon: (controller.obscureText.value != false)
                          ? SvgPicture.asset('assets/icons/show.svg')
                          : SvgPicture.asset('assets/icons/hide.svg'),
                      onPressed: () {
                        controller.obscureText.value =
                            !(controller.obscureText.value);
                      },
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => Get.toNamed(Routes.FORGOT),
                style: TextButton.styleFrom(foregroundColor: Colors.black54),
                child: const Text("Forgot Password"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  child: Obx(
                    () => ElevatedButton(
                        onPressed: () async {
                          if (controller.isLoading.isFalse) {
                            await controller.login();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          backgroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                          ),
                        ),
                        child: Text(
                          (controller.isLoading.isFalse)
                              ? 'Log In'
                              : 'Loading...',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    border: Border.all(width: 2.0),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tile(
                  imagePath: 'assets/images/google.png',
                  onTap: controller.signInWithGoogle,
                ),
                const SizedBox(
                  width: 40,
                ),
                tile(
                  imagePath: 'assets/images/apple.png',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      Obx(
        () => controller.isGoogleSignInLoading.isTrue
            ? Center(
                child: Lottie.asset('assets/misc/animation_lk005g7x.json',
                    width: 200, height: 200, fit: BoxFit.cover),
              )
            : const SizedBox.shrink(),
      ),
    ]));
  }
}
