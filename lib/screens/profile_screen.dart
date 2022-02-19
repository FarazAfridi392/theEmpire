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
                elevation: 4,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: height * 0.55,
                  width: width,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.05,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: lightBlack, width: 1)),
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
                                SizedBox(
                                  width: width * 0.02,
                                ),
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
                                border:
                                    Border.all(color: lightBlack, width: 1)),
                            child: Center(
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
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        "Account Info",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14.sp,
                            color: lightBlack),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.call,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Mobile Number',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          subtitle: Text(
                            '+12 123 1234567',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.account_balance_sharp,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Bank Account',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          subtitle: Text(
                            '1273 xxxx xxxx 4321',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          trailing: Container(
                            alignment: Alignment.center,
                            height: height * 0.05,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: grey, width: 1)),
                            child: Text(
                              '+ Add',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 12.sp,
                                  fontFamily: 'Rubik-Regular'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.language,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Language',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          subtitle: Text(
                            'English',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 3.sp),
                          minLeadingWidth: width * 0.05,
                          leading: CircleAvatar(
                              radius: 9.sp,
                              backgroundColor: grey,
                              foregroundColor: backgroundColor,
                              child: Icon(
                                Icons.stop,
                                size: 15.sp,
                              )),
                          title: Text(
                            'Account Limits',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          trailing: Padding(
                            padding: EdgeInsets.only(right: width * 0.08),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: grey,
                              size: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: PhysicalModel(
                color: Colors.white,
                elevation: 4,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: height * 0.4,
                  width: width,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Privacy & Security",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14.sp,
                            color: lightBlack),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.notifications,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Notifications',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik'),
                          ),
                          subtitle: Text(
                            'Turn notifications On/Off ',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.security,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Security PIN',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          subtitle: Text(
                            'Change Security PIN',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: width * 0.05,
                          leading: Padding(
                            padding: EdgeInsets.only(top: 4.5.sp),
                            child: Icon(
                              Icons.logout,
                              color: grey,
                              size: 22.sp,
                            ),
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Rubik-Regular'),
                          ),
                          subtitle: Text(
                            'Logout from the Empire',
                            style: TextStyle(
                                color: grey,
                                fontSize: 12.sp,
                                fontFamily: 'Rubik-Regular'),
                          ),
                        ),
                      ),
                      
                      
                    ],
                  ),
                ),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.only(left: width*0.1,top: 5.sp,bottom: 10.sp),
              child: Row(
                          children: [
                            Icon(
                              Icons.help,
                              color: grey,
                              size: 22.sp,
                            ),
                            SizedBox(width: width*0.04,),
                            Text(
                              'Help & Feedback',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Rubik-Regular'),
                            ),
                          ],
                        ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.1,top: 5.sp,bottom: 50.sp),
              child: Row(
                          children: [
                            Icon(
                              Icons.receipt,
                              color: grey,
                              size: 22.sp,
                            ),
                            SizedBox(width: width*0.04,),
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Rubik-Regular'),
                            ),
                          ],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
