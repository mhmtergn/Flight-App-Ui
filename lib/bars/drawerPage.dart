import 'package:beginner_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Elite Member',
                          style: TextStyle(color: mainYellow, fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/person.jpg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 1,
                  color: mainYellow,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  color: mainYellow,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(mainYellow)),
                              onPressed: () {},
                              icon: Icon(
                                Icons.control_point,
                                size: 12,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Miles',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 30,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(mainYellow)),
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_money,
                                size: 12,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Dolar',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 30,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(mainYellow)),
                              onPressed: () {},
                              icon: Icon(Icons.language,
                                  size: 12, color: Colors.black),
                              label: Text(
                                'English',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Flight Bookings',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.sticky_note_2_outlined,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Bus Bookings',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.sticky_note_2_outlined,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Reservations',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.domain_verification_rounded,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Check Bookings',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.saved_search,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Online Check-in',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.fact_check,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Cancellation',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.cancel,
              color: mainYellow,
            ),
          ),
          ListTile(
            title: Text(
              'Chance Tickets',
              style: TextStyle(color: mainYellow),
            ),
            leading: Icon(
              Icons.price_change_outlined,
              color: mainYellow,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            color: mainYellow,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.airplanemode_on,
              size: 80,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
