import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/Authentication/components/google_button.dart';
import 'package:the_empire/screens/Authentication/login_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNo = TextEditingController();

  
  TextEditingController bankAccount = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget signupForm = Container(
      height: height * 0.42,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: fullName,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Full Name.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: phoneNo,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Phone No.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: bankAccount,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_balance),
                  hintText: 'Bank Account.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email ID/Phone No.',
                ),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Rubik'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: password,
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
    Widget signUpButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Signup",
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
            CustomAppbar(title: "SignUp",),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    const GoogleButton(),
                    // loginForm,
                    // loginButton,
                    const Spacer(
                      flex: 1,
                    ),
                    const Text('or, signup with email',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Rubik-Regular',
                            fontSize: 16.0)),
                    const Spacer(
                      flex: 1,
                    ),
                    signupForm,
                    const Spacer(
                      flex: 1,
                    ),
                    signUpButton,
                    const Spacer(
                      flex: 1,
                    ),
                    // register,
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