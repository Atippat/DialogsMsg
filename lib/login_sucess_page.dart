import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class LoginSuccesPage extends StatelessWidget {
  LoginSuccesPage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void signOutUser(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => MyApp(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 87, 200, 91), // Set the app bar color to red
        actions: [
          IconButton(
            onPressed: () {
              signOutUser(context);
            },
            icon: Icon(Icons.logout), // Add the sign out icon
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 4, 255, 255), // Set the background color to white
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login Successful',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to our application, ${user?.displayName ?? 'User'}!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  signOutUser(context);
                },
                child: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}