import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Color dgreen=Color.fromRGBO(79, 119,45,1);
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(15,10, 0, 0),
                      child:Image.asset("assets/Logo.png")
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child:Text('GET STARTED WITH US!',style: TextStyle(color:Color.fromRGBO(144, 169,85,1),fontSize: 20,),)
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'FIRST NAME',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'LAST NAME',
                             ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'MOBILE NUMBER',
                              ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'PASSWORD',
                            ),

                          ),

                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 30,0, 0),
                            child: SizedBox(
                              height: 50,
                              child:RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                color:Color.fromRGBO(144, 169,85,1),
                                child: Center(child:Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),)),
                                onPressed: (){
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: Center(child: Text("Having an account then login with us!",
                                      style:TextStyle(color: Colors.black)
                                  )
                                  ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 5,0, 0),
                            child: SizedBox(
                              height: 50,
                              child:RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                color: Color.fromRGBO(144, 169,85,1),
                                child: Center(child:Text('LOG IN',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                                onPressed: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                },
                              ),
                            ),
                          ),

                        ],
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
