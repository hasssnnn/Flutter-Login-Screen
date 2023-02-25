import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/reusable_components.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  onFieldSubmitted: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                  onChanged: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email Address',
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value) {
                    //ignore: avoid_print
                    print(value);
                  },
                  onChanged: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 15),
                defaultButtons(
                  background: Colors.blue,
                  radius: 5,
                  func: () {
                    if (kDebugMode) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                  text: 'login',
                  isUpperCase: true,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
