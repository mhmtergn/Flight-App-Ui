import 'package:beginner_ui/bars/favourite.dart';
import 'package:beginner_ui/constants/constant.dart';
import 'package:flutter/material.dart';
import 'bars/commentPage.dart';
import 'bars/drawerPage.dart';
import 'calendar.dart';
import 'fromCountries.dart';
import 'toCountries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.grey.shade900),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool isChecked = false;

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
    List<String> _countries;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      endDrawer: DrawerWidget(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Plan a trip...',
              style: TextStyle(
                  color: mainYellow,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: mainYellow,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Flights',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: mainYellow,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Hotels',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: mainYellow,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Car Rental',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListofCountries(),
            SizedBox(
              height: 30,
            ),
            ToCountries(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: mainYellow),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CalendarScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Departure Date',
                      style: TextStyle(color: mainYellow),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Icon(
                    Icons.compare_arrows,
                    color: mainYellow,
                    size: 50,
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: mainYellow),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CalendarScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Return Date',
                      style: TextStyle(color: mainYellow),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 Passenger / Economy',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(
                      Icons.settings,
                      color: mainYellow,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Only nonstop flights',
                    style: TextStyle(color: mainYellow),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: mainYellow,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: mainYellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Text(
                      'FIND FLIGHTS',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.flight_takeoff,
                color: mainYellow,
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
