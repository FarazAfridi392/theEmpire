import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.395,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: height * 0.06, left: width * 0.1),
                      width: width,
                      height: height * 0.17,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/appBar.jpg',
                          ),
                        ),
                      ),
                      child: const Text(
                        'Profile Settings',
                        style: TextStyle(
                            color: backgroundColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.13,
                    child: PhysicalModel(
                      color: Colors.black,
                      elevation: 5.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: height * 0.065,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: brown,
                          size: 30.sp,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.28,
                    child: Text(
                      'Augusta F  ',
                      style: TextStyle(
                          color: lightBlack,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik'),
                    ),
                  ),
                  Positioned(
                    top: height * 0.335,
                    child: Row(
                      children: [
                        Text(
                          'augusta@TheEmpire  ',
                          style: TextStyle(
                              color: grey,
                              fontSize: 12.sp,
                              fontFamily: 'Rubik-Regular'),
                        ),
                        Icon(
                          Icons.copy,
                          color: grey,
                          size: 12.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 3,
              color: grey,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: PhysicalModel(
                color: Colors.white,
                elevation: 8,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: height * 0.55,
                  width: width,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.03),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Container(
                          height: height * 0.05,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: lightBlack, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'My QR',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 10.sp,
                                    color: lightBlack),
                              ),
                              SizedBox(width: width*0.02,),
                               Icon(
                                Icons.qr_code,
                                color: lightBlack,
                                size: 16.sp,
                              )
                            ],
                          ),
                        ),
                        
                        Container(
                          height: height * 0.05,
                          width: width * 0.45,
                          
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: lightBlack, width: 1)),
                          child: 
                              Center(
                                child: Text(
                                  'Invite a Friend, Get 5\$',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 10.sp,
                                      color: lightBlack),
                                ),
                              ),
                              
                          ),
                        
                      ],
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
