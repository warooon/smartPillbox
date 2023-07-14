import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:smart_pillbox/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:smart_pillbox/app/controllers/sign_out_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final SignOutController _signOutController = Get.put(SignOutController());

  void _openModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      showDragHandle: true,
      context: context,
      constraints: const BoxConstraints(maxHeight: 250),
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Text(
                "More Options",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(thickness: 1, color: Colors.grey),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View Schedules",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Medication Quality",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.medication,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  _signOutController.signOut();
                },
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Text(
                  "Sign out",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              _openModalBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: const Text('VV', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
