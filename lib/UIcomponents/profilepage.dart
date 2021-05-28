import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double percent = 0.0;

  double _height;
  double _width;
  @override
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds:1000),(_){
      setState(() {
        percent+=10;
        if(percent >= 80){
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Stack(
             overflow: Overflow.visible,
             alignment: Alignment.center,
             children: [
              Image.asset("assets/land.jpg"),
               Positioned(
                   bottom: -50.0,
                   child: ClipOval(
                     child: Image.asset(
                       'assets/pic.jpg',
                       width: 150,
                       height: 150,
                       fit: BoxFit.cover,
                     ),
                   ),
               ),
             ],
           ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child:Text("KERRON MADDY",style: TextStyle(fontSize: 20,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Text("80% Profile Completed",style: TextStyle(fontSize: 13,color: Color.fromRGBO(79, 119,45,1),),),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: LinearPercentIndicator( //leaner progress bar
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                percent:percent/100,
                center: Text(
                  percent.toString() + "%",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Color.fromRGBO(79, 119,45,1),
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child:TextFormField(
                decoration: InputDecoration(
                  labelText: 'KERRON MADDY',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child:TextFormField(
                decoration: InputDecoration(
                  labelText: '7010082398',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child:TextFormField(
                decoration: InputDecoration(
                  labelText: 'Chennai,Tamil Nadu',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child:RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                color:Color.fromRGBO(79, 119,45,1),
                child: Center(child:Text('UPLOAD',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                onPressed: (){
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
