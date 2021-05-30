import 'package:dancewebsite/Screens/firstpage.dart';
import 'package:dancewebsite/Screens/fourthpage.dart';
import 'package:dancewebsite/Screens/secondpage.dart';
import 'package:dancewebsite/Screens/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController p1 = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              InkWell(
                  onTap: (){
                    p1.animateToPage(0, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                  },
                  child: Text("HOME  ",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 17,fontWeight: FontWeight.bold),
                  ),
              ),
              InkWell(
                  onTap: (){
                    p1.animateToPage(1, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                  },
                  child: Text("GALLERY  ",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 17,fontWeight: FontWeight.bold))),
              InkWell(
                  onTap: (){
                    p1.animateToPage(2, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                  },
                  child: Text("EVENTS  ",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 17,fontWeight: FontWeight.bold)
                  )
              ),
              InkWell(
                  onTap: (){
                    p1.animateToPage(3, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                  },
                  child: Text("ABOUT US  ",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 17,fontWeight: FontWeight.bold)))
            ],
          ),
          elevation: 0,
          leading: Icon(
            Icons.dangerous,
            color: Colors.white,
          ),
        ),
        body: PageView(
          controller:p1,
          scrollDirection: Axis.vertical,
          children:[
            FirstPage(),
            SecondPage(),
            ThirdPage(),
            FourthPage(),
          ],

        ),
      );
  }
}
