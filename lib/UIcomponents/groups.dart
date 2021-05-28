import 'package:flutter/material.dart';

class Groups extends StatefulWidget {

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups>with SingleTickerProviderStateMixin {
  TabController _controller;
   @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
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
          new Container(
            // decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
            child: new TabBar(
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(79, 119,45,1),
              ),
              controller: _controller,
              tabs: [
                new Tab(
                  text: 'Joined Gorup',
                ),
                new Tab(
                  text: 'Join Group',
                ),
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                Center(
                  child: Text("No Messages To Show!",style: TextStyle(fontSize: 18,color: Color.fromRGBO(79, 119,45,1))),
                ),
                Join()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Joined extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("No Messages To Show!",style: TextStyle(fontSize: 18,color: Color.fromRGBO(79, 119,45,1))),
      ),
    );
  }
}
class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:  ListView(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text("Glossier",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),),
                  subtitle: Text("Farmers",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1))),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset('assets/f1.jpg'),//add image location here
                  ),
                  trailing: RaisedButton(onPressed: (){},
                    color: Color.fromRGBO(236, 243,158,1),
                    child: Text("Join Now",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1)),),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text("Hyderabad",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),),
                  subtitle: Text("Farmers",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1))),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset('assets/f3.jpg'),//add image location here
                  ),
                  trailing: RaisedButton(onPressed: (){},
                    color: Color.fromRGBO(236, 243,158,1),
                    child: Text("Join Now",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1)),),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text("Finhari",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),),
                  subtitle: Text("Creepers",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1))),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset('assets/f4.jpg'),//add image location here
                  ),
                  trailing: RaisedButton(onPressed: (){},
                    color: Color.fromRGBO(236, 243,158,1),
                    child: Text("Join Now",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1)),),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text("Finhari",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),),
                  subtitle: Text("Makers",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1))),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset('assets/f3.jpg'),//add image location here
                  ),
                  trailing: RaisedButton(onPressed: (){},
                    color: Color.fromRGBO(236, 243,158,1),
                    child: Text("Join Now",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1)),),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text("Lipi",style: TextStyle(color: Color.fromRGBO(79, 119,45,1)),),
                  subtitle: Text("Peeps",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1))),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset('assets/f4.jpg'),//add image location here
                  ),
                  trailing: RaisedButton(onPressed: (){},
                    color: Color.fromRGBO(236, 243,158,1),
                    child: Text("Join Now",style: TextStyle(color:  Color.fromRGBO(79, 119,45,1)),),
                  )),
            ),
          ],
            )
    );
  }
}
