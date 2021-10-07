import 'package:dean_institute_mobile_app/pages/home_page.dart';
import 'package:dean_institute_mobile_app/pages/profile_pages/payment_history.dart';
import 'package:dean_institute_mobile_app/pages/profile_pages/update_profile.dart';
import 'package:dean_institute_mobile_app/ui/auth/login/login_page.dart';
import 'package:dean_institute_mobile_app/ui/splash/welcome_page.dart';
import 'package:dean_institute_mobile_app/utility/constants.dart';
import 'package:dean_institute_mobile_app/widgets/custom_divider.dart';
import 'package:dean_institute_mobile_app/widgets/custom_row_tile.dart';
import 'package:dean_institute_mobile_app/widgets/custom_top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dean_institute_mobile_app/ui/auth/login/login_page.dart';

import '../profile_pages/payment_methods.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

 // void _onLogOutPressed() {
   ///// onPressed: ()
   // async {
         //   SharedPreferences prefs = await SharedPreferences.getInstance();
          //  prefs.remove('email');
          //  Navigator.pushReplacement(context,
            //    MaterialPageRoute(builder: (BuildContext ctx) => Login()));
       //   },
   // void logoutUser(){
//SharedPreferences prefs = await SharedPreferences.getInstance();
//prefs?.clear() ;
// Navigator.pushAndRemoveUntil(
     // context, 
      //ModalRoute.withName("/SplashScreen"), 
     //ModalRoute.withName("/Home")
  //  );

   // print("Log out");
 // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 22.w, right: 22.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTopAppBar(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  title: "Profile",
                  trailing: TextButton( onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.remove('email');
            
           final LoginPage c = Get.put(LoginPage());
            c. localStorage.deleteAll();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => LoginPage()));
          },
                    //onPressed:
                    
                    // _onLogOutPressed,

                    child: Text(
                      "Log out",
                      style: GoogleFonts.lato(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                ProfileBanner(),
                SizedBox(
                  height: 32.h,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "General",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: textColor,
                    ),
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UpdateProfile()));
                  },
                  leading: Text(
                    "Update Profile",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethods()));
                  },
                  leading: Text(
                    "Payment Methods",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    print("Payment History");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentHistory()));
                  },
                  leading: Text(
                    "Payment History",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomDivider(),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Help",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: textColor,
                    ),
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    print("Help & Feedback");
                  },
                  leading: Text(
                    "Help & Feedback",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    print("About App");
                  },
                  leading: Text(
                    "About App",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                CustomDivider(),
                CustomRowTile(
                  onTap: () {
                    print("Terms of services");
                  },
                  leading: Text(
                    "Terms of services",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.w,
      height: 128.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20.w),
              width: 317.w,
              height: 94.h,
              decoration: BoxDecoration(
                color: Color(0xFF932020),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        CustomRowTile(
                          leading: Text(
                            "Sara Johnson",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "Joined",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CustomRowTile(
                          leading: Text(
                            "sarame@gmail.com",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "12 Aug, 2021",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            child: Align(
              alignment: Alignment.topLeft,
              child: ClipOval(
                child: Container(
                  width: 72.w,
                  height: 72.w,
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                      width: 68.w,
                      height: 68.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
