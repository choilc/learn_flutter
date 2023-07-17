import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Text(
            'Hello, welcomeblack',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Login to continue',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Pasword',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                print('Forgot is clicked');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: Text('Forgot password?'),
            ),
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                print('Login is clicked');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: Text('Login'),
            ),
          ),
          SizedBox(
            height: 62,
          ),
          Text(
            'Or sign in with',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              print('Google is clicked');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 22,
                  height: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with Google'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Facebook is clicked');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with Facebook'),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "Don't have account? ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Signup clicked');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                ),
                child: Text(
                  'Signup',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
