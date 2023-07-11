import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THIS IS THE MAIN PAGE"),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () => controller.signOut(),
            child: const Text("Log Out")),
      ),
    );
  }
}
