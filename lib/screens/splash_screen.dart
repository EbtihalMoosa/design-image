import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 120),
              child: RippleAnimation(
                child: CircleAvatar(
                  minRadius: 75,
                  maxRadius: 75,
                  backgroundImage: AssetImage("assets/ll.jpg"),
                ),
                color: Color(0xFFE0B7D5),
                delay: const Duration(milliseconds: 300),
                repeat: true,
                minRadius: 75,
                ripplesCount: 6,
                duration: const Duration(milliseconds: 6 * 300),
              ),
            ),
          ),
          SizedBox(
            height: 170,
          ),
          Container(
            child: Text(
              "Nike",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
