import 'package:flutter/material.dart';
import 'dart:math' as math; // Import the math library for pi
import 'package:flutter_svg/flutter_svg.dart'; // Import the new package

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // A Scaffold provides the basic screen structure
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // This is the decorative background ellipse
          Positioned(
            top: -100,
            left: -200,
            child: Transform.rotate(
              angle: -math.pi / 12, // Corrected angle to use radians
              child: Container(
                width: 500, // Made wider than the height
                height: 450,
                decoration: BoxDecoration(
                  // Use a LinearGradient for the fading effect
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple.withAlpha(100), // Start color
                      Colors.white.withAlpha(0), // End color (transparent)
                    ],
                  ),
                  // Using borderRadius to create an ellipse, removed shape property
                  borderRadius: BorderRadius.circular(225),
                ),
              ),
            ),
          ),
          // The main content of the screen
          SafeArea(
            // We use SingleChildScrollView to prevent overflow when the keyboard appears
            child: SingleChildScrollView(
              // We wrap the Column in Padding to get space from the screen edges
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
                child: Column(
                  // This aligns all children of the Column to the left
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // A little space between the title and the sign up text
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'sign up',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // Add space before the text fields
                    const SizedBox(height: 48),
                    const TextField(
                      decoration: InputDecoration(
                        // Use prefix instead of prefixText to make it always visible
                        prefix: Text(
                          '+1 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.purple, width: 1.5),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    // Space between the text fields
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'FORGOT',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.purple, width: 1.5),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    // Space before the login button
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Space before the social icons
                    const SizedBox(height: 40),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialIcon(svgAsset: 'assets/icons/apple_logo.svg'),
                        SizedBox(width: 20),
                        SocialIcon(svgAsset: 'assets/icons/facebook_logo.svg'),
                        SizedBox(width: 20),
                        SocialIcon(svgAsset: 'assets/icons/google_logo.svg'),
                        SizedBox(width: 20),
                        SocialIcon(svgAsset: 'assets/icons/x_logo.svg'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// A reusable widget for the social media icons
class SocialIcon extends StatelessWidget {
  final String svgAsset;
  const SocialIcon({
    super.key,
    required this.svgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.5,
        ),
      ),
      child: SvgPicture.asset(
        svgAsset,
        width: 24,
        height: 24,
      ),
    );
  }
}

