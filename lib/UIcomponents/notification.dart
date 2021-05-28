import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child:Text("NOTIFICATION",style: TextStyle(fontSize: 30,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Container(
                  child: Image.asset("assets/Vector.png"),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Divider(
              color: Color.fromRGBO(79, 119,45,1),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Text("No Notifications To Show!",style: TextStyle(fontSize: 18,color: Color.fromRGBO(79, 119,45,1))),
            ),
          )
        ],
      ),
    );
  }
}
