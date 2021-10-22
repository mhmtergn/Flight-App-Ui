import 'package:beginner_ui/constants/constant.dart';
import '../main.dart';
import 'package:flutter/material.dart';

class DetailNemrut extends StatefulWidget {
  var imgPath;

  DetailNemrut({this.imgPath});

  @override
  _DetailNemrutState createState() => _DetailNemrutState();
}

class _DetailNemrutState extends State<DetailNemrut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/nemrut.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nemrut',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Nemrut, TR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: mainYellow),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text(
                      "Mount Nemrut is a 2,134-metre-high (7,001 ft) mountain in southeastern Turkey, notable for the summit where a number of large statues are erected around what is assumed to "
                      "be a royal tomb from the 1st century BC. It is one of the highest peaks in the east of the Taurus Mountains.",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Wiew Comments',
                          style: TextStyle(color: mainYellow, fontSize: 14),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(mainYellow),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Find a Ticket',
                              style: TextStyle(fontSize: 14),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
