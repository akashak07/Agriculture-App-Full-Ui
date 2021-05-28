import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                child:Text("SEARCH",style: TextStyle(fontSize: 30,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
            ),
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
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20,0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
               children: [
                 Icon(Icons.search,color:  Color.fromRGBO(79, 119,45,1),),
                 Text("Search",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),)
               ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 90, 20, 0),
              child: Text("No Results To Show!",style: TextStyle(fontSize: 18,color: Color.fromRGBO(79, 119,45,1))),
            ),
          )
        ],
      ),
    );
  }
}
