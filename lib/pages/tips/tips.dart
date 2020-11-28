import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant/pages/constant.dart';
import 'package:resturant/pages/signUp_screen.dart';

import '../signIn_screen.dart';


class Tips extends StatefulWidget {
  static String id = 'Tips';
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myArray = [
    {
      'title': 'ابحث عن المأكولات التي تحبها',
      'info': 'أفضل الأطعمة تجدها في التطبيق من هنا يمكنك البدء',
      'image': 'images/tips1.jpg'
    },
    {
      'title': 'ابحث عن المأكولات التي تحبها',
      'info': 'أفضل الأطعمة تجدها في التطبيق اتصل بنا من هنا ',
      'image': 'images/tips2.jpg'
    },
    {
      'title': 'ابحث عن المأكولات التي تحبها',
      'info': 'أفضل الأطعمة تجدها في التطبيق من هنا يمكنك البدء',
      'image': 'images/tips1.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: GestureDetector(
              onTap: ()
              {
                 Navigator.pushNamed(context, SignInScreen.id);
              },
              child: Text('دخول',
                textAlign: TextAlign.right,
                style:  TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(
            height: screenHeight * .1,
          ),
          Container(
            height: screenHeight /2 ,
            child: PageIndicatorContainer(
              shape: IndicatorShape.circle(),
              length: myArray.length,
              align: IndicatorAlign.bottom,
              indicatorColor: Colors.grey[400],
              indicatorSelectorColor: Colors.amber[700],
              child: PageView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: myArray.length,
                itemBuilder: (BuildContext context, index)
                {
                  return SingleTips(title: myArray[index]['title'], info: myArray[index]['info'], image: myArray[index]['image'],);
                },
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height * .06,
              child: RaisedButton(
                onPressed: ()
                {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                disabledElevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  'انشئ حساب',
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
                ),
                color: Colors.deepOrange,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height * .06,
              child: RaisedButton(
                onPressed: ()
                {},
                disabledElevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.facebook, size: 25.0, color: Colors.white,),
                    ),
                    Text(
                      'متابعة من خلال الفيس بوك',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  String title;
  String info;
  String image;

  SingleTips({this.image, this.info, this.title});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: screenHeight * .15 ,
          backgroundImage:
          AssetImage(image),
        ),
        SizedBox(
          height: screenHeight * .03,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 25,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            fontFamily: 'Aref'
          ),
        ),
        SizedBox(
          height: screenHeight * .02,
        ),
        Text(
          info,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
