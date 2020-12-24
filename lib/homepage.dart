import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.calendar_today, size: 30),
          Icon(Icons.fitness_center, size: 30),
          Icon(Icons.assessment, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Padding(
        padding: EdgeInsets.all( width*0.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: width*0.05, top: width*0.06 ),
              child: Align( alignment: Alignment.topLeft,
                child: Text.rich(
                TextSpan(
                text: 'FOR YOU\n',style: TextStyle(fontWeight: FontWeight.w900,fontSize: height*0.04),
                children: <TextSpan>[
                TextSpan(text: '\nWhat are you in a mood for \ntoday?\n', style: TextStyle(fontWeight: FontWeight.w400,fontSize: height*0.025)),
                TextSpan(text: '\n\nALL PRACTICES\n', style: TextStyle(color: Color(0xFF7D7D7D),fontWeight: FontWeight.w500,fontSize: height*0.025)),
                ],
                ),
                ),
              ),
            ),
              Column(
               children: [
                 Row(
                 children: [
                   SizedBox(width:width*0.04),
                   MaterialButton(
                  onPressed: () {
                    print("object");
                  },
                  color: Color(0xFFC1E2B5),
                  textColor: Colors.white,
                    child: Image.asset('images/fitness.png',height: height*0.14),
                  padding: EdgeInsets.all(height*0.03),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                  SizedBox(width:width*0.14),
                  MaterialButton(
                  onPressed: () {
                    print("object");
                  },
                  color: Color(0xFFB7C5ED),
                  textColor: Colors.white,
                  child: Image.asset('images/yoga.png',height: height*0.14),
                  padding: EdgeInsets.all(height*0.03),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                   SizedBox(width:width*0.04),
          ],
        ) ,
                 SizedBox(height:width*0.14),
                 Row(
                   children: [
                     SizedBox(width:width*0.04),
                     MaterialButton(
                       onPressed: () {
                         print("object");
                       },
                       color: Color(0xFFA7D3DF),
                       textColor: Colors.white,
                       child: Image.asset('images/meditation.png',height: height*0.14),
                       padding: EdgeInsets.all(height*0.03),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                     ),
                     SizedBox(width:width*0.14),
                     MaterialButton(
                       onPressed: () {
                         print("object");
                       },
                       color: Color(0xFFE5AAE1),
                       textColor: Colors.white,
                       child: Image.asset('images/balanced diet.png',height: height*0.14),
                       padding: EdgeInsets.all(height*0.03),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                     ),
                     SizedBox(width:width*0.04),
                   ],
                 ) ,
            ],
            ),
          ],
        ),
      ),
    );
  }
}
