import 'package:flutter/material.dart';
import 'package:pokemon_tcg_market/app/pages/home_page.dart';
import 'package:pokemon_tcg_market/app/shared/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToHomePage(BuildContext context) async {
    await Future.delayed(
      const Duration(
        seconds: 5,
      ),
    );
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  @override
  void initState() {
    navigateToHomePage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/icons/pokeball.png',
                width: 110,
                fit: BoxFit.cover,
              ),
              const Divider(
                height: 10,
              ),
              // const SizedBox(
              //   width: 30,
              //   height: 30,
              //   child: CircularProgressIndicator(
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
