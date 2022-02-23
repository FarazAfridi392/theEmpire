import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/Authentication/components/google_button.dart';
import 'package:the_empire/screens/Authentication/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
      
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
            
              controller: fullName,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                prefixIcon: Icon(
                  Icons.person,
                  size: 20.sp,
                
                ),
                hintText: 'Full Name.',
              ),
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
            ),
            TextField(
              controller: phoneNo,
              decoration:  InputDecoration(
                contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                prefixIcon: Icon(Icons.phone,size:20.sp,),
                hintText: 'Phone No.',
                
              ),
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.009),
              child: TextField(
                controller: bankAccount,
                decoration:  InputDecoration(
                  contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                  prefixIcon: Icon(Icons.account_balance,size: 20.sp,),
                  hintText: 'Bank Account.',
                ),
                style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
              ),
            ),
            TextField(
              controller: email,
              decoration:  InputDecoration(
                contentPadding: EdgeInsets.only(top: 15.sp,bottom: 15.sp),
                prefixIcon: Icon(Icons.email,size: 20.sp,),
                hintText: 'Email ID/Phone No.',
              ),
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Rubik'),
            ),
            TextField(
              controller: password,
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
    Widget signUpButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child:  Center(
            child: Text("Signup",
                style: TextStyle(
                    color: backgroundColor,
                    fontFamily: 'Rubik',
                    fontSize: 14.sp))),
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
              title: "SignUp",
            ),
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
                    Text('or, signup with email',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Rubik-Regular',
                            fontSize: 12.sp)),
                    const Spacer(
                      flex: 1,
                    ),
                    signupForm,
                    const Spacer(
                      flex: 2,
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
