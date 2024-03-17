import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todoist/ui/utils/collor_pallete.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 100),
        children: [
          SizedBox(
            height: 304,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (_, index) => Image.asset(
                'assets/images/welcome.png',
              ),
              onPageChanged: (index) => setState(
                () => _currentIndex = index,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) {
                  final selected = index == _currentIndex;
                  return AnimatedContainer(
                    height: 6,
                    width: 17,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    decoration: BoxDecoration(
                      color: selected
                          ? ColorPallete.blue
                          : const Color(0xFFC0D3D7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ),
          const Text(
            "Let's Organize\nYour Note TODO",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(38, 20, 38, 37),
            child: Text(
              "Make your todo in the note and manage your priority activity in daily life to achieve goals.",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(66, 0, 66, 23),
            child: SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: ColorPallete.blue,
                  foregroundColor: ColorPallete.white,
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Already have an account? ',
                ),
                TextSpan(
                  text: 'Sign In',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => print('Sign In'),
                ),
              ],
              style: const TextStyle(
                fontSize: 12,
                color: ColorPallete.blue,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
