import 'package:flutter/material.dart';
import 'package:maintainance/res/app_images.dart';
import 'package:maintainance/view/main_bottom_tab/main_bottom_tab.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const MainBottomTab()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
              AppImages.splashBackground,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.2,
            child: const Text(
              "Maintenance & Repairing Services",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
