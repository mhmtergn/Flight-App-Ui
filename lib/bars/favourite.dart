import 'package:beginner_ui/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../photoContainer.dart';
import 'commentPage.dart';
import 'drawerPage.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      endDrawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      text: 'Wish to be\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'there?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: mainYellow),
                        ),
                      ],
                    ),
                  ),
                ),
                PhotoContainer(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.grey.shade900,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
              child: Tab(
                icon: Icon(
                  Icons.flight_takeoff,
                  color: mainYellow,
                ),
              ),
            ),
            GestureDetector(
              child: Tab(
                icon: Icon(
                  Icons.favorite_border,
                  color: mainYellow,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CommentPage()));
              },
              child: Tab(
                icon: Icon(
                  Icons.travel_explore,
                  color: mainYellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
