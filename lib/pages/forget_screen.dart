import 'package:flutter/material.dart';
import 'package:resturant/widget/custom_textField.dart';

class ForgetScreen extends StatefulWidget {
  static String id = 'Forget';
  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
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
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Text(
                  ' نسيت كلمة السر',
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
                Text(
                  'قم بأدخال الايميل الصحيح ليتم كلمة السر اليك',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
                          // if(_globalKey.currentState.validate())
                          // {
                          //   Navigator.pushNamed(context, HomeScreen.id);
                          // }
                        },
                        disabledElevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Text(
                          'إرسال',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
