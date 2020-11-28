import 'package:flutter/material.dart';
import 'package:resturant/pages/forget_screen.dart';
import 'package:resturant/pages/signUp_screen.dart';
import 'package:resturant/widget/custom_textField.dart';

import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  static String id = 'SignInScreen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
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
            key: _globalKey,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Text(
                  ' الدخول الي حسابك',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Aref',
                  ),
                ),
                SizedBox(
                  height: screenHeight * .08,
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
                GestureDetector(
                  onTap: ()
                  {
                      Navigator.pushNamed(context, ForgetScreen.id);
                  },
                  child: Text('هل نسيت كلمة السر؟',
                    textAlign: TextAlign.left,
                    style:  TextStyle(color: Colors.deepOrange, fontSize: 15, fontWeight: FontWeight.bold),),
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
                          if(_globalKey.currentState.validate())
                          {
                            Navigator.pushNamed(context, HomeScreen.id);
                          }
                        },
                        disabledElevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Text(
                          'دخول',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: screenHeight * 0.3
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' اذا لم يكن لديك حساب سجل الدخول ؟',
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
                          Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: Text('تسجيل جديد',
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
