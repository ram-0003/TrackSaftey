import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Skip action
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),

              // Logo
              Image.asset(
                'lib/resources/logo_daylight.jpg',
                height: 100.0,
              ),

              SizedBox(height: 16.0),

              // Title
              Text(
                'Track Safety',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              // Subtitle
              Text(
                'Track Hazards, Ensure Safety\nTogether for Better Roads!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                ),
              ),

              SizedBox(height: 32.0),

              // Login/Register tabs
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.yellow,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: 'Login'),
                          Tab(text: 'Register'),
                        ],
                      ),
                      Container(
                        height: 300.0,
                        child: TabBarView(
                          children: [
                            // Login Tab
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone),
                                      labelText: 'Phone number',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          // Login with OTP action
                                        },
                                        child: Text('Login with OTP'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Forgot password action
                                        },
                                        child: Text('Forgot Password?'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Login action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.yellow,
                                      padding: EdgeInsets.symmetric(vertical: 12.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Register Tab
                            Center(
                              child: Text('Register Tab (To be implemented)'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.0),

              // Or login with
              Text(
                'Or login with',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14.0,
                ),
              ),

              SizedBox(height: 16.0),

              // Social login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Google login action
                    },
                    icon: Image.asset(
                      'lib/resources/google_logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    onPressed: () {
                      // Facebook login action
                    },
                    icon: Image.asset(
                      'lib/resources/facebook.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
