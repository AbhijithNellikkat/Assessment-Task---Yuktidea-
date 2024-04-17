// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/gifs/startup_view_gif.gif",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: const BoxDecoration(
                color: Color(0xFF292929),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Study Lancer',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please select your role to get registered',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // First image with text label
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20,
                                      color: Colors.grey.shade50,
                                      offset: const Offset(0, -3),
                                      spreadRadius: -5.0,
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/student_img.jpg',
                                  width: 140,
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 10), // Space between image and text
                            Text(
                              'Student',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Second image with text label
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20,
                                      color: Colors.grey.shade50,
                                      offset: const Offset(0, -3),
                                      spreadRadius: -5.0,
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/agent_img.jpg',
                                  width: 140,
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 10), // Space between image and text
                            Text(
                              'Agent',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By continuing you agree to our ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          " Terms and conditions",
                          style: TextStyle(color: Color(0xFFD9896A)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
