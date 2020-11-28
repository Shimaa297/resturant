
import 'package:flutter/material.dart';
import 'package:resturant/pages/constant.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;

  CustomTextFiled({@required this.hint, @required this.icon, @required this.onClick});

  String erorrMessage( String val)
  {
    switch(hint)
    {
      case 'اسم المستخدم' : return 'برجاء ادخال الاسم';
      case 'البريد الالكتروني' : return 'برجاء ادخال البريد الالكتروني';
      case 'كلمة السر' : return 'برجاء ادخال كلمة السر';
      case 'التلفون' : return 'برجاء ادخال التلفون';
    }
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value)
      {
        if(value.isEmpty)
        {
          return erorrMessage(hint);
        }
      },
      obscureText: hint == 'كلمة السر' ? true : false,
      keyboardType: hint== 'التلفون' ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: Colors.deepOrange,
        ),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
              color: Colors.white,
              width: 2
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
              color: Colors.white,
              width: 2
          ),
        ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
              color: Colors.white,
              width: 2
          ),
        ),
      ),
    );
  }
}
