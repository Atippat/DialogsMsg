import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:widgets_basic/signup/signup.dart';
import 'signin/signin.dart';
import 'login_sucess_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the Sign In screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 24), // Add spacing here
            ElevatedButton(
              onPressed: () {
                // Navigate to the Sign Up screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 24), // Add spacing here
            ElevatedButton(
              onPressed: () {
                // Implement Sign Out logic here
                FirebaseAuth.instance.signOut();
                // You can navigate back to the authentication page or other pages as needed

                // Navigate to the Login Success page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginSuccesPage(),
                  ),
                );
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}