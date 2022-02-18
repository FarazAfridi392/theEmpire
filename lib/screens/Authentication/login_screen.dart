import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/Authentication/components/google_button.dart';
import 'package:the_empire/screens/Authentication/forgot_password_screen.dart';
import 'package:the_empire/screens/Authentication/signup_screen.dart';
import 'package:the_empire/screens/main/mainPage.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();

  final navigatorKey;
  LoginScreen({this.navigatorKey});

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget loginForm = Container(
      height: height * 0.22,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: widget.email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email ID/Phone No.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: widget.password,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
    Widget loginButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Login",
                style: TextStyle(
                    color: backgroundColor,
                    fontFamily: 'Rubik',
                    fontSize: 18.0))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: brown,
        ),
      ),
    );

    Widget register = GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SignUpScreen()));
      },
      child: const Text.rich(
        TextSpan(
          text: "New to the Empire? ",
          children: [
            TextSpan(
              text: "Register",
              style: TextStyle(
                  fontFamily: 'Rubik-Meduim', fontSize: 18, color: brown),
            ),
          ],
        ),
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Rubik-Regular',
          color: Colors.black,
        ),
      ),
    );
    return Scaffold(
              backgroundColor: backgroundColor,
              resizeToAvoidBottomInset: false,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAppbar(
                      title: "Login",
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                        child: Column(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                            loginForm,
                            loginButton,
                            const Spacer(
                              flex: 1,
                            ),
                            const Text('or, login with',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Rubik-Regular',
                                    fontSize: 16.0)),
                            const Spacer(
                              flex: 1,
                            ),
                            GoogleButton(),
                            const Spacer(
                              flex: 1,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => ForgotPasswordScreen()));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: brown,
                                    fontFamily: 'Rubik-Medium',
                                    fontSize: 18.0),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            register,
                            const Spacer(
                              flex: 3,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          
  }
}
