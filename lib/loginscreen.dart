import 'package:agriculture_app/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color dgreen=Color.fromRGBO(79, 119,45,0);
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child:Text('SIGIN HERE WITH US!',style: TextStyle(color:Color.fromRGBO(144, 169,85,1),fontSize: 20,),)
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                          child: SizedBox(
                            height: 60,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              color:  Color.fromRGBO(144, 169,85,1),
                              child: Center(child:Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),)),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>Home()),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child:  Checkbox(
                                  value: this.valuefirst,
                                  checkColor: Colors.greenAccent,
                                  // activeColor: Colors.red,
                                  onChanged: (bool value) {
                                  },
                                ),
                              ),
                              Container(
                                child: Text("Remember password",style: TextStyle(fontSize: 10
                                ),),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                  child: Text("Forget Password",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromRGBO(144, 169,85,1)),),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Center(child: Text("Not yet joined with us!",
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
                              color:  Color.fromRGBO(144, 169,85,1),
                              child: Center(child:Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                              onPressed: (){
                                Navigator.pop(context);
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
    );
  }
}
