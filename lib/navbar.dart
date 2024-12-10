import 'package:flutter/material.dart';
import 'package:flutterdemo/dribble_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Navbar1 extends StatelessWidget {
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
                    "assets/download.jpeg", // Using your provided logo
                    height: 250,
                    width: 370,
                  ),
                  const SizedBox(width: 8,)
                ],
              ),
              const SizedBox(height: 30),
              // Illustration
              Container(
                height: 250,
                child: Image.asset(
                  'assets/batman.jpeg', // Add your illustration here
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
                "Ah you think darkness is your ally? You merely adopted the dark. I was born in it, molded by it. "
                    "I didn't see the light until I was already a man, by then it was nothing to me but blinding!.",
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
                      Get.back();
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () {
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