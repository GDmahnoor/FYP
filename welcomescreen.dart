import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/signup_screen.dart';
import '../widgets/elevated_buttons.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:300),
                      child: Image.asset(
                        'assets/images/virlogo.png',
                        width: constraints.maxWidth *
                            0.7, // Adjust logo size based on screen width
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Wanna know if the outfit looks good on you?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                    height: 300,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButtonWelcome(
                      text: 'Login',
                     // Within the `FirstRoute` widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginScreen()),
  );
}
                    ),
                    const SizedBox(width: 40.0),
                    ElevatedButtonWelcome(
                      text: 'Signup',
                      onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => signup()),
  );
}
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue as guest',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.black45),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          );
        },
      ),
    );
  }
}
