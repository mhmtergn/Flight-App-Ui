import 'package:beginner_ui/bars/favourite.dart';
import 'package:beginner_ui/constants/constant.dart';
import 'package:beginner_ui/photoContainer.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'drawerPage.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  TextEditingController _controller = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: mainYellow),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: mainYellow, fontSize: 12),
                  suffixIcon: Icon(
                    Icons.travel_explore,
                    color: mainYellow,
                  ),
                  icon: Icon(
                    Icons.flight_outlined,
                    color: mainYellow,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainYellow),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainYellow),
                  ),
                  // prefixIcon: Icon(
                  //   Icons.search,
                  //   color: mainYellow,
                  // ),
                ),
                cursorColor: mainYellow,
                controller: _controller,
                style: TextStyle(color: mainYellow, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Best destinations to travel',
                  style: TextStyle(
                      color: mainYellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              height: 1,
              color: mainYellow,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/rome.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Rome',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/hongkong.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Hong Kong',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/machuPicchu.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Machu Picchu',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/paris.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Paris',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/montreal.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Montreal',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/istanbul.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Istanbul',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/mauiHawaii.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Maui',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/sanFrancisco.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'San Francisco',
                      style: TextStyle(color: mainYellow, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: mainYellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {},
                child: Text(
                  'CHOOSE FOR ME',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
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
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FavouritePage()));
              },
              child: Tab(
                icon: Icon(
                  Icons.favorite_border,
                  color: mainYellow,
                ),
              ),
            ),
            GestureDetector(
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
