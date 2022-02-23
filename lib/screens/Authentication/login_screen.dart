import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/Authentication/components/google_button.dart';
import 'package:the_empire/screens/Authentication/forgot_password_screen.dart';
import 'package:the_empire/screens/Authentication/signup_screen.dart';
import 'package:the_empire/screens/authentication/enter_pin_screen.dart';
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
      
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: widget.email,
              decoration:  InputDecoration(
                contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                prefixIcon: Icon(Icons.email,size: 20.sp,),
                hintText: 'Email ID/Phone No.',
              ),
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
            ),
            TextField(
              controller: widget.password,
              decoration:  InputDecoration(
                contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                prefixIcon: Icon(Icons.lock,size: 20.sp,),
                hintText: 'Password.',
              ),
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
    Widget loginButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => EnterPinScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child:  Center(
            child: Text("Login",
                style: TextStyle(
                    color: backgroundColor,
                    fontFamily: 'Rubik',
                    fontSize: 15.sp))),
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
      child:  Text.rich(
        TextSpan(
          text: "New to the Empire? ",
          children: [
            TextSpan(
              text: "Register",
              style: TextStyle(
                  fontFamily: 'Rubik-Meduim', fontSize: 13.sp, color: brown),
            ),
          ],
        ),
        style: TextStyle(
          fontSize: 13.sp,
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
                              flex: 8,
                            ),
                            loginForm,
                            const Spacer(flex: 2,),
                            loginButton,
                            const Spacer(
                              flex: 1,
                            ),
                            const Text('or, login with',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Rubik-Regular',
                                    fontSize: 13.0)),
                            const Spacer(
                              flex: 1,
                            ),
                            GoogleButton(),
                            const Spacer(
                              flex: 2,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => ForgotPasswordScreen()));
                              },
                              child:  Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: brown,
                                    fontFamily: 'Rubik-Medium',
                                    fontSize: 12.sp),
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            register,
                            const Spacer(
                              flex: 5,
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
