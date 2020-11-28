import 'package:flutter/material.dart';
import 'package:resturant/pages/forget_screen.dart';
import 'package:resturant/pages/home_screen.dart';
import 'package:resturant/pages/signIn_screen.dart';
import 'package:resturant/pages/signUp_screen.dart';
import 'package:resturant/pages/tips/tips.dart';
import 'package:shimmer/shimmer.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LogoScreen.id,
    routes: {
      LogoScreen.id: (context)=> LogoScreen(),
      Tips.id: (context)=> Tips(),
      SignUpScreen.id: (context)=> SignUpScreen(),
      HomeScreen.id: (context)=> HomeScreen(),
      SignInScreen.id: (context)=> SignInScreen(),
      ForgetScreen.id: (context)=> ForgetScreen(),

    },
    //home: LogoScreen(),
  ));
}

// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 15,
//       navigateAfterSeconds: new GetStart(),
//       title: Shimmer.fromColors(
//         period: Duration(microseconds: 1500),
//         baseColor: Colors.purple,
//         highlightColor: Colors.purpleAccent,
//         child: Text(
//           'Resurant',
//           style: new TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 30.0,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       // image: new Image.network(
//       //     'https://flutter.io/images/catalog-widget-placeholder.png'),
//
//       backgroundColor: primeryColor,
//       onClick: () => print('Resturant'),
//       loaderColor: Colors.white,
//     );
//   }
// }

class LogoScreen extends StatefulWidget {
  static String id = 'LogoScreen';
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: ()
        {
          Navigator.pushNamed(context, Tips.id);
        },
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo1.jpg'),
              fit: BoxFit.fill
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 580),
            child: Column(
              children: [
                Center(
                  child: Shimmer.fromColors(
                  period: Duration(milliseconds: 2000),
                  baseColor: Colors.yellow,
                  highlightColor: Colors.deepOrangeAccent,
                  child: Text(
                    'Resurant',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white,
                      fontFamily: 'Pacifico'
                    ),
                  ),
        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width ,
                    height: MediaQuery.of(context).size.height * .06,
                    child: RaisedButton(
                      onPressed: ()
                      {
                        Navigator.pushNamed(context, Tips.id);
                      },
                      disabledElevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Text(
                        'ابدأ من هنا',
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Aref'),
                      ),
                      color: Colors.amber[700],
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

