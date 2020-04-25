import 'package:fitnesstracker2020/screens/addNewFriend.dart';
import 'package:flutter/material.dart';

class FollowFriend extends StatefulWidget {
  @override
  _FollowFriendState createState() => _FollowFriendState();
}

class _FollowFriendState extends State<FollowFriend> with SingleTickerProviderStateMixin {

  TextEditingController _searchController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _searchController=TextEditingController();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(168.0),
        child: Stack(
          children: <Widget>[
            AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.black
              ),
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.amber,
                tabs: [
                  new Tab(
                    icon: new Icon(Icons.person_add),
                    child: Text(
                      'Add Friend',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                  new Tab(
                    icon: new Icon(Icons.insert_emoticon),
                    child: Text(
                      'Champion',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
            Positioned(
              top: 72.0,
              // left: 30.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: 38.0,
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(25.0)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(25.0)
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold
                          ),
                          suffixIcon: Container(
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              onPressed: (){},
                            ),
                          ),
                        ),
                        onSubmitted: (input){},
                      ),
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                    Icon(
                      Icons.sort
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new AddNewFriend(),
          new Container(
            color: Colors.blueGrey,
            child: new Center(
              child: new Text(
                "Second",
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   child: Column(
      //     children: <Widget>[
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: <Widget>[
      //           Container(
      //             width: MediaQuery.of(context).size.width*0.8,
      //             height: 38.0,
      //             child: TextField(
      //               controller: _searchController,
      //               decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.grey, width: 1.0),
      //                   borderRadius: BorderRadius.circular(25.0)
      //                 ),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.grey, width: 1.0),
      //                   borderRadius: BorderRadius.circular(25.0)
      //                 ),
      //                 hintText: 'Search',
      //                 hintStyle: TextStyle(
      //                   color: Colors.black26,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //                 suffixIcon: Container(
      //                   child: IconButton(
      //                     icon: Icon(
      //                       Icons.search,
      //                       color: Colors.black,
      //                     ),
      //                     onPressed: (){},
      //                   ),
      //                 ),
      //                 // filled: true,
      //                 // fillColor: Colors.white,
      //                 // focusColor: Colors.white,
      //                 // hoverColor: Colors.white
      //               ),
      //               onSubmitted: (input){},
      //             ),
      //           ),
      //           Icon(
      //             Icons.sort
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}