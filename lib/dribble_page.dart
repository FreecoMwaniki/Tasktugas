import 'package:flutter/material.dart';
import 'package:flutterdemo/navbar.dart';
import 'package:get/get.dart';

class DribblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo and Title
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logotasktu.png", // Using your provided logo
                    height: 150,
                    width: 350,
                  ),
                  const SizedBox(width: 8),
                  // const Text(
                  //   "Tasktugas",
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.green,
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 30),
              // Illustration
              Container(
                height: 250,
                child: Image.asset(
                  'assets/images.png', // Add your illustration here
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),
              // Heading
              const Text(
                "Team Up For Success",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // Subtitle
              Text(
                "Get ready to unleash your potential and witness the power of teamwork as we embark on this extraordinary project.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () {
                      Get.to(Navbar1());
                      // Add Next functionality here
                    },
                    child:
                    const Text(
                      "Next",
                      style: TextStyle(fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}