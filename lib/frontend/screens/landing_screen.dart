import 'package:collectily/frontend/screens/create_profile_screen.dart';
import 'package:collectily/frontend/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/Background.svg',
              fit: BoxFit.cover,
              placeholderBuilder: (context) => Container(
                color: Colors.grey[200],
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo - with better error handling
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image(image: AssetImage('assets/images/Logo.png')),
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome to Collectily',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge
                ),
                const SizedBox(height: 20),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Collectily is a platform that allows you to collect and manage your data in one place.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
             
                const SizedBox(height: 20),
                CustomLoginButton(
                  text: 'Start now',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreateProfilePage(),
                      ),
                    );
                  },
                  icon: Icons.login,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  borderRadius: 8.0, 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}