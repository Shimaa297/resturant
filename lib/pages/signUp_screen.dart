import 'package:flutter/material.dart';
import 'package:resturant/pages/signIn_screen.dart';
import 'package:resturant/widget/custom_textField.dart';

import 'constant.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'SignUp';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading:  IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
            onPressed: ()
            {
              Navigator.pop(context);
            }
            ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: screenHeight,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          color: Colors.grey[100],
          child: Form(
            key: _globalkey,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Text(
                  ' انشاء حساب جديد',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Aref',
                  ),
                ),
                SizedBox(
                  height: screenHeight * .03,
                ),
                CustomTextFiled(
                  hint: 'اسم المستخدم',
                  icon: Icons.person,
                ),
                SizedBox(
                    height: screenHeight * 0.02
                ),
                CustomTextFiled(
                  hint: 'البريد الالكتروني',
                  icon: Icons.email,
                ),
                SizedBox(
                    height: screenHeight * 0.02
                ),
                CustomTextFiled(
                  hint: 'كلمة السر',
                  icon: Icons.lock,
                ),
                SizedBox(
                    height: screenHeight * 0.02
                ),
                CustomTextFiled(
                  hint: 'التلفون',
                  icon: Icons.phone,
                ),
                SizedBox(
                    height: screenHeight * 0.03
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width ,
                    height: MediaQuery.of(context).size.height * .02,
                    child: Builder(
                      builder: (context)=> RaisedButton(
                        onPressed: () async
                        {
                          if(_globalkey.currentState.validate())
                          {
                            Navigator.pushNamed(context, HomeScreen.id);
                          }
                        },
                        disabledElevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Text(
                          'تسجيل',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: screenHeight * 0.02
                ),
                Text(
                  ' عند الضغط علي الشروط و الأحكام انت توافق علي شروط التطبيق',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                    height: screenHeight * 0.04
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' اذا لديك حساب سجل الدخول ؟',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.pushNamed(context, SignInScreen.id);
                      },
                      child: Text('دخول',
                        textAlign: TextAlign.center,
                        style:  TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.bold),),
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
