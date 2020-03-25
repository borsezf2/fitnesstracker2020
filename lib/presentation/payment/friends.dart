import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  TextEditingController searchController;
  List<String> names = ["A", "B", "C", "D", "R"];
  Widget tab({IconData icon, String text}) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: TextFormField(
                            controller: searchController,
                            decoration: new InputDecoration(
                              labelText: "  Search",
                              fillColor: Colors.white,
                              focusColor: Colors.grey,
                              hoverColor: Colors.grey,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                                borderSide: new BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Amount cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.grey,
                          ),
            ),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  tab(icon: Icons.person_outline, text: "Add New"),
                  tab(icon: Icons.notifications_none, text: "Notification"),
                  tab(icon: Icons.stay_current_landscape, text: "Winners"),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.maxFinite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(names[index])
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1.5, color: Colors.grey)),
                                child: Center(child: Text("Follow")),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.notifications_none,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: names.length,
              ),
            )
            // SizedBox()
          ],
        ),
      ),
    );
  }
}
