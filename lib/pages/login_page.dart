import 'package:flutter/material.dart';

import '../widgets/main_button.dart';
import '../widgets/main_text_field.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF001C31),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Login to your Existing Account",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white60,
                  ),
                ),
                const Spacer(),
                // logo assets
                Image.asset(
                  "lib/assets/logo.png",
                  height: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .1),
                  child: Column(
                    children: [
                      MainTextField(
                        labelText: 'Username',
                        onValueChanged: (bool value) {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MainTextField(
                        labelText: 'Password',
                        onValueChanged: (bool value) {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MainButton(
                        title: 'LOGIN',
                        onTapped: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardPage()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Signup",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Reset Password",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "version 1.1.0",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white60,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
