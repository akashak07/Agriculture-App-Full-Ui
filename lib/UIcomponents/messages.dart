import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                child:Text("MESSAGES",style: TextStyle(fontSize: 30,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
            ),
          ),
          Container(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Divider(
              color: Color.fromRGBO(79, 119,45,1),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Text("No Messages To Show!",style: TextStyle(fontSize: 18,color: Color.fromRGBO(79, 119,45,1))),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add,color:Color.fromRGBO(236, 243,158,1),),
        backgroundColor: Color.fromRGBO(79, 119,45,1)
      ),
    );
  }
}

