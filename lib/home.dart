import 'package:agriculture_app/UIcomponents/groups.dart';
import 'package:agriculture_app/UIcomponents/messages.dart';
import 'package:agriculture_app/UIcomponents/notification.dart';
import 'package:agriculture_app/UIcomponents/profilepage.dart';
import 'package:agriculture_app/UIcomponents/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
PageController pageController;
class _HomeState extends State<Home> {
  int _page = 0;
  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
                leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
              'assets/Logo.png',
               ),
                ),
        actions: [
        // IconButton(
        //     icon: Icon(Icons.menu,color: Color.fromRGBO(144, 169,85,1),size: 40,),
        //     onPressed: (){}
        // ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu,color: Color.fromRGBO(144, 169,85,1)),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
      ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Color.fromRGBO(236, 243,158,1),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/pic.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 15, 0, 10),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20,0, 10),
                    child:Text("HELLO!!",style: TextStyle(fontSize: 30,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                    child:Text("KERRON MADDY",style: TextStyle(fontSize: 25,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Divider(
                color: Color.fromRGBO(79, 119,45,1),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                    child:Text("SOCIAL",style: TextStyle(fontSize: 25,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Message()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Messages",style: TextStyle(fontSize: 16,color:Colors.black)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Icon(Icons.messenger,color:Color.fromRGBO(79, 119,45,1) ,),
                      )
                    ],
                  ),
                )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Notifications()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Notifications",style: TextStyle(fontSize: 16,color:Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Icon(Icons.notifications_active,color:Color.fromRGBO(79, 119,45,1) ,),
                        )
                      ],
                    ),
                  )
              ),
              Divider(
                color: Color.fromRGBO(79, 119,45,1),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                    child:Text("FAVOURITES",style: TextStyle(fontSize: 25,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("News Feed",style: TextStyle(fontSize: 16,color:Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Icon(Icons.book_online_outlined,color:Color.fromRGBO(79, 119,45,1) ,),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Saved Posts",style: TextStyle(fontSize: 16,color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Icon(Icons.bookmark,color:Color.fromRGBO(79, 119,45,1) ,),
                        )
                      ],
                    ),
                  )
              ),
              Divider(
                color: Color.fromRGBO(79, 119,45,1),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                    child:Text("EXPLORE",style: TextStyle(fontSize: 25,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                  child: GestureDetector(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("People",style: TextStyle(fontSize: 16,color:Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Icon(Icons.group_add_outlined,color:Color.fromRGBO(79, 119,45,1) ,),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 3,0, 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Groups()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Groups",style: TextStyle(fontSize: 16,color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Icon(Icons.group,color:Color.fromRGBO(79, 119,45,1) ,),
                        )
                      ],
                    ),
                  )
              ),
              Divider(
                color: Color.fromRGBO(79, 119,45,1),
              ),

            ],
          ),
        ),
      ),
      body: new PageView(
        children: [
          new Container(
            color: Colors.white,
            child:FeedScreen(),
          ),
          new Container(color: Colors.white, child: Message()),
          new Container(
            color: Colors.white,
            child: Search(),
          ),
          new Container(
              color: Colors.white, child: Groups()),
          new Container(
              color: Colors.white,
              child: Notifications()),
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),

      bottomNavigationBar: new CupertinoTabBar(
        activeColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home, color: (_page == 0) ?Color.fromRGBO(79, 119,45,1) : Color.fromRGBO(236, 243,158,1)),
              title: new Container(height: 0.0),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.messenger, color: (_page == 1) ? Color.fromRGBO(79, 119,45,1) :  Color.fromRGBO(236, 243,158,1)),
              title: new Container(height: 0.0),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.search, color: (_page == 2) ? Color.fromRGBO(79, 119,45,1) : Color.fromRGBO(236, 243,158,1)),
              title: new Container(height: 0.0),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.group, color: (_page == 3) ? Color.fromRGBO(79, 119,45,1) : Color.fromRGBO(236, 243,158,1)),
              title: new Container(height: 0.0),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.notifications_active, color: (_page == 4) ? Color.fromRGBO(79, 119,45,1) : Color.fromRGBO(236, 243,158,1)),
              title: new Container(height: 0.0),
              backgroundColor: Colors.white),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            color: Colors.white,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(79, 119,45,1),
                    ),
                    tabs: [
                      Tab(text: "State Update",),
                      Tab(text: "District Update",),
                      Tab(text: "Thaluk Update",)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            First(),
            Second(),
            Third()
           ],
        )
      ),
    );
  }
}
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20,0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/pic.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(5, 7, 0, 0),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text("Write About Something",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Text("E.g Athuntic,Today's is Energitic ",style: TextStyle(color: Colors.grey) ,),
                          Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                    child:Text("RECENT UPDATES",style: TextStyle(fontSize: 23,color: Color.fromRGBO(79, 119,45,1),fontWeight: FontWeight.bold),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Row(
                    children: [
                      Text("Emily Wu",style: TextStyle(fontSize: 17,color: Color.fromRGBO(79, 119,45,1))),
                      Text(" and",style: TextStyle(fontSize: 17,color:Colors.black)),
                      Text(" Matlida Larose",style: TextStyle(fontSize: 17,color: Color.fromRGBO(79, 119,45,1))),
                      Text(" like",style: TextStyle(fontSize:17,color:Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/pic.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("Pritpal Singh",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1),fontSize: 18),),
                              ),
                              Row(
                                children: [
                                  Text("Sponsered.",style: TextStyle(color: Colors.grey) ,),
                                  Icon(Icons.supervised_user_circle_outlined,color: Colors.grey,size: 15,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("I bought all the needs for my agriculture land in nearby",style: TextStyle(color: Colors.black),),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("kumkum market and started ploughing.",style: TextStyle(color: Colors.black) ,)),
                            // Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20,0),
                      child: Container(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          Text("Read more",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1)),),
                           RaisedButton(onPressed: (){},
                           color: Colors.white70,
                             child: Text("Shop Now",style: TextStyle(color: Colors.black),),
                           )

                         ],
                       ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1,418",style: TextStyle(color: Colors.grey),),
                            Text("55Comments",style: TextStyle(color: Colors.grey),),
                            Text("11Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Likes",style: TextStyle(color: Colors.grey),),
                            Text("Comment",style: TextStyle(color: Colors.grey),),
                            Text("Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.favorite_border_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.mode_comment_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.upload_rounded,color:Color.fromRGBO(79, 119,45,1),),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/pic.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("Ramaswamy Ponnuchandran",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1),fontSize: 18),),
                              ),
                              Row(
                                children: [
                                  Text("Sponsered.",style: TextStyle(color: Colors.grey) ,),
                                  Icon(Icons.supervised_user_circle_outlined,color: Colors.grey,size: 15,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("I bought all the needs for my agriculture land in nearby",style: TextStyle(color: Colors.black),),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("kumkum market and started ploughing.",style: TextStyle(color: Colors.black) ,)),
                            // Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20,0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Read more",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1)),),
                            RaisedButton(onPressed: (){},
                              color: Colors.white70,
                              child: Text("Shop Now",style: TextStyle(color: Colors.black),),
                            )

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1,418",style: TextStyle(color: Colors.grey),),
                            Text("55Comments",style: TextStyle(color: Colors.grey),),
                            Text("11Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Likes",style: TextStyle(color: Colors.grey),),
                            Text("Comment",style: TextStyle(color: Colors.grey),),
                            Text("Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.favorite_border_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.mode_comment_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.upload_rounded,color:Color.fromRGBO(79, 119,45,1),),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20,0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/pic.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(5, 7, 0, 0),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text("Write About Something",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Text("E.g Athuntic,Today's is Energitic ",style: TextStyle(color: Colors.grey) ,),
                          Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/pic.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("Pritpal Singh",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1),fontSize: 18),),
                              ),
                              Row(
                                children: [
                                  Text("Sponsered.",style: TextStyle(color: Colors.grey) ,),
                                  Icon(Icons.supervised_user_circle_outlined,color: Colors.grey,size: 15,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("I bought all the needs for my agriculture land in nearby",style: TextStyle(color: Colors.black),),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("kumkum market and started ploughing.",style: TextStyle(color: Colors.black) ,)),
                            // Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0,5),
                      child: Container(
                        child: Image.asset(
                          'assets/f2.jpg'
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                     child: Container(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("1,418",style: TextStyle(color: Colors.grey),),
                           Text("55Comments",style: TextStyle(color: Colors.grey),),
                           Text("11Share",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                   ),
                    Divider(
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Likes",style: TextStyle(color: Colors.grey),),
                            Text("Comment",style: TextStyle(color: Colors.grey),),
                            Text("Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.favorite_border_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.mode_comment_outlined,color:Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.upload_rounded,color:Color.fromRGBO(79, 119,45,1),),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20,0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/pic.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(5, 7, 0, 0),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text("Write About Something",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Text("E.g Athuntic,Today's is Energitic ",style: TextStyle(color: Colors.grey) ,),
                          Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/pic.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("Pritpal Singh",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(63, 88,147,1),fontSize: 18),),
                              ),
                              Row(
                                children: [
                                  Text("Sponsered.",style: TextStyle(color: Colors.grey) ,),
                                  Icon(Icons.supervised_user_circle_outlined,color: Colors.grey,size: 15,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("I bought all the needs for my agriculture land in nearby",style: TextStyle(color: Colors.black),),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("kumkum market and started ploughing.",style: TextStyle(color: Colors.black) ,)),
                            // Text("and Awsome ",style: TextStyle(color: Colors.grey) ,)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0,5),
                      child: Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [

                           Image.asset(
                                'assets/f1.jpg'
                            ),
                            Icon(Icons.play_circle_fill_outlined,color: Colors.white,size: 75,),
                          ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1,418",style: TextStyle(color: Colors.grey),),
                            Text("55Comments",style: TextStyle(color: Colors.grey),),
                            Text("11Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Likes",style: TextStyle(color: Colors.grey),),
                            Text("Comment",style: TextStyle(color: Colors.grey),),
                            Text("Share",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.favorite_border_outlined,color: Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.mode_comment_outlined,color: Color.fromRGBO(79, 119,45,1),),
                          Icon(Icons.upload_rounded,color: Color.fromRGBO(79, 119,45,1),),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
