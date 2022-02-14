import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/Authentication/login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    Widget forgetPassForm = Container(
      height: height * 0.12,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TextField(
            controller: email,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email ID/Phone No.',
            ),
            style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
          ),
        ),
      ),
    );
    Widget forgetButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Send New Password",
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
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppbar(
              title: "Forgot Password",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    forgetPassForm,
                    forgetButton,
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
