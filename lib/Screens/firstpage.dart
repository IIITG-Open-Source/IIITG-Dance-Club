import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Row(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/FirstPage');
                  },
                  child: Text('Home')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/SecondPage');
                  },
                  child: Text('Gallery')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/ThirdPage');
                  },
                  child: Text('Events')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/FourthPage');
                  },
                  child: Text('About Us'))
            ],
          ),
          elevation: 0,
          leading: Icon(
            Icons.dangerous,
            color: Colors.white,
          ),
        ),*/
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB551F2),
                  Color(0xFF8A01D7)
                ],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,

              )
          ),
          child: Center(child: Text("HOME",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 25,fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}

